
Pod::Spec.new do |s|
  s.name             = 'XQMVVMKit'
  s.version          = '0.1.0'
  s.summary          = 'A MVVM foundation to build app faster'
  s.description      = <<-DESC
using this kit to build app faster
                       DESC

  s.homepage         = 'https://github.com/DevelopKit/XQMVVMKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'qiang zhai' => 'zq4950411@163.com' }
  s.source           = { :git => 'https://github.com/DevelopKit/XQMVVMKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'XQMVVMKit/Classes/**/*'
  s.dependency 'ReactiveObjC'
end
