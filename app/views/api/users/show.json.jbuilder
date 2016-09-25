json.user do
	json.name @user.name
	json.id @user.id
	
	json.avatar @user.avatar.url.blank? ? "" : request.protocol.to_s + request.host_with_port.to_s + @user.avatar.url.to_s
	
end

