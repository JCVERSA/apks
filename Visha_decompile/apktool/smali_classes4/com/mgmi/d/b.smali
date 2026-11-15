.class public Lcom/mgmi/d/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/d/b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "b"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Lcom/mgmi/db/dao3/g;

.field private e:Lcom/mgmi/d/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mgmi/db/dao3/g;Lcom/mgmi/d/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/mgmi/d/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    iput-object p3, p0, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgmi/d/b;->c:Z

    return-void
.end method

.method private a(Ljava/lang/String;J)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x1388

    .line 7
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 8
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 9
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 10
    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v0, "Accept"

    const-string v1, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v0, "Accept-Language"

    const-string v1, "zh-CN"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v0, "Referer"

    invoke-virtual {p0, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string p1, "Charset"

    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bytes="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Range"

    invoke-virtual {p0, p2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private a(Lcom/mgmi/db/dao3/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgmi/d/b;->a()Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private b()V
    .locals 25

    move-object/from16 v1, p0

    const-string v0, "redirect but invalid url"

    const-string v2, "content length don\'t match total file size"

    const-string v3, "invalid content length"

    const-string v4, "failed, http code: "

    const-string v5, "can\'t create file"

    const-string v6, "IOException finally -"

    iget-object v7, v1, Lcom/mgmi/d/b;->b:Landroid/content/Context;

    if-eqz v7, :cond_21

    iget-object v7, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    if-nez v7, :cond_0

    goto/16 :goto_25

    :cond_0
    iget-object v7, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    if-eqz v7, :cond_20

    invoke-virtual {v7}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_24

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/mgmi/d/b;->c()Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v0, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    const-string v2, "invalid network"

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v1, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-interface {v0, v1, v2}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v7, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v7}, Lcom/mgmi/db/dao3/g;->h()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v0, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    const-string v2, "already completed"

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v1, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-interface {v0, v1}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;)V

    return-void

    :cond_3
    iget-object v7, v1, Lcom/mgmi/d/b;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v8}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v9}, Lcom/mgmi/db/dao3/g;->e()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lqwd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".mp4"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v8, v7

    goto :goto_0

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    iget-object v9, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v9, v8}, Lcom/mgmi/db/dao3/g;->b(Ljava/lang/String;)V

    sget-object v9, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "first time, set path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v9}, Lcom/mgmi/db/dao3/g;->e()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    const-wide/16 v10, 0x0

    if-nez v9, :cond_6

    iget-object v9, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/mgmi/db/dao3/g;->c(Ljava/lang/Long;)V

    iget-object v9, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-direct {v1, v9}, Lcom/mgmi/d/b;->a(Lcom/mgmi/db/dao3/g;)V

    :try_start_0
    sget-object v9, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    const-string v12, "create file"

    invoke-static {v9, v12}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v9, v5}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v2, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-interface {v0, v2, v5}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create file exception -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v1, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    const-string v2, "create file exception"

    invoke-interface {v0, v1, v2}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v5, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v5}, Lcom/mgmi/db/dao3/g;->b()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7}, Lard;->a(Ljava/lang/String;)J

    move-result-wide v12

    iget-object v5, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v5}, Lcom/mgmi/db/dao3/g;->c()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v8, v14

    const/high16 v5, 0xa00000

    int-to-long v14, v5

    add-long/2addr v8, v14

    sget-object v5, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "download path remain size:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "download file need  size:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v7, v12, v8

    if-gez v7, :cond_7

    const-string v0, "no more space"

    invoke-static {v5, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v1, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-interface {v2, v1, v0}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download source file resource.getPath() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v8}, Lcom/mgmi/db/dao3/g;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string v7, "open random access file"

    invoke-static {v5, v7}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/RandomAccessFile;

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v9}, Lcom/mgmi/db/dao3/g;->e()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v9, "rw"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v12, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v12}, Lcom/mgmi/db/dao3/g;->c()Ljava/lang/Long;

    move-result-object v12

    if-nez v12, :cond_8

    move-wide v12, v10

    goto :goto_1

    :cond_8
    iget-object v12, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v12}, Lcom/mgmi/db/dao3/g;->c()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_1
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "init connection to : "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v10}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v10}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v11}, Lcom/mgmi/db/dao3/g;->c()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v1, v10, v14, v15}, Lcom/mgmi/d/b;->a(Ljava/lang/String;J)Ljava/net/HttpURLConnection;

    move-result-object v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "response code : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_2
    const/16 v5, 0x12e

    if-eq v11, v5, :cond_9

    const/16 v5, 0x12d

    if-ne v11, v5, :cond_a

    :cond_9
    move-wide/from16 v20, v12

    goto/16 :goto_13

    :cond_a
    const/16 v0, 0xc8

    if-eq v11, v0, :cond_b

    const/16 v0, 0xce

    if-eq v11, v0, :cond_b

    :try_start_5
    sget-object v0, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v14, 0x1

    :try_start_6
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgmi/db/dao3/g;->e(Ljava/lang/Long;)V

    iget-object v0, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v2, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v11, v4, v3}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;ILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-direct {v1, v0}, Lcom/mgmi/d/b;->a(Lcom/mgmi/db/dao3/g;)V

    :try_start_7
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v1, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v12, v10

    const/4 v10, 0x0

    goto/16 :goto_20

    :catch_2
    move-exception v0

    :goto_4
    move-wide/from16 v20, v12

    const/16 v17, 0x0

    :goto_5
    move-object v12, v10

    :goto_6
    move-object v10, v0

    goto/16 :goto_18

    :catch_3
    move-exception v0

    const-wide/16 v14, 0x1

    goto :goto_4

    :cond_b
    const-wide/16 v14, 0x1

    :try_start_8
    sget-object v0, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    const-string v4, "try get content-length"

    invoke-static {v0, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v10, v4}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    const-string v0, "Content-Length"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v10, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sget-object v0, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "content-length : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v14}, Lcom/mgmi/db/dao3/g;->b()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-wide/16 v18, 0x2800

    cmp-long v20, v14, v18

    if-gez v20, :cond_d

    cmp-long v2, v4, v18

    if-gez v2, :cond_c

    :try_start_9
    invoke-static {v0, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v2, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    const/4 v4, 0x0

    invoke-interface {v0, v2, v11, v4, v3}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;ILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-direct {v1, v0}, Lcom/mgmi/d/b;->a(Lcom/mgmi/db/dao3/g;)V

    :try_start_a
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    sget-object v1, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    return-void

    :cond_c
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first time, total : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgmi/db/dao3/g;->b(Ljava/lang/Long;)V

    iget-object v0, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/mgmi/db/dao3/g;->c(Ljava/lang/Long;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_a

    :cond_d
    :try_start_c
    iget-object v3, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v3}, Lcom/mgmi/db/dao3/g;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-object v3, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v3}, Lcom/mgmi/db/dao3/g;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    add-long v20, v20, v4

    cmp-long v3, v18, v20

    if-eqz v3, :cond_e

    :try_start_d
    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v3, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v11, v4, v2}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;ILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v0, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-direct {v1, v0}, Lcom/mgmi/d/b;->a(Lcom/mgmi/db/dao3/g;)V

    :try_start_e
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    sget-object v1, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_e
    move-wide v4, v14

    :goto_a
    :try_start_f
    iget-object v0, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-direct {v1, v0}, Lcom/mgmi/d/b;->a(Lcom/mgmi/db/dao3/g;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v0}, Lcom/mgmi/db/dao3/g;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v0, 0x1000

    new-array v0, v0, [B

    invoke-virtual {v7, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    move-wide/from16 v18, v2

    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_b
    :try_start_10
    iget-boolean v3, v1, Lcom/mgmi/d/b;->c:Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v3, :cond_f

    :try_start_11
    const-string v0, "stopped, break"
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :goto_c
    move-object v3, v0

    move-wide/from16 v20, v12

    const/16 v16, 0x0

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v12, v10

    move-object v10, v2

    move-object v2, v0

    goto/16 :goto_20

    :catch_6
    move-exception v0

    move-object/from16 v17, v2

    move-wide/from16 v20, v12

    goto/16 :goto_5

    :cond_f
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/mgmi/d/b;->c()Z

    move-result v3
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-nez v3, :cond_10

    :try_start_13
    const-string v0, "not in valid network, break"

    goto :goto_c

    :cond_10
    cmp-long v3, v14, v4

    if-ltz v3, :cond_11

    const-string v0, "already completed, break"
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-object v3, v0

    move-wide/from16 v20, v12

    :goto_d
    const/16 v16, 0x1

    goto :goto_e

    :cond_11
    :try_start_14
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-wide/from16 v20, v12

    const/4 v12, -0x1

    if-ne v12, v3, :cond_13

    :try_start_15
    const-string v0, "no more input stream, break"
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object v3, v0

    goto :goto_d

    :goto_e
    iget-object v0, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-direct {v1, v0}, Lcom/mgmi/d/b;->a(Lcom/mgmi/db/dao3/g;)V

    if-eqz v2, :cond_12

    :try_start_16
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_f

    :catch_7
    move-exception v0

    goto :goto_10

    :cond_12
    :goto_f
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    goto :goto_11

    :goto_10
    sget-object v2, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    move v0, v11

    move/from16 v11, v16

    const/4 v10, 0x0

    goto/16 :goto_1c

    :catch_8
    move-exception v0

    :goto_12
    move-object/from16 v17, v2

    goto/16 :goto_5

    :cond_13
    const/4 v12, 0x0

    :try_start_17
    invoke-virtual {v7, v0, v12, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v12, v3

    add-long/2addr v14, v12

    cmp-long v3, v14, v4

    if-lez v3, :cond_14

    move-wide v14, v4

    :cond_14
    iget-object v3, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/mgmi/db/dao3/g;->c(Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v18

    const-wide/16 v22, 0x1388

    cmp-long v3, v12, v22

    if-ltz v3, :cond_15

    iget-object v3, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-direct {v1, v3}, Lcom/mgmi/d/b;->a(Lcom/mgmi/db/dao3/g;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sget-object v3, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "flushing - received : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", total : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :cond_15
    move-wide/from16 v12, v20

    goto/16 :goto_b

    :catch_9
    move-exception v0

    move-wide/from16 v20, v12

    goto :goto_12

    :catch_a
    move-exception v0

    move-wide/from16 v20, v12

    move-object v12, v10

    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_16
    move-wide/from16 v20, v12

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v12, v20

    const-wide/16 v14, 0x1

    goto/16 :goto_7

    :goto_13
    :try_start_18
    const-string v5, "Location"

    invoke-virtual {v10, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_17

    sget-object v2, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v3, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    const/4 v12, 0x0

    :try_start_19
    invoke-interface {v2, v3, v11, v12, v0}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;ILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    iget-object v0, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-direct {v1, v0}, Lcom/mgmi/d/b;->a(Lcom/mgmi/db/dao3/g;)V

    :try_start_1a
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    goto :goto_14

    :catch_b
    move-exception v0

    sget-object v1, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void

    :catchall_2
    move-exception v0

    :goto_15
    move-object v2, v0

    move-object/from16 v24, v12

    move-object v12, v10

    move-object/from16 v10, v24

    goto/16 :goto_20

    :catch_c
    move-exception v0

    :goto_16
    move-object/from16 v17, v12

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    const/4 v12, 0x0

    goto :goto_15

    :catch_d
    move-exception v0

    :goto_17
    const/4 v12, 0x0

    goto :goto_16

    :cond_17
    const/4 v12, 0x0

    :try_start_1b
    sget-object v13, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "redirect connection to : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v14}, Lcom/mgmi/db/dao3/g;->c()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v1, v5, v14, v15}, Lcom/mgmi/d/b;->a(Ljava/lang/String;J)Ljava/net/HttpURLConnection;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "redirect response code : "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    move-wide/from16 v12, v20

    goto/16 :goto_2

    :catch_e
    move-exception v0

    move-wide/from16 v20, v12

    goto :goto_17

    :catch_f
    move-exception v0

    move-wide/from16 v20, v12

    const/4 v12, 0x0

    move-object/from16 v17, v12

    const/4 v11, 0x0

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    const/4 v12, 0x0

    move-object v2, v0

    move-object v10, v12

    goto/16 :goto_20

    :catch_10
    move-exception v0

    move-wide/from16 v20, v12

    const/4 v12, 0x0

    move-object v10, v0

    move-object/from16 v17, v12

    const/4 v11, 0x0

    :goto_18
    :try_start_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException during loading - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    iget-object v0, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-direct {v1, v0}, Lcom/mgmi/d/b;->a(Lcom/mgmi/db/dao3/g;)V

    if-eqz v17, :cond_18

    :try_start_1d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    goto :goto_19

    :catch_11
    move-exception v0

    goto :goto_1a

    :cond_18
    :goto_19
    if-eqz v12, :cond_19

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_19
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_11

    goto :goto_1b

    :goto_1a
    sget-object v2, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    move v0, v11

    const/4 v11, 0x0

    :goto_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v2}, Lcom/mgmi/db/dao3/g;->c()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1a

    const-wide/16 v6, 0x0

    goto :goto_1d

    :cond_1a
    iget-object v2, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-virtual {v2}, Lcom/mgmi/db/dao3/g;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_1d
    sub-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-gtz v2, :cond_1b

    const-wide/16 v14, 0x1

    goto :goto_1e

    :cond_1b
    move-wide v14, v4

    :goto_1e
    sub-long v6, v6, v20

    cmp-long v2, v6, v8

    if-gez v2, :cond_1c

    move-wide v6, v8

    :cond_1c
    div-long/2addr v6, v14

    sget-object v2, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end, average speed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_1d

    iget-object v0, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v1, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-interface {v0, v1}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;)V

    goto :goto_1f

    :cond_1d
    iget-object v2, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v1, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-interface {v2, v1, v0, v10, v3}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;ILjava/lang/Exception;Ljava/lang/String;)V

    :goto_1f
    return-void

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object/from16 v10, v17

    :goto_20
    iget-object v0, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-direct {v1, v0}, Lcom/mgmi/d/b;->a(Lcom/mgmi/db/dao3/g;)V

    if-eqz v10, :cond_1e

    :try_start_1e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_21

    :catch_12
    move-exception v0

    goto :goto_22

    :cond_1e
    :goto_21
    if-eqz v12, :cond_1f

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1f
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_12

    goto :goto_23

    :goto_22
    sget-object v1, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    throw v2

    :catch_13
    move-exception v0

    sget-object v2, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open random access file exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v1, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    const-string v2, "open file exception"

    invoke-interface {v0, v1, v2}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;Ljava/lang/String;)V

    return-void

    :cond_20
    :goto_24
    sget-object v0, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    const-string v2, "invalid resource"

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mgmi/d/b;->e:Lcom/mgmi/d/b$a;

    iget-object v1, v1, Lcom/mgmi/d/b;->d:Lcom/mgmi/db/dao3/g;

    invoke-interface {v0, v1, v2}, Lcom/mgmi/d/b$a;->a(Lcom/mgmi/db/dao3/g;Ljava/lang/String;)V

    return-void

    :cond_21
    :goto_25
    sget-object v0, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    const-string v1, "no context or callback"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()Z
    .locals 0

    iget-object p0, p0, Lcom/mgmi/d/b;->b:Landroid/content/Context;

    invoke-static {p0}, Lfyd;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;
    .locals 3

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/mgmi/d/b;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/mgmi/db/dao3/d;->a(Landroid/content/Context;)Lcom/mgmi/db/dao3/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/d;->b()Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lcom/mgmi/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdResDao exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/mgmi/d/b;->b()V

    return-void
.end method
