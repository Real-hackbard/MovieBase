# :computer: MovieBase

</br>

![Compiler](https://github.com/user-attachments/assets/a916143d-3f1b-4e1f-b1e0-1067ef9e0401) ![10 Seattle](https://github.com/user-attachments/assets/c70b7f21-688a-4239-87c9-9a03a8ff25ab) ![10 1 Berlin](https://github.com/user-attachments/assets/bdcd48fc-9f09-4830-b82e-d38c20492362) ![10 2 Tokyo](https://github.com/user-attachments/assets/5bdb9f86-7f44-4f7e-aed2-dd08de170bd5) ![10 3 Rio](https://github.com/user-attachments/assets/e7d09817-54b6-4d71-a373-22ee179cd49c)  ![10 4 Sydney](https://github.com/user-attachments/assets/e75342ca-1e24-4a7e-8fe3-ce22f307d881) ![11 Alexandria](https://github.com/user-attachments/assets/64f150d0-286a-4edd-acab-9f77f92d68ad) ![12 Athens](https://github.com/user-attachments/assets/59700807-6abf-4e6d-9439-5dc70fc0ceca)  
![Components](https://github.com/user-attachments/assets/d6a7a7a4-f10e-4df1-9c4f-b4a1a8db7f0e) ![None](https://github.com/user-attachments/assets/30ebe930-c928-4aaf-a8e1-5f68ec1ff349)  
![Description](https://github.com/user-attachments/assets/dbf330e0-633c-4b31-a0ef-b1edb9ed5aa7) <img src="https://github.com/user-attachments/assets/5049767b-1b1d-4f05-ae5e-77e27c9465c4" />  
![Last Update](https://github.com/user-attachments/assets/e1d05f21-2a01-4ecf-94f3-b7bdff4d44dd) <img src="https://github.com/user-attachments/assets/72547ad3-851e-431c-8fa6-45ec5e5ffc23" />  
![License](https://github.com/user-attachments/assets/ff71a38b-8813-4a79-8774-09a2f3893b48) ![Freeware](https://github.com/user-attachments/assets/1fea2bbf-b296-4152-badd-e1cdae115c43)  

</br>

This is a simple implementation involving related files that function as a database. The program works exclusively with files and their contents, with the nature of the content being irrelevant.

The program is suitable for a wide range of topics and can also be customized. In this instance, I used it for a movie list. Files are managed in three different folders and accessed or removed together.

</br>

<img src="https://github.com/user-attachments/assets/ea37042c-5f90-41b6-b020-9824e28e025a" />

</br>
</br>

There is a template and a rating system for the content. The template is editable and is used for every new entry. Links can also be saved within the text content and will function as such. The template can be customized for various topics to separate content related to film, office work, or music.

The database is a stored, systematic collection of data. It can contain any type of data, including words, numbers, images, videos, and files that can be loaded into a RichEdit control. No formats, drivers, or encrypted content requiring subsequent integration are used.

The file tree can be created or edited as desired and is not subject to any predefined requirements.

# :wrench: Remodeling:
The files for entries have sequential filenames, making it very easy to reconfigure the program in any direction. No special features or file formats are required to display the content of the entries differently.

The template serves to provide the program with a new layout when a different theme is required. Program name as the subject and the template storage location displayed when a new entry is created.

</br>

<img src="https://github.com/user-attachments/assets/98a738ba-2259-4c27-b796-a73cb322dcbe" />

</br>
</br>

The content of the entries can be written to any Delphi component, as it is stored simply as text. However, the URL links are designed specifically for the RichEdit component.

</br>

# :wrench: Backup
The file tree can be saved as a file and reloaded. However, the contents of the entries cannot (yet) be saved. Since the content can vary, this topic also addresses the form in which this must take place.

</br>

# :wrench: Cover
An image (cover) can be added to each entry, and the program also includes a few related features. To prevent the image database from becoming excessively large, the program can adjust the dimensions and file size of the images.

Various formats can be loaded, but all images are integrated into the database in JPG format, which can then be adjusted using this code.

</br>

```pascal
  jpg := TJPEGImage.Create;
  bmp := TBitmap.Create;
  try
    // copy image pixel to memory
    jpg.Assign(Image9.Picture.Graphic);
    bmp.Width := 136;   // new width
    bmp.Height := 206;  // new height
    // draw jpg to bitmap
    bmp.Canvas.StretchDraw(Rect(0, 0, 136, 206), jpg);
    // copy bitmap to jpg
    jpg.Assign(bmp);
    // copy pixel from memory back to image
    Image9.Picture.Assign(jpg);
  finally
    bmp.Free;
    jpg.Free;
  end;
```

</br>

This allows the size of the cover list to be reduced and the images to be loaded into the program more quickly.

</br>

# :star: Rating
The entries can be rated using stars. This involves incorporating a DAT file that contains a value (0–5). This is helpful for assigning importance or distinctiveness to entries.

The images are located in ImageList2 and are selected based on which star was clicked. If, for example, the third star is selected, images 1–3 are loaded as well; the same applies in reverse.

</br>

<img src="https://github.com/user-attachments/assets/7ab6c8de-2f51-4493-84ac-23fd1571459d" />  Rated <img src="https://github.com/user-attachments/assets/62179820-1d3f-4797-9723-25a9b3b74045" /> not Rated

</be>



