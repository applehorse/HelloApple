//
//  CucumberishLoader.m
//  
//

#import <Foundation/Foundation.h>
#import "HelloAppleUITests-Swift.h"

__attribute__((constructor))
void CucumberishInit()
{
//    [Cucumberish instance].testTargetSrcRoot = SRC_ROOT;
    [CucumberishInitializer CucumberishSwiftInit];
}
