.class public Lcom/transsion/playercommon/vishaapis/FileServiceManager;
.super Lcom/transsion/retrofit/factory/BaseAPIManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/vishaapis/FileServiceManager$InstanceHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FileServiceManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/retrofit/factory/BaseAPIManager;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lqr3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/FileServiceManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/playercommon/vishaapis/FileServiceManager;
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/FileServiceManager$InstanceHolder;->a()Lcom/transsion/playercommon/vishaapis/FileServiceManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public SaveToDisk(Lokhttp3/ResponseBody;Ljava/io/File;)Z
    .locals 8

    invoke-static {p2}, Lfc7;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p2, 0x1000

    :try_start_2
    new-array p2, p2, [B

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_5
    invoke-virtual {v1, p2, p0, p1}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v6, p1

    add-long/2addr v4, v6

    sget-object p1, Lcom/transsion/playercommon/vishaapis/FileServiceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file download: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    :try_start_7
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    if-eqz v0, :cond_1

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    return p0
.end method

.method public createBaseUrl()Ljava/lang/String;
    .locals 0

    const-string p0, "https://www.transsion.com"

    return-object p0
.end method

.method public createInterceptor()Lokhttp3/Interceptor;
    .locals 0

    new-instance p0, Lcom/transsion/playercommon/vishaapis/APIReqParamInterceptor;

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/APIReqParamInterceptor;-><init>()V

    return-object p0
.end method

.method public createLogInterceptor()Lokhttp3/Interceptor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
