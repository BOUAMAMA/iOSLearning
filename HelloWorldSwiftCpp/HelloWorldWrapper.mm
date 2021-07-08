//
//  HelloWorldWrapper.m
//  HelloWorldSwiftCpp
//
//  Created by imane on 2021/07/08.
//

#import "HelloWorldWrapper.h"
#import "HelloWorld.hpp"

 @implementation HelloWorldWrapper
-(NSString *) PrintHello {
  HelloWorld helloWorld ;
  std::string helloMessage = helloWorld.PrintHello() ;
  return [NSString
          stringWithCString:helloMessage.c_str() encoding:NSUTF8StringEncoding];
}
 @end

