Pod::Spec.new do |s|
	s.name             = 'NKTableView'
	s.version          = '1.0.2'
	s.summary          = 'Block-based UITableView to replace delegation style'
	s.description      = <<-DESC
	A block-based UITableView to replace UITableView's delegate and dataSource for better code and easier to use
	DESC
	
	s.homepage          = 'https://github.com/kennic/NKTableView'
	s.license           = { :type => 'MIT', :file => 'LICENSE' }
	s.author            = { 'Nam Kennic' => 'namkennic@me.com' }
	s.source            = { :git => 'https://github.com/kennic/NKTableView.git', :tag => s.version.to_s }
	s.social_media_url  = 'https://twitter.com/namkennic'
	s.platform          = :ios, "11.0"
	s.ios.deployment_target = '11.0'
	s.swift_version 	= "5.4"
	s.source_files 		= 'Sources/NKTableView/**/*.*'
	
end
