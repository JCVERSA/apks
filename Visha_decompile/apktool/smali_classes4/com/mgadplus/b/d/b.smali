.class public Lcom/mgadplus/b/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/b/d/b$a;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String; = "b"


# instance fields
.field private a:Lx1d$a;

.field private b:Lcom/mgmi/db/dao3/c;

.field private c:Lr5d;

.field private d:Z

.field private e:Lw9d;

.field private f:Lx1d;

.field private g:I

.field private h:Lo8d;

.field private final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lx1d$a;Lr5d;Lx1d;Lo8d;)V
    .locals 1
    .param p1    # Lx1d$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lr5d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lx1d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/b/d/b;->i:Ljava/lang/Object;

    iput-object p1, p0, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    iput-object p2, p0, Lcom/mgadplus/b/d/b;->c:Lr5d;

    iput-object p3, p0, Lcom/mgadplus/b/d/b;->f:Lx1d;

    iput-object p4, p0, Lcom/mgadplus/b/d/b;->h:Lo8d;

    const/4 p1, 0x0

    iput p1, p0, Lcom/mgadplus/b/d/b;->g:I

    return-void
.end method

.method private a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x3a98

    .line 25
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 26
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 27
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 28
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "Accept"

    const-string v2, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "Referer"

    invoke-virtual {v0, v1, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string p1, "Charset"

    const-string v1, "UTF-8"

    invoke-virtual {v0, p1, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object p1, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initConnection getCompleteSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v2}, Lcom/mgmi/db/dao3/c;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bytes="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/c;->d()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Range"

    invoke-virtual {v0, p1, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    .line 34
    invoke-virtual {v0, p0}, Ljava/net/URLConnection;->setDoInput(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private a(Lcom/mgadplus/b/d/b$a;)V
    .locals 2

    const/4 p1, 0x2

    .line 8
    iput p1, p0, Lcom/mgadplus/b/d/b;->g:I

    .line 9
    iget-object p1, p0, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    if-nez p1, :cond_0

    .line 10
    sget-object p0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    const-string p1, "checkDownloadInfoAndDownloadFileSize but mBuild is null"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mgadplus/b/d/b;->c:Lr5d;

    invoke-virtual {p1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lr5d;->a(Ljava/lang/String;)Lcom/mgmi/db/dao3/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    if-nez p1, :cond_1

    .line 12
    sget-object p1, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownload and create info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    invoke-virtual {v1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p1, Lcom/mgmi/db/dao3/c;

    invoke-direct {p1}, Lcom/mgmi/db/dao3/c;-><init>()V

    iput-object p1, p0, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    const-wide/16 v0, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/mgmi/db/dao3/c;->a(J)V

    .line 15
    iget-object p1, p0, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {p1, v0, v1}, Lcom/mgmi/db/dao3/c;->b(J)V

    .line 16
    iget-object p1, p0, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/mgmi/db/dao3/c;->c(J)V

    .line 17
    iget-object p1, p0, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    iget-object v0, p0, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    invoke-virtual {v0}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/db/dao3/c;->a(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/db/dao3/c;->c(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    iget-object v0, p0, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    invoke-virtual {v0}, Lx1d$a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/db/dao3/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/db/dao3/c;->b(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/mgadplus/b/d/b;->c:Lr5d;

    iget-object p0, p0, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-interface {p1, p0}, Lr5d;->b(Lcom/mgmi/db/dao3/c;)V

    goto :goto_0

    .line 21
    :cond_1
    sget-object p1, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownload and has info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    invoke-virtual {v1}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/mgadplus/b/d/b;->c:Lr5d;

    iget-object p0, p0, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-interface {p1, p0}, Lr5d;->c(Lcom/mgmi/db/dao3/c;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 3

    .line 3
    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download onError url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    invoke-virtual {v2}, Lx1d$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "error reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/mgadplus/b/d/b;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/mgadplus/b/d/b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/mgadplus/b/d/b;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private g()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "startDownload finally"

    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->d()Z

    move-result v0

    const-string v3, "thread is been stop"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v1, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    const-string v4, "startDownload"

    invoke-static {v0, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    :try_start_0
    iget-object v7, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v7}, Lcom/mgmi/db/dao3/c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lb2d;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startDownload and create file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v8}, Lcom/mgmi/db/dao3/c;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v7}, Lcom/mgmi/db/dao3/c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lb2d;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_3

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lcom/mgadplus/b/d/b;->b(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->c()V

    iput v5, v1, Lcom/mgadplus/b/d/b;->g:I

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->h()V

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x0

    :goto_1
    const/16 v16, 0x0

    goto/16 :goto_2f

    :catch_0
    const/4 v6, 0x0

    :goto_2
    const/4 v9, 0x0

    :goto_3
    const/16 v16, 0x0

    goto/16 :goto_26

    :catch_1
    const/16 v3, 0x9

    const/4 v6, 0x0

    :goto_4
    const/4 v9, 0x0

    :goto_5
    const/16 v16, 0x0

    goto/16 :goto_28

    :catch_2
    const/4 v6, 0x0

    :goto_6
    const/4 v9, 0x0

    :goto_7
    const/16 v16, 0x0

    goto/16 :goto_2a

    :catch_3
    move-exception v0

    const/16 v3, 0x9

    const/4 v6, 0x0

    :goto_8
    const/4 v9, 0x0

    :goto_9
    const/16 v16, 0x0

    goto/16 :goto_2c

    :cond_2
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startDownload and has file = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v8}, Lcom/mgmi/db/dao3/c;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v8}, Lcom/mgmi/db/dao3/c;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v9, "rw"

    invoke-direct {v8, v7, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v7, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/mgmi/db/dao3/c;->a(J)V

    iget-object v7, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v7}, Lcom/mgmi/db/dao3/c;->e()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-lez v7, :cond_4

    iget-object v7, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v7}, Lcom/mgmi/db/dao3/c;->d()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v7, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v7}, Lcom/mgmi/db/dao3/c;->e()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v7, v9, v13

    if-ltz v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->i()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->c()V

    iput v5, v1, Lcom/mgadplus/b/d/b;->g:I

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->h()V

    return-void

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v6, v8

    goto/16 :goto_0

    :catch_6
    move-object v6, v8

    goto/16 :goto_2

    :catch_7
    move-object v6, v8

    const/16 v3, 0x9

    goto/16 :goto_4

    :catch_8
    move-object v6, v8

    goto/16 :goto_6

    :catch_9
    move-exception v0

    move-object v6, v8

    const/16 v3, 0x9

    goto/16 :goto_8

    :cond_4
    :try_start_4
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v0}, Lcom/mgmi/db/dao3/c;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-direct {v1, v0, v7}, Lcom/mgadplus/b/d/b;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v9
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    :goto_b
    const/16 v10, 0x12e

    if-eq v10, v0, :cond_11

    const/16 v10, 0x12d

    if-ne v10, v0, :cond_5

    goto/16 :goto_24

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->d()Z

    move-result v10

    const/16 v13, 0xa

    if-eqz v10, :cond_6

    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v13}, Lcom/mgadplus/b/d/b;->b(I)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    goto :goto_d

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->c()V

    iput v5, v1, Lcom/mgadplus/b/d/b;->g:I

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->h()V

    return-void

    :catchall_2
    move-exception v0

    move-object v3, v0

    move-object v6, v8

    goto/16 :goto_1

    :catch_c
    move-object v6, v8

    goto/16 :goto_3

    :catch_d
    move-object v6, v8

    const/16 v3, 0x9

    goto/16 :goto_5

    :catch_e
    move-object v6, v8

    goto/16 :goto_7

    :catch_f
    move-exception v0

    move-object v6, v8

    const/16 v3, 0x9

    goto/16 :goto_9

    :cond_6
    const/16 v10, 0xc8

    if-eq v10, v0, :cond_7

    const/16 v10, 0xce

    if-eq v10, v0, :cond_7

    :try_start_7
    invoke-direct {v1, v9}, Lcom/mgadplus/b/d/b;->a(Ljava/net/HttpURLConnection;)V

    sget-object v3, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RESPONSE CODE NOT 200 OR 206 responseCode ="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v10}, Lcom/mgadplus/b/d/b;->b(I)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {v3, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    goto :goto_11

    :catch_10
    move-exception v0

    goto :goto_f

    :catch_11
    move-exception v0

    goto :goto_10

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->c()V

    iput v5, v1, Lcom/mgadplus/b/d/b;->g:I

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->h()V

    return-void

    :cond_7
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v13}, Lcom/mgadplus/b/d/b;->b(I)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_12

    goto :goto_14

    :catch_12
    move-exception v0

    goto :goto_12

    :catch_13
    move-exception v0

    goto :goto_13

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_14
    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->c()V

    iput v5, v1, Lcom/mgadplus/b/d/b;->g:I

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->h()V

    return-void

    :cond_8
    :try_start_b
    iget-object v0, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v0}, Lcom/mgmi/db/dao3/c;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v9}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    int-to-long v6, v0

    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get contentLength="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v4, v14, v11

    if-gtz v4, :cond_a

    const-wide/16 v10, 0x2800

    cmp-long v4, v6, v10

    if-gez v4, :cond_9

    invoke-direct {v1, v9}, Lcom/mgadplus/b/d/b;->a(Ljava/net/HttpURLConnection;)V

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lcom/mgadplus/b/d/b;->b(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentLength too short: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_14

    goto :goto_17

    :catch_14
    move-exception v0

    goto :goto_15

    :catch_15
    move-exception v0

    goto :goto_16

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_17
    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->c()V

    iput v5, v1, Lcom/mgadplus/b/d/b;->g:I

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->h()V

    return-void

    :cond_9
    :try_start_d
    iget-object v4, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v4, v6, v7}, Lcom/mgmi/db/dao3/c;->b(J)V

    goto :goto_1b

    :cond_a
    iget-object v4, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v4}, Lcom/mgmi/db/dao3/c;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v4, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v4}, Lcom/mgmi/db/dao3/c;->d()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long/2addr v14, v6

    cmp-long v4, v10, v14

    if-eqz v4, :cond_b

    const-string v3, "ERROR_REASON_CONTENT_CHANGED"

    invoke-static {v0, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Lcom/mgadplus/b/d/b;->a(Ljava/net/HttpURLConnection;)V

    invoke-direct {v1, v5}, Lcom/mgadplus/b/d/b;->b(I)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_e
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v0

    goto :goto_18

    :catch_17
    move-exception v0

    goto :goto_19

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1a
    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->c()V

    iput v5, v1, Lcom/mgadplus/b/d/b;->g:I

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->h()V

    return-void

    :cond_b
    :goto_1b
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->d()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v0, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v13}, Lcom/mgadplus/b/d/b;->b(I)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_10
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_18

    goto :goto_1e

    :catch_18
    move-exception v0

    goto :goto_1c

    :catch_19
    move-exception v0

    goto :goto_1d

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1e

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1e
    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->c()V

    iput v5, v1, Lcom/mgadplus/b/d/b;->g:I

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->h()V

    return-void

    :cond_c
    :try_start_11
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    const/16 v0, 0x1000

    :try_start_12
    new-array v0, v0, [B

    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->d()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    const/4 v4, 0x0

    invoke-virtual {v8, v0, v4, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v4, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v4}, Lcom/mgmi/db/dao3/c;->d()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    int-to-long v13, v3

    add-long/2addr v11, v13

    invoke-virtual {v4, v11, v12}, Lcom/mgmi/db/dao3/c;->a(J)V

    iget-object v3, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v3}, Lcom/mgmi/db/dao3/c;->d()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v7, v1, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v7}, Lcom/mgmi/db/dao3/c;->e()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v1, v3, v4, v11, v12}, Lcom/mgadplus/b/d/b;->a(JJ)V

    goto :goto_1f

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object/from16 v16, v6

    move-object v6, v8

    goto/16 :goto_2f

    :catch_1a
    move-object/from16 v16, v6

    move-object v6, v8

    goto/16 :goto_26

    :catch_1b
    move-object/from16 v16, v6

    move-object v6, v8

    const/16 v3, 0x9

    goto/16 :goto_28

    :catch_1c
    move-object/from16 v16, v6

    move-object v6, v8

    goto/16 :goto_2a

    :catch_1d
    move-exception v0

    move-object/from16 v16, v6

    move-object v6, v8

    const/16 v3, 0x9

    goto/16 :goto_2c

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->i()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_1b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_1a
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :cond_e
    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_13
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_20

    :catch_1e
    move-exception v0

    goto :goto_21

    :catch_1f
    move-exception v0

    goto :goto_22

    :cond_f
    :goto_20
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1e

    goto :goto_23

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23

    :goto_22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_23
    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->c()V

    iput v5, v1, Lcom/mgadplus/b/d/b;->g:I

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->h()V

    goto/16 :goto_2e

    :cond_11
    :goto_24
    :try_start_14
    const-string v0, "Location"

    invoke-virtual {v9, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[302] redirect url is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/mgadplus/b/d/b;->b(I)V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    invoke-static {v4, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_15
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_21
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_20

    goto :goto_25

    :catch_20
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_25

    :catch_21
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_25
    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->c()V

    iput v5, v1, Lcom/mgadplus/b/d/b;->g:I

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->h()V

    return-void

    :cond_12
    const/4 v4, 0x0

    :try_start_16
    invoke-direct {v1, v0, v4}, Lcom/mgadplus/b/d/b;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    move v7, v4

    goto/16 :goto_b

    :goto_26
    const/16 v0, 0xc

    :try_start_17
    invoke-direct {v1, v0}, Lcom/mgadplus/b/d/b;->b(I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_13

    :try_start_18
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_27

    :catch_22
    move-exception v0

    goto :goto_21

    :catch_23
    move-exception v0

    goto :goto_22

    :cond_13
    :goto_27
    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_14
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_22

    goto :goto_23

    :catchall_4
    move-exception v0

    move-object v3, v0

    goto/16 :goto_2f

    :goto_28
    :try_start_19
    invoke-direct {v1, v3}, Lcom/mgadplus/b/d/b;->b(I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_15

    :try_start_1a
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_29

    :catch_24
    move-exception v0

    goto/16 :goto_21

    :catch_25
    move-exception v0

    goto/16 :goto_22

    :cond_15
    :goto_29
    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_16
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_24

    goto/16 :goto_23

    :goto_2a
    const/4 v0, 0x5

    :try_start_1b
    invoke-direct {v1, v0}, Lcom/mgadplus/b/d/b;->b(I)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_17

    :try_start_1c
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2b

    :catch_26
    move-exception v0

    goto/16 :goto_21

    :catch_27
    move-exception v0

    goto/16 :goto_22

    :cond_17
    :goto_2b
    if-eqz v16, :cond_18

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_18
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_26

    goto/16 :goto_23

    :goto_2c
    :try_start_1d
    invoke-direct {v1, v3}, Lcom/mgadplus/b/d/b;->b(I)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_19

    :try_start_1e
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2d

    :catch_28
    move-exception v0

    goto/16 :goto_21

    :catch_29
    move-exception v0

    goto/16 :goto_22

    :cond_19
    :goto_2d
    if-eqz v16, :cond_1a

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_1a
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_28

    goto/16 :goto_23

    :goto_2e
    return-void

    :goto_2f
    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1b

    :try_start_1f
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_30

    :catch_2a
    move-exception v0

    goto :goto_31

    :catch_2b
    move-exception v0

    goto :goto_32

    :cond_1b
    :goto_30
    if-eqz v16, :cond_1c

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_1c
    if-eqz v9, :cond_1d

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_2a

    goto :goto_33

    :goto_31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_33

    :goto_32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1d
    :goto_33
    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->c()V

    iput v5, v1, Lcom/mgadplus/b/d/b;->g:I

    invoke-direct/range {p0 .. p0}, Lcom/mgadplus/b/d/b;->h()V

    throw v3
.end method

.method private h()V
    .locals 0

    return-void
.end method

.method private i()V
    .locals 2

    sget-object v0, Lcom/mgadplus/b/d/b;->j:Ljava/lang/String;

    const-string v1, "download finish"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgadplus/b/d/b;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/mgadplus/b/d/b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/b/d/b;->b()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/b/d/b;->c:Lr5d;

    iget-object p0, p0, Lcom/mgadplus/b/d/b;->b:Lcom/mgmi/db/dao3/c;

    invoke-interface {v0, p0}, Lr5d;->c(Lcom/mgmi/db/dao3/c;)V

    return-void
.end method


# virtual methods
.method public a(Lx1d$a;)Lcom/mgadplus/b/d/b;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    return-object p0
.end method

.method public a()Lx1d$a;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    return-object p0
.end method

.method public a(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mgadplus/b/d/b;->f:Lx1d;

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    invoke-virtual {v0, p0, p1}, Lx1d;->f(Lx1d$a;I)V

    :cond_0
    return-void
.end method

.method public a(JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mgadplus/b/d/b;->f:Lx1d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lx1d;->g(Lx1d$a;JJ)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgadplus/b/d/b;->f:Lx1d;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgadplus/b/d/b;->a:Lx1d$a;

    invoke-virtual {v0, p0}, Lx1d;->l(Lx1d$a;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/mgadplus/b/d/b;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/b/d/b;->d:Z

    return-void
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/b/d/b;->d:Z

    return p0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgadplus/b/d/b;->g:I

    return-void
.end method

.method public f()Z
    .locals 1

    iget p0, p0, Lcom/mgadplus/b/d/b;->g:I

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mgadplus/b/d/b;->a(Lcom/mgadplus/b/d/b$a;)V

    invoke-direct {p0}, Lcom/mgadplus/b/d/b;->g()V

    return-void
.end method
