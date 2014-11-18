Pod::Spec.new do |s|
  s.name     = 'AFOAuth2Client'
  s.platform = :ios, '7.1'
  s.version  = '0.1.2'
  s.license  = 'MIT'
  s.summary  = 'AFNetworking Extension for OAuth 2 Authentication.'
  s.homepage = 'https://github.com/zhoulijoe/AFOAuth2Client'
  s.author   = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/zhoulijoe/AFOAuth2Client.git',
                 :tag => '0.1.2' }
  s.source_files = 'AFOAuth2Client/**/*.{h,m}'
  s.requires_arc = true

  s.dependency 'AFNetworking'

  s.ios.frameworks = 'Security'

  s.prefix_header_contents = <<-EOS
#ifdef __OBJC__
  #import <Security/Security.h>
  #if __IPHONE_OS_VERSION_MIN_REQUIRED
    #import <SystemConfiguration/SystemConfiguration.h>
    #import <MobileCoreServices/MobileCoreServices.h>
  #else
    #import <SystemConfiguration/SystemConfiguration.h>
    #import <CoreServices/CoreServices.h>
  #endif
#endif /* __OBJC__*/
EOS
end
