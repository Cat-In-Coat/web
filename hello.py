def app(env, start):
	data = [i +'/n' for i in env['QUERY_STRING'].split('&')]
	print("".join(data))
	for i in range(len(data)):
		data[i] = bytes(data[i], 'ascii')
	headers = [('Content-type', 'text/plain'), ('Content-Length', str(len(data)))]
	start('200 OK', headers)
	return data
