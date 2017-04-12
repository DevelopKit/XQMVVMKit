
Pod::Spec.new do |s|
  s.name             = 'XQMVVMKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of XQMVVMKit.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/qiang zhai/XQMVVMKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'qiang zhai' => 'zq4950411@163.com' }
  s.source           = { :git => 'https://github.com/qiang zhai/XQMVVMKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'XQMVVMKit/Classes/**/*'
  s.dependency 'ReactiveObjC'
end
