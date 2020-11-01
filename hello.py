def app(env, start):
	data = [bytes(i +'?n', 'ascii') for i in env['QUERY_STRRING'].split('&')]
	headers = [('Content-type', 'text/plain'), ('Content-Length', str(len(data)))]
	start('200 OK', headers)
	return data
