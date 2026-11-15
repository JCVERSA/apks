.class public Lrrb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lrrb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lrrb;Lcom/transsion/videodownloader/model/VideoTaskItem;Lex4;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lrrb;->e(Lcom/transsion/videodownloader/model/VideoTaskItem;Lex4;Ljava/util/Map;)V

    return-void
.end method

.method public static d()Lrrb;
    .locals 2

    sget-object v0, Lrrb;->a:Lrrb;

    if-nez v0, :cond_1

    const-class v0, Lrrb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrrb;->a:Lrrb;

    if-nez v1, :cond_0

    new-instance v1, Lrrb;

    invoke-direct {v1}, Lrrb;-><init>()V

    sput-object v1, Lrrb;->a:Lrrb;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lrrb;->a:Lrrb;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/transsion/videodownloader/model/VideoTaskItem;Lex4;Ljava/util/Map;)V
    .locals 6

    const-string v0, "Create connection failed"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p0, Lcom/transsion/videodownloader/VideoDownloadException;

    const-string p1, "Video info is null"

    invoke-direct {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lex4;->a(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lst4;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p0, Lcom/transsion/videodownloader/VideoDownloadException;

    const-string p1, "Cannot parse the request resource\'s schema"

    invoke-direct {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lex4;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoInfoParserManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doParseVideoInfoTask url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lfrb;->d()Lrqb;

    move-result-object v3

    invoke-virtual {v3}, Lrqb;->e()Z

    move-result v3

    invoke-static {v2, p3, v3}, Lst4;->c(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    :try_start_2
    new-instance p0, Lcom/transsion/videodownloader/VideoDownloadException;

    invoke-direct {p0, v0}, Lcom/transsion/videodownloader/VideoDownloadException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lex4;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-static {v1}, Lst4;->b(Ljava/net/HttpURLConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p0, Lcom/transsion/videodownloader/VideoDownloadException;

    const-string p1, "FinalUrl is null"

    invoke-direct {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lex4;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v1}, Lst4;->b(Ljava/net/HttpURLConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    :cond_4
    :try_start_6
    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFinalUrl(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/videodownloader/model/Video$TypeInfo;->M3U8:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2}, Lfrb;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v1, v0}, Lrrb;->c(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;Ljava/net/HttpURLConnection;Z)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-nez p0, :cond_6

    new-instance p0, Lcom/transsion/videodownloader/VideoDownloadException;

    const-string p1, "File Length Cannot be fetched"

    invoke-direct {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lex4;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v1}, Lst4;->b(Ljava/net/HttpURLConnection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void

    :cond_6
    :try_start_8
    invoke-virtual {p1, v2, v3}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTotalSize(J)V

    invoke-interface {p2, p1}, Lex4;->d(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    goto :goto_4

    :cond_7
    :goto_3
    sget-object v0, Lcom/transsion/videodownloader/model/Video$TypeInfo;->M3U8:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, p2}, Lrrb;->g(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;Lex4;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    :try_start_9
    invoke-static {v1}, Lst4;->b(Ljava/net/HttpURLConnection;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_5
    :try_start_a
    new-instance p0, Lcom/transsion/videodownloader/VideoDownloadException;

    invoke-direct {p0, v0}, Lcom/transsion/videodownloader/VideoDownloadException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lex4;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-void

    :goto_5
    :try_start_b
    invoke-interface {p2, p0}, Lex4;->a(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v1, :cond_8

    :try_start_c
    invoke-static {v1}, Lst4;->b(Ljava/net/HttpURLConnection;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :cond_8
    :goto_6
    return-void

    :goto_7
    if-eqz v1, :cond_9

    :try_start_d
    invoke-static {v1}, Lst4;->b(Ljava/net/HttpURLConnection;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_8
    throw p0
.end method

.method public final c(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;Ljava/net/HttpURLConnection;Z)J
    .locals 4

    const-wide/16 v0, -0x1

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFinalUrl()Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Lfrb;->d()Lrqb;

    move-result-object v2

    invoke-virtual {v2}, Lrqb;->e()Z

    move-result v2

    invoke-static {p4, p2, v2}, Lst4;->c(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_0

    return-wide v0

    :catch_0
    invoke-static {p3}, Lst4;->b(Ljava/net/HttpURLConnection;)V

    return-wide v0

    :cond_0
    const-string p4, "content-length"

    invoke-virtual {p3, p4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p4, "Range"

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_1
    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p3}, Lst4;->b(Ljava/net/HttpURLConnection;)V

    return-wide v0

    :cond_2
    :goto_0
    const-string v0, "bytes=0-"

    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lst4;->b(Ljava/net/HttpURLConnection;)V

    const/4 p4, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lrrb;->c(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;Ljava/net/HttpURLConnection;Z)J

    move-result-wide p0

    return-wide p0

    :cond_3
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long p2, p0, v2

    if-gtz p2, :cond_4

    invoke-static {p3}, Lst4;->b(Ljava/net/HttpURLConnection;)V

    return-wide v0

    :cond_4
    return-wide p0
.end method

.method public final synthetic e(Lcom/transsion/videodownloader/model/VideoTaskItem;Lex4;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lrrb;->b(Lcom/transsion/videodownloader/model/VideoTaskItem;Lex4;Ljava/util/Map;)V

    return-void
.end method

.method public f(Lcom/transsion/videodownloader/model/VideoTaskItem;Lfx4;)V
    .locals 3

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getSaveDir()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote.m3u8"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/transsion/videodownloader/VideoDownloadException;

    const-string v0, "Cannot find remote.m3u8 file"

    invoke-direct {p0, v0}, Lcom/transsion/videodownloader/VideoDownloadException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1, p0}, Lfx4;->a(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseLocalM3U8File:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteM3U8File:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VideoInfoParserManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p0}, Law5;->j(Ljava/io/File;)Lpv5;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lfx4;->b(Lcom/transsion/videodownloader/model/VideoTaskItem;Lpv5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {p2, p1, p0}, Lfx4;->a(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final g(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;Lex4;)V
    .locals 2

    :try_start_0
    const-string p0, "VideoInfoParserManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseNetworkM3U8Info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Law5;->k(Ljava/lang/String;Ljava/util/Map;I)Lpv5;

    move-result-object p0

    invoke-virtual {p0}, Lpv5;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lfrb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lfrb;->d()Lrqb;

    move-result-object v1

    invoke-virtual {v1}, Lrqb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0, p0}, Law5;->b(Ljava/io/File;Lpv5;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setSaveDir(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setVideoType(I)V

    invoke-interface {p3, p1, p0}, Lex4;->c(Lcom/transsion/videodownloader/model/VideoTaskItem;Lpv5;)V

    goto :goto_2

    :cond_1
    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setVideoType(I)V

    invoke-interface {p3, p1}, Lex4;->b(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {p3, p0}, Lex4;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public declared-synchronized h(Lcom/transsion/videodownloader/model/VideoTaskItem;Lex4;Ljava/util/Map;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lqrb;

    invoke-direct {v0, p0, p1, p2, p3}, Lqrb;-><init>(Lrrb;Lcom/transsion/videodownloader/model/VideoTaskItem;Lex4;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
