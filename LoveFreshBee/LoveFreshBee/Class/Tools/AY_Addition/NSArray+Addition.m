

#import "NSArray+Addition.h"

@implementation NSArray (Addition)

+ (NSArray *)ay_dataArrayWithPlistName:(NSString *)pName className:(NSString *)cName{
    NSURL * url = [[NSBundle mainBundle]URLForResource:pName withExtension:nil];
    NSArray * array = [NSArray arrayWithContentsOfURL:url];
    NSMutableArray * muArr = [NSMutableArray array];
    Class clz = NSClassFromString(cName);
    for (NSDictionary * dict in array) {
        NSObject * obj = [clz new];
        [obj setValuesForKeysWithDictionary:dict];
        [muArr addObject:obj];
    }
    return muArr.copy;
}

@end
