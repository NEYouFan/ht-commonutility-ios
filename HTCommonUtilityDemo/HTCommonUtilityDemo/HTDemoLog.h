//
//  HTDemoLog.h
//  HTCommonUtilityDemo
//
//  Created by NetEase on 15/9/2.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#ifndef HTCommonUtilityDemo_HTDemoLog_h
#define HTCommonUtilityDemo_HTDemoLog_h
//导入HTCommonUtility的HTLog
#import "HTCommonLog.h"

////////////////////////////////////////////////////////////////
//Module Macro
////////////////////////////////////////////////////////////////
/**
 *  日志打印基于CocoaLumberjack
 *
 *  日志处理对象DDTTYLogger放在application的AppDelegate.m中初始化
 *
 *  该模块声明一条新的Log需要注意的内容包括：
 *  1.当前需要打印的log level，如LOG_LEVEL_DEMO
 *
 *  2.log module name,自定义的模块名，如LOG_MODULE_DEMO
 *  会被打印在日志的开头，建议使用module做流程打印
 *
 *  3.log flag,用于和log level做按位与运算，返回为真时才会触发日志打印
 *
 */
/*---------------log level----------------*/
#if DEBUG

#define LOG_LEVEL_DEMO  DDLogLevelAll

#else

#define LOG_LEVEL_DEMO 0

#endif
/*---------------log module name----------------*/
#define LOG_MODULE_DEMO       @"HTCommonUtilityDemo"
/*---------------custom log declare----------------*/
#define HTLogDemoError(frmt, ...)   HT_LOG_MAYBE(NO,                LOG_LEVEL_DEMO, DDLogFlagError,   0, LOG_MODULE_DEMO, __PRETTY_FUNCTION__, frmt, ##__VA_ARGS__)
#define HTLogDemoWarn(frmt, ...)    HT_LOG_MAYBE(LOG_ASYNC_ENABLED, LOG_LEVEL_DEMO, DDLogFlagWarning, 0, LOG_MODULE_DEMO, __PRETTY_FUNCTION__, frmt, ##__VA_ARGS__)
#define HTLogDemoInfo(frmt, ...)    HT_LOG_MAYBE(LOG_ASYNC_ENABLED, LOG_LEVEL_DEMO, DDLogFlagInfo,    0, LOG_MODULE_DEMO, __PRETTY_FUNCTION__, frmt, ##__VA_ARGS__)
#define HTLogDemoDebug(frmt, ...)   HT_LOG_MAYBE(LOG_ASYNC_ENABLED, LOG_LEVEL_DEMO, DDLogFlagDebug,   0, LOG_MODULE_DEMO, __PRETTY_FUNCTION__, frmt, ##__VA_ARGS__)
#define HTLogDemoVerbose(frmt, ...) HT_LOG_MAYBE(LOG_ASYNC_ENABLED, LOG_LEVEL_DEMO, DDLogFlagVerbose, 0, LOG_MODULE_DEMO, __PRETTY_FUNCTION__, frmt, ##__VA_ARGS__)

#endif
