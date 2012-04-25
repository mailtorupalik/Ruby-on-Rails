class PublicController < ApplicationController

def album_list
	@albums=Album.find_by_sql('SELECT * FROM albums WHERE release_date <= \'2000-01-01\' AND artist LIKE \'%someone%\'
ORDER BY release_date ASC;')
end

def alt_album_list                   # this consists of records having artist =Rupali and date condn
	release_date='2000-01-01'
	artist = 'Rupali'
	@albums = Album.find(:all, 
	:conditions => ["release_date <= ? AND artist_old LIKE ?",release_date,'%' + artist +'%'],
	:order => 'title, release_date ASC',
	:limit => 10, :offset => 0)

	render(:action => 'album_list')	
end

def show_album
	release_date='2000-01-01'
	artist = 'someone'
	@album = Album.find(:first, 
	:conditions => ["release_date <= ? AND artist_old LIKE ?",release_date,'%' + artist +'%'],
	:order => 'title, release_date ASC')

end

def list                  # this consists of all records 
@albums = Album.find(:all)
render(:action => 'album_list' )

end

def edit                         
@album=Album.find(params[:id])
end

def update
@album=Album.find(params[:id])  #this param is from url string

 if @album.update_attributes(params[:album]) #this param is from database
	redirect_to(:action => 'list')
 else
	render(:action => 'edit')
 end	
end

def show
  @album=Album.find(params['id'])
  render(:action => 'show_album')	
end

def new
@album=Album.new
@album.title='Electric Layland'
end

def create
@album=Album.new(params[:album])

 if @album.save
	redirect_to(:action => 'list')
else
	render(:action => 'new')
end
end

def destroy
@album=Album.find(params[:id])
@album.destroy
redirect_to(:action => 'list')
end

end
