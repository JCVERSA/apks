.class public final Lvu/c;
.super Lvu/a;
.source "source.java"


# instance fields
.field private b:Lcom/transsion/upload/bean/TstTokenEntity;

.field private c:Lcom/alibaba/sdk/android/oss/OSS;

.field private d:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvu/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvu/c;->d:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic j(Luu/a;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lvu/c;->m(Luu/a;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvu/c;->d:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final l(Lcom/transsion/upload/bean/UploadFileType;Ljava/lang/String;ZLuu/a;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lvu/a;->a(Lcom/transsion/upload/bean/UploadFileType;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1d

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-lt v0, v1, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    .line 13
    .line 14
    iget-object v1, p0, Lvu/c;->b:Lcom/transsion/upload/bean/TstTokenEntity;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/upload/bean/TstTokenEntity;->getBucket()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v1, v2

    .line 24
    :goto_0
    new-instance v3, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {v0, v1, p1, v3}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    .line 38
    .line 39
    iget-object v1, p0, Lvu/c;->b:Lcom/transsion/upload/bean/TstTokenEntity;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/transsion/upload/bean/TstTokenEntity;->getBucket()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v1, v2

    .line 49
    :goto_1
    invoke-direct {v0, v1, p1, p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    new-instance v1, Lvu/b;

    .line 53
    .line 54
    invoke-direct {v1, p4, p2}, Lvu/b;-><init>(Luu/a;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lvu/c;->c:Lcom/alibaba/sdk/android/oss/OSS;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    new-instance v2, Lvu/c$a;

    .line 65
    .line 66
    invoke-direct {v2, p0, p1, p4, p2}, Lvu/c$a;-><init>(Lvu/c;Ljava/lang/String;Luu/a;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :cond_3
    if-eqz p3, :cond_4

    .line 74
    .line 75
    invoke-direct {p0, p2, v2}, Lvu/c;->k(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method

.method private static final m(Luu/a;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .locals 6

    .line 1
    const-string p2, "$localFilePath"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-wide v2, p3

    .line 11
    move-wide v4, p5

    .line 12
    invoke-interface/range {v0 .. v5}, Luu/a;->a(Ljava/lang/String;JJ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvu/c;->d:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->cancel()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lvu/c;->d:Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lwu/a;->a:Lwu/a;

    .line 41
    .line 42
    invoke-virtual {p0}, Lvu/a;->d()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " --> cancel() --> end"

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lwu/a;->b(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public c(Lcom/transsion/upload/bean/TstTokenEntity;Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLuu/a;)V
    .locals 1

    .line 1
    const-string v0, "tstToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "localFilePath"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "uploadFileType"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p3, p2, p4, p5}, Lvu/c;->l(Lcom/transsion/upload/bean/UploadFileType;Ljava/lang/String;ZLuu/a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public f()Lcom/transsion/upload/bean/UploadTstTokenStorageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/upload/bean/UploadTstTokenStorageType;->TST_TOKEN_STORAGE_OSS:Lcom/transsion/upload/bean/UploadTstTokenStorageType;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Lcom/transsion/upload/bean/TstTokenEntity;)V
    .locals 4

    .line 1
    const-string v0, "tstToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lvu/c;->b:Lcom/transsion/upload/bean/TstTokenEntity;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getAccessKeyId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getAccessKeySecret()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getSecurityToken()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x7530

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setConnectionTimeout(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setSocketTimeout(I)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x5

    .line 41
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxConcurrentRequest(I)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxErrorRetry(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lvu/c;->c:Lcom/alibaba/sdk/android/oss/OSS;

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    new-instance v1, Lcom/alibaba/sdk/android/oss/OSSClient;

    .line 53
    .line 54
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getEndPoint()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v1, v2, p1, v0}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lvu/c;->c:Lcom/alibaba/sdk/android/oss/OSS;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    if-eqz v1, :cond_1

    .line 69
    .line 70
    invoke-interface {v1, v0}, Lcom/alibaba/sdk/android/oss/OSS;->updateCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void
.end method
