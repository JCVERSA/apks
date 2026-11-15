.class public Lcom/mgtv/thirdsdk/datareport/playerconfig/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hunantv/media/config/NetPlayConfig;

    invoke-direct {v0}, Lcom/hunantv/media/config/NetPlayConfig;-><init>()V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->accurate_seek:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->accurate_seek:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->addrinfo_timeout:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->addrinfo_timeout:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->addrinfo_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->addrinfo_type:Ljava/lang/String;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->buffer_timeout:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->buffer_timeout:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->datasource_async:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->datasource_async:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->decodetype:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->decodetype:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->dns_family_type:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->l()I

    move-result v3

    invoke-static {v1, v3}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->dns_family_type:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->http_multiple:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->http_multiple:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->http_persistent:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->http_persistent:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->is_soft:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->is_soft:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->load_retry_time:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->load_retry_time:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->m3u8_gzip:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->m3u8_gzip:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->mp_type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->mp_type:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->open_timeout:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->open_timeout:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->render_type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->render_type:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->rw_timeout:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->rw_timeout:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->ts_not_skip:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->ts_not_skip:I

    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->weak_net_speed:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hunantv/media/config/NetPlayConfig;->weak_net_speed:I

    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->player_support:Ljava/lang/String;

    iput-object p0, v0, Lcom/hunantv/media/config/NetPlayConfig;->player_support:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/config/NetPlayConfig;->setGlobalNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Lcom/hunantv/media/config/NetPlayConfig;)V

    return-void
.end method
