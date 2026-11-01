.method public final A(Ljava/lang/String;II)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    sget-object v6, Lo/ft7;->a:Lo/ft7;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v3

    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v8, p1

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "format(...)"

    invoke-static {v7, v9}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    const-string v11, ", originUrl:"

    const-string v12, "videoInfo"

    if-nez v10, :cond_1

    new-instance v0, Ljava/io/IOException;

    iget-object v2, v1, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v2, :cond_0

    invoke-static {v12}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_1

    :cond_0
    move-object v13, v2

    :goto_1
    invoke-virtual {v13}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file does not exist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_3

    new-instance v0, Ljava/io/IOException;

    iget-object v2, v1, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v2, :cond_2

    invoke-static {v12}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    move-object v13, v2

    :goto_2
    invoke-virtual {v13}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeFile file failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-double v14, v0

    int-to-double v3, v7

    div-double/2addr v14, v3

    int-to-double v12, v2

    int-to-double v7, v11

    div-double/2addr v12, v7

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    mul-double v3, v3, v11

    double-to-int v3, v3

    mul-double v7, v7, v11

    double-to-int v4, v7

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v7, "createBitmap(...)"

    invoke-static {v8, v7}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x1000000

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v0

    int-to-float v13, v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v12

    move/from16 v20, v13

    move-object/from16 v21, v11

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v12, v0, v3

    div-int/lit8 v12, v12, 0x2

    sub-int v13, v2, v4

    div-int/lit8 v13, v13, 0x2

    new-instance v14, Landroid/graphics/Rect;

    add-int/2addr v3, v12

    add-int/2addr v4, v13

    invoke-direct {v14, v12, v13, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v7, v10, v3, v14, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct/range {p0 .. p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->w()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v11, "image%03d.jpg"

    invoke-static {v6, v11, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x1e

    invoke-virtual {v8, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lo/gu0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x1

    add-int/2addr v5, v4

    const/4 v3, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v3, v2}, Lo/gu0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method
