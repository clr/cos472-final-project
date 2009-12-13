
# used to randomly select 10% of the data for testing/training split
data = File.readlines( 'lrs.db2' )
test = ( 0..52 ).to_a.collect{ data[ rand( 527 ) ] }
File.open( 'lrs.test.db2', 'w' ){ |f| test.each{ |l| f.write(l) } }  
train = data - test
File.open( 'lrs.train.db2', 'w' ){ |f| train.each{ |l| f.write(l) } } 
