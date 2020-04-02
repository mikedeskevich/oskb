pro waves
	;twinols=[0.25,	0.43,	0.68,	0.36,	0.57,	0.99,	0.27,	0.44,	0.81,	0.17,	0.21,	0.49]
	twinols = [0.51,	0.72,	0.92,	0.73,	1.01,	1.23,	0.59,	0.96,	0.93,	0.59,	0.43,	0.74,	0.49,	0.73,	1.11,	0.25,	0.32,	0.41]

	h1=hash()
	h2=hash()
	h3=hash()
	h4=hash()
	h5=hash()
	for i=1,twinols.length-1 do begin
		itwinols=shift(twinols,i)
		h1[stdev(twinols+itwinols)]=[i]
		for j=i+1, twinols.length-1 do begin
			jtwinols=shift(twinols,j)
			h2[stdev(twinols+itwinols+jtwinols)]=[i,j]
			for k=j+1, twinols.length-1 do begin
				ktwinols=shift(twinols,k)
				h3[stdev(twinols+itwinols+jtwinols+ktwinols)]=[i,j,k]
				for l=k+1, twinols.length-1 do begin
					ltwinols=shift(twinols,l)
					h4[stdev(twinols+itwinols+jtwinols+ktwinols+ltwinols)]=[i,j,k,l]
					for m=l+1, twinols.length-1 do begin
						mtwinols=shift(twinols,m)
						h5[stdev(twinols+itwinols+jtwinols+ktwinols+ltwinols+mtwinols)]=[i,j,k,l,m]
					end
				end
			end
		end
	end
	
	k1=h1.keys()
	k2=h2.keys()
	k3=h3.keys()
	k4=h4.keys()
	k5=h5.keys()
	
	k1=k1.sort()
	k2=k2.sort()
	k3=k3.sort()
	k4=k4.sort()
	k5=k5.sort()

	print, '***1'	
	for i=0,5 do print, k1[i], h1[k1[i]]

	print, '***2'
	for i=0,5 do print, k2[i], h2[k2[i]]

	print, '***3'
	for i=0,5 do print, k3[i], h3[k3[i]]

	print, '***4'
	for i=0,5 do print, k4[i], h4[k4[i]]
	
	print, '***5'
	for i=0,5 do print, k5[i], h5[k5[i]]
end
