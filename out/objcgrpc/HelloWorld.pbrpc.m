// Code generated by gRPC proto compiler.  DO NOT EDIT!
// source: HelloWorld.proto

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "HelloWorld.pbrpc.h"
#import "HelloWorld.pbobjc.h"
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>


@implementation Greeter

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"trpc.test.go_hello"
                 serviceName:@"Greeter"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"trpc.test.go_hello"
                 serviceName:@"Greeter"];
}

#pragma clang diagnostic pop

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName
                 callOptions:(GRPCCallOptions *)callOptions {
  return [self initWithHost:host callOptions:callOptions];
}

#pragma mark - Class Methods

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [[self alloc] initWithHost:host callOptions:callOptions];
}

#pragma mark - Method Implementations

#pragma mark SayHello(HelloRequest) returns (HelloReply)

/**
 * Sends a greeting
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)sayHelloWithRequest:(HelloRequest *)request handler:(void(^)(HelloReply *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSayHelloWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Sends a greeting
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToSayHelloWithRequest:(HelloRequest *)request handler:(void(^)(HelloReply *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SayHello"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[HelloReply class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Sends a greeting
 */
- (GRPCUnaryProtoCall *)sayHelloWithMessage:(HelloRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"SayHello"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[HelloReply class]];
}

@end
#endif
