.class public Lcom/aliyun/thumbnail/ThumbnailHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;,
        Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;,
        Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;,
        Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;,
        Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x1388

.field private static final MSG_KEY_BITMAP_FAIL:I = 0x2

.field private static final MSG_KEY_BITMAP_SUCCESS:I = 0x3

.field private static final MSG_KEY_PREPARE_FAIL:I = 0x0

.field private static final MSG_KEY_PREPARE_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailHelper"


# instance fields
.field private volatile hasPrepared:Z

.field private final lock:Ljava/lang/Object;

.field private mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

.field private mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

.field private mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

.field private mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

.field private mUrl:Ljava/lang/String;

.field private mUrlDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->lock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mUrlDataMap:Ljava/util/Map;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->hasPrepared:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mUrl:Ljava/lang/String;

    .line 27
    .line 28
    new-instance p1, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    .line 34
    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mUrlDataMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1400(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/net/URLConnection;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getResponseCode(Ljava/net/URLConnection;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1500(Ljava/io/InputStream;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->readStream(Ljava/io/InputStream;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getThumbnailInfos(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$300(Lcom/aliyun/thumbnail/ThumbnailHelper;)[Lcom/aliyun/thumbnail/ThumbnailInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/aliyun/thumbnail/ThumbnailHelper;[Lcom/aliyun/thumbnail/ThumbnailInfo;)[Lcom/aliyun/thumbnail/ThumbnailInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/aliyun/thumbnail/ThumbnailHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendPrepareSuccessMsg()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/thumbnail/ThumbnailHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendPrepareFailMsg()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;[B)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getBitmap(Lcom/aliyun/thumbnail/ThumbnailInfo;[B)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$700(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendRequestBitmapFailMsg(Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;JLandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendRequestBitmapSuccMsg(Lcom/aliyun/thumbnail/ThumbnailInfo;JLandroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/aliyun/thumbnail/ThumbnailHelper;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getBitmap(Lcom/aliyun/thumbnail/ThumbnailInfo;[B)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    :try_start_0
    invoke-static {v0, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 17
    .line 18
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 19
    .line 20
    new-instance v1, Landroid/graphics/Rect;

    .line 21
    .line 22
    iget v2, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mLeft:I

    .line 23
    .line 24
    iget v3, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mTop:I

    .line 25
    .line 26
    iget v4, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mWidth:I

    .line 27
    .line 28
    add-int/2addr v4, v2

    .line 29
    iget p1, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mHeight:I

    .line 30
    .line 31
    add-int/2addr p1, v3

    .line 32
    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v1, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    sget-object p2, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "\u83b7\u53d6\u7f29\u7565\u56fe\u5f02\u5e38\u3002\u3002"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    :goto_0
    return-object p1
.end method

.method private getHttpUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    .line 17
    :try_start_1
    instance-of v1, p1, Ljava/net/HttpURLConnection;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    move-object v0, p1

    .line 23
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 24
    .line 25
    const-string v1, "GET"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x1388

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-object v0, p1

    .line 40
    :catch_1
    move-object p1, v0

    .line 41
    :goto_0
    return-object p1
.end method

.method private getHttpsUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    .line 17
    :try_start_1
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    move-object v0, p1

    .line 23
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 24
    .line 25
    const-string v1, "GET"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x1388

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-object v0, p1

    .line 40
    :catch_1
    move-object p1, v0

    .line 41
    :goto_0
    return-object p1
.end method

.method private getInfoByPosition(J)Lcom/aliyun/thumbnail/ThumbnailInfo;
    .locals 6

    .line 1
    sget-object v0, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "getInfoByPosition position = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-string p1, "mThumbnailInfoArray == null"

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_0
    array-length v0, v1

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-ge v1, v0, :cond_2

    .line 37
    .line 38
    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 39
    .line 40
    aget-object v3, v3, v1

    .line 41
    .line 42
    iget-wide v4, v3, Lcom/aliyun/thumbnail/ThumbnailInfo;->mStart:J

    .line 43
    .line 44
    cmp-long v4, v4, p1

    .line 45
    .line 46
    if-gtz v4, :cond_1

    .line 47
    .line 48
    iget-wide v4, v3, Lcom/aliyun/thumbnail/ThumbnailInfo;->mUntil:J

    .line 49
    .line 50
    cmp-long v4, v4, p1

    .line 51
    .line 52
    if-ltz v4, :cond_1

    .line 53
    .line 54
    move-object v2, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    sget-object p1, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v0, "mThumbnailInfoArray targetInfo = "

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {p1, p2}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v2
.end method

.method private getResponseCode(Ljava/net/URLConnection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method private native getThumbnailInfos(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private getUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 1

    .line 1
    const-string v0, "https://"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getHttpsUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string v0, "http://"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v1, v2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;->onPrepareSuccess()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;->onPrepareFail()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v3, "pos"

    .line 26
    .line 27
    if-ne v1, v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    .line 42
    .line 43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v2, v0, v1, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;->onThumbnailGetFail(JLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v4, 0x3

    .line 52
    if-ne v1, v4, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v5, "start"

    .line 71
    .line 72
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v7, "until"

    .line 81
    .line 82
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v7

    .line 86
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Landroid/graphics/Bitmap;

    .line 89
    .line 90
    new-instance v1, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;

    .line 91
    .line 92
    invoke-direct {v1}, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;-><init>()V

    .line 93
    .line 94
    .line 95
    new-array v0, v0, [J

    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    aput-wide v5, v0, v9

    .line 99
    .line 100
    aput-wide v7, v0, v2

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->setPositionRange([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p1}, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    .line 109
    .line 110
    invoke-interface {p1, v3, v4, v1}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;->onThumbnailGetSuccess(JLcom/aliyun/thumbnail/ThumbnailBitmapInfo;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_0
    return-void
.end method

.method public static loadClass()V
    .locals 0

    .line 1
    return-void
.end method

.method private static readStream(Ljava/io/InputStream;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x400

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_3

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :catch_1
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 39
    .line 40
    .line 41
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 47
    .line 48
    .line 49
    goto :goto_4

    .line 50
    :catch_2
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_4
    throw p0
.end method

.method private requestImgData(Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/aliyun/utils/ThreadManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/thumbnail/ThumbnailHelper$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper$3;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private sendPrepareFailMsg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private sendPrepareSuccessMsg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private sendRequestBitmapFailMsg(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance p1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "pos"

    .line 18
    .line 19
    invoke-virtual {p1, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private sendRequestBitmapSuccMsg(Lcom/aliyun/thumbnail/ThumbnailInfo;JLandroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance p4, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "pos"

    .line 18
    .line 19
    invoke-virtual {p4, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    iget-wide p2, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mStart:J

    .line 23
    .line 24
    const-string v1, "start"

    .line 25
    .line 26
    invoke-virtual {p4, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    const-string p2, "until"

    .line 30
    .line 31
    iget-wide v1, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mUntil:J

    .line 32
    .line 33
    invoke-virtual {p4, p2, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->hasPrepared:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "prepare again?"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->hasPrepared:Z

    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    sget-object v0, Lcom/aliyun/utils/ThreadManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    new-instance v1, Lcom/aliyun/thumbnail/ThumbnailHelper$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/aliyun/thumbnail/ThumbnailHelper$1;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v1
.end method

.method public requestBitmapAtPosition(J)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getInfoByPosition(J)Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "no match thumbnail at position:"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendRequestBitmapFailMsg(Ljava/lang/String;J)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v1, v0, Lcom/aliyun/thumbnail/ThumbnailInfo;->mPath:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v2, Lcom/aliyun/thumbnail/ThumbnailHelper$2;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper$2;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;J)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v1, v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->requestImgData(Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public setOnPrepareListener(Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnThumbnailGetListener(Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    .line 2
    .line 3
    return-void
.end method
