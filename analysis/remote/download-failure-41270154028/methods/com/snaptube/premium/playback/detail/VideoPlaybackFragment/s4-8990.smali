.method public final s4()V
    .locals 6

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_DETAILS_BANNER:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/od;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/app/PhoenixApplication;->y()Lcom/snaptube/premium/ads/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snaptube/premium/ads/a;->Z(Ljava/lang/String;)Lcom/snaptube/premium/ads/a$d;

    move-result-object v0

    const-string v1, "getFeedStreamAdConfig(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v0, Lcom/snaptube/premium/ads/a$d;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/snaptube/premium/playback/detail/VideoPlaybackFragment;->j:Lo/gb;

    if-eqz v2, :cond_1

    sget-object v3, Lo/jb;->e:Lo/jb$a;

    sget-object v4, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_DETAILS_BANNER:Lcom/snaptube/ads/base/AdsPos;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/snaptube/ads/base/AdsPos;->subPos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "subPos(...)"

    invoke-static {v4, v5}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lo/jb$a;->a(Ljava/lang/String;)Lo/jb;

    move-result-object v3

    const-string v4, "ad_request_scene"

    const-string v5, "playback"

    invoke-virtual {v3, v4, v5}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object v3

    invoke-interface {v2, v3}, Lo/gb;->c(Lo/jb;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
