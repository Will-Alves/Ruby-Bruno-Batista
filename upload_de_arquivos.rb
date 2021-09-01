Quando('eu faco um upload de arquivo') do
    visit '/outros/uploaddearquivos'
    @foto = File.join(Dir.pwd, 'features/download.jpeg')
    attach_file('upload', @foto, make_visible: true)
    sleep 5
end
