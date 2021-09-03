Pod::Spec.new do |s|
  s.name     = 'BookKeepinggRPC'
  s.version  = '0.0.1'
  s.license = '...'
  s.author = 'tianxuzhang'
  s.homepage = 'https://zhang-tianxu.github.io/'
  s.summary = 'BookKeeping gRPC proto'
  s.source = { :path => '/Users/tianxuzhang/Documents/gitRepos/BookKeeping/BookKeepinggRPC/' }

  s.ios.deployment_target = '7.1'
  s.osx.deployment_target = '10.9'

  s.source_files = 'out/objc/*'
  s.public_header_files = 'out/objc/*.h'
  s.static_framework = true

  s.dependency "Protobuf"
  s.requires_arc = false

  # Run protoc with the Objective-C and gRPC plugins to generate protocol messages and gRPC clients.
  # You can run this command manually if you later change your protos and need to regenerate.
  #s.prepare_command = "protoc --objc_out=. --objcgrpc_out=. *.proto"

  # The --objc_out plugin generates a pair of .pbobjc.h/.pbobjc.m files for each .proto file.
  #s.subspec "Messages" do |ms|
    #ms.source_files = "*.pbobjc.{h,m}"
    #ms.header_mappings_dir = "."
    #ms.requires_arc = false
    #ms.dependency "Protobuf", "~> 3.0.0-alpha-4"
  #end

  # The --objcgrpc_out plugin generates a pair of .pbrpc.h/.pbrpc.m files for each .proto file with
  # a service defined.
  #s.subspec "Services" do |ss|
    #ss.source_files = "*.pbrpc.{h,m}"
    #ss.header_mappings_dir = "."
    #ss.requires_arc = true
    #ss.dependency "gRPC", "~> 0.12"
    #ss.dependency "#{s.name}/Messages"
  #end
end
