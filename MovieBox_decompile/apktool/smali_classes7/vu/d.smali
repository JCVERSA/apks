.class public final Lvu/d;
.super Lvu/a;
.source "source.java"


# instance fields
.field private b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvu/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lvu/d;->c:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lvu/d;->d:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    return-void
.end method

.method private final j(ZLcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lvu/d;->d:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    iget-object v0, p0, Lvu/d;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lvu/d;->d:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    iget-object v0, p0, Lvu/d;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/List;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lvu/d;->d:Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    iget-object v0, p0, Lvu/d;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    new-array v1, v1, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object p2, v1, v2

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method private final k(Lcom/transsion/upload/bean/TstTokenEntity;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/amazonaws/auth/BasicSessionCredentials;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getAccessKeyId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getAccessKeySecret()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getSecurityToken()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/amazonaws/services/s3/AmazonS3Client;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getRegionId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/amazonaws/regions/Region;->e(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v1, v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/amazonaws/services/s3/S3ClientOptions;->a()Lcom/amazonaws/services/s3/S3ClientOptions$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->b(Z)Lcom/amazonaws/services/s3/S3ClientOptions$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->c(Z)Lcom/amazonaws/services/s3/S3ClientOptions$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->a()Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d0(Lcom/amazonaws/services/s3/S3ClientOptions;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->c(Lcom/amazonaws/services/s3/AmazonS3;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lvu/d;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 77
    .line 78
    return-void
.end method

.method private final l(Lcom/transsion/upload/bean/TstTokenEntity;Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLuu/a;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p3, p2}, Lvu/a;->a(Lcom/transsion/upload/bean/UploadFileType;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    iget-object p3, p0, Lvu/d;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getBucket()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p1, v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->i(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-direct {p0, p4, p1}, Lvu/d;->j(ZLcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    new-instance p3, Lvu/d$a;

    .line 30
    .line 31
    move-object v0, p3

    .line 32
    move-object v1, p0

    .line 33
    move-object v3, p5

    .line 34
    move-object v4, p2

    .line 35
    move-object v5, p1

    .line 36
    invoke-direct/range {v0 .. v5}, Lvu/d$a;-><init>(Lvu/d;Ljava/lang/String;Luu/a;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lvu/d;->d:Ljava/util/LinkedHashMap;

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
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_4

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
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Iterable;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->f()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v5, 0x0

    .line 61
    :goto_1
    invoke-virtual {v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d(I)Z

    .line 62
    .line 63
    .line 64
    :cond_3
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->d()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    iget-object v0, p0, Lvu/d;->d:Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lwu/a;->a:Lwu/a;

    .line 76
    .line 77
    invoke-virtual {p0}, Lvu/a;->d()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, " --> cancel() --> end"

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lwu/a;->b(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
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
    const-string v0, "localFilePath"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "uploadFileType"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct/range {p0 .. p5}, Lvu/d;->l(Lcom/transsion/upload/bean/TstTokenEntity;Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLuu/a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public f()Lcom/transsion/upload/bean/UploadTstTokenStorageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/upload/bean/UploadTstTokenStorageType;->TST_TOKEN_STORAGE_S3:Lcom/transsion/upload/bean/UploadTstTokenStorageType;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Lcom/transsion/upload/bean/TstTokenEntity;)V
    .locals 2

    .line 1
    const-string v0, "tstToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lvu/d;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getAccessKeyId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/upload/bean/TstTokenEntity;->getAccessKeyId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    :cond_1
    iput-object v0, p0, Lvu/d;->c:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lvu/d;->k(Lcom/transsion/upload/bean/TstTokenEntity;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
