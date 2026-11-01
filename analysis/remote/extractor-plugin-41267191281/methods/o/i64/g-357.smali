.method public g(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;ZJLandroid/os/Bundle;ZZZ)V
    .locals 13

    move-object v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move/from16 v4, p8

    move/from16 v4, p8

    const/4 v5, 0x0

    iput-boolean v5, v0, Lo/i64;->d:Z

    const/4 v6, 0x1

    iput-boolean v6, v0, Lo/i64;->i:Z

    iput-boolean v4, v0, Lo/i64;->j:Z

    iget-object v7, v0, Lo/i64;->n:Lcom/snaptube/musicPlayer/AudioNoisyHelper;

    invoke-virtual {v7}, Lcom/snaptube/musicPlayer/AudioNoisyHelper;->c()V

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lo/i64;->g:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v6

    const-wide/16 v9, 0x0

    const-wide/16 v9, 0x0

    if-nez v8, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-wide v9, v0, Lo/i64;->f:J

    iput-object v7, v0, Lo/i64;->g:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object v7

    iget-object v11, v0, Lo/i64;->h:Landroid/net/Uri;

    invoke-static {v11, v7}, Lo/yj8;->b(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v11

    xor-int/2addr v11, v6

    if-nez v11, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iput-wide v9, v0, Lo/i64;->f:J

    iput-object v7, v0, Lo/i64;->h:Landroid/net/Uri;

    :cond_3
    sget-object v7, Lo/ac7;->a:Lo/ac7;

    invoke-virtual {v7}, Lo/ac7;->a()V

    iget v7, v0, Lo/i64;->c:I

    const/4 v11, 0x3

    const/4 v12, 0x6

    if-eq v7, v11, :cond_4

    const/4 v11, 0x2

    if-eq v7, v11, :cond_4

    if-ne v7, v12, :cond_5

    :cond_4
    if-nez p6, :cond_5

    if-nez v8, :cond_5

    iget-object v7, v0, Lo/i64;->k:Lo/ti7;

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lo/i64;->s()V

    goto :goto_1

    :cond_5
    iput v6, v0, Lo/i64;->c:I

    invoke-virtual {p0, v5}, Lo/i64;->w(Z)V

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "android.media.metadata.COMPILATION"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_6
    const-string v7, ""

    const-string v7, ""

    :goto_0
    new-instance v8, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;

    invoke-direct {v8}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;-><init>()V

    iput-object v7, v8, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->fileUrl:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->setReportParams(Landroid/os/Bundle;)V

    move/from16 v11, p7

    move/from16 v11, p7

    invoke-virtual {v8, v11}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->setAudio(Z)V

    iput-boolean v4, v8, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->playWhenReady:Z

    cmp-long v4, v1, v9

    if-lez v4, :cond_7

    iput-wide v1, v8, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->position:J

    :cond_7
    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v8, v1}, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->setResumeLastPosition(Z)V

    if-eqz v3, :cond_8

    const-string v1, "position_source"

    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iput-object v1, v8, Lcom/snaptube/exoplayer/impl/VideoPlayInfo;->pos:Ljava/lang/String;

    :cond_8
    iget-object v1, v0, Lo/i64;->k:Lo/ti7;

    if-nez v1, :cond_9

    return-void

    :cond_9
    iput v12, v0, Lo/i64;->c:I

    iget-object v1, v0, Lo/i64;->b:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    iget v1, v0, Lo/i64;->c:I

    invoke-virtual {p0, v1}, Lo/i64;->u(I)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/app/PhoenixApplication;->D()Lo/zd3;

    move-result-object v1

    invoke-interface {v1, v7, v5}, Lo/zd3;->j(Ljava/lang/String;Z)V

    invoke-virtual {p0, v8}, Lo/i64;->y(Lcom/snaptube/exoplayer/impl/VideoPlayInfo;)V

    :goto_1
    return-void
.end method
