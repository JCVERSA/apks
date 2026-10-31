.method public final e0()V
    .locals 15

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_FEEDSTREAM:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/snaptube/premium/ads/a$d;

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "26,26,26"

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/snaptube/premium/ads/a$d;-><init>(IILjava/lang/String;IZILjava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_DETAILS_BANNER:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/snaptube/premium/ads/a$d;

    const/4 v13, 0x3

    const/4 v4, 0x3

    const-string v11, "18,18,18"

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/snaptube/premium/ads/a$d;-><init>(IILjava/lang/String;IZILjava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_MYFILE_ALL_PLAY_LIST:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/snaptube/premium/ads/a$d;

    const/16 v13, 0x8

    const/4 v3, 0x2

    const/16 v4, 0x8

    const-string v11, "25,25,25"

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/snaptube/premium/ads/a$d;-><init>(IILjava/lang/String;IZILjava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->SEARCH_VIDEO_RESULT:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/snaptube/premium/ads/a$d;

    const/16 v13, 0xa

    const/16 v4, 0xa

    const/4 v11, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/snaptube/premium/ads/a$d;-><init>(IILjava/lang/String;IZILjava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
