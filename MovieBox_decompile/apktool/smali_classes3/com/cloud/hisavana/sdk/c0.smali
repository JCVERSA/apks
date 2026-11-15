.class public final Lcom/cloud/hisavana/sdk/c0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/c0;

.field private static final b:Lcom/cloud/hisavana/sdk/c0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/c0;->a:Lcom/cloud/hisavana/sdk/c0;

    .line 7
    .line 8
    new-instance v0, Lcom/cloud/hisavana/sdk/c0$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/c0$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/hisavana/sdk/c0;->b:Lcom/cloud/hisavana/sdk/c0$a;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/a0;->a:Lcom/cloud/hisavana/sdk/a0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/a0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v2, 0x3

    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x4

    .line 19
    move-object v8, p1

    .line 20
    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v2, 0x3

    .line 34
    const/4 v4, 0x3

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x4

    .line 37
    move-object v8, p1

    .line 38
    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private final g(Ljava/io/File;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/c0;->b:Lcom/cloud/hisavana/sdk/c0$a;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/io/FilesKt;->w(Ljava/io/File;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "getDefault(...)"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "toLowerCase(...)"

    .line 34
    .line 35
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/c0$a;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 44
    return p1
.end method

.method private final h(Ljava/io/File;)Z
    .locals 7

    .line 1
    const-string v0, "DefaultMaterialManager"

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    const/4 v1, 0x4

    .line 12
    :try_start_0
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->g(I)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v3, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-direct {v3, v4}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v6, "saveDefaultAdMaterial, sourceFile is "

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v6, ", key is "

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v4, v0, v5}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v3}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->c(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-ne v5, v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-interface {v1, v3}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->a(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 86
    .line 87
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    :try_start_1
    invoke-interface {v1, v3, v2}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->e(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;Ljava/io/InputStream;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_2

    .line 95
    .line 96
    const-string v1, ""

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    goto :goto_3

    .line 101
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-lez v1, :cond_3

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    .line 109
    .line 110
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :goto_2
    const/4 v2, 0x0

    .line 115
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v1, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 124
    .line 125
    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 129
    .line 130
    .line 131
    :catchall_2
    :cond_4
    :goto_4
    const/4 p1, 0x0

    .line 132
    return p1

    .line 133
    :catchall_3
    move-exception p1

    .line 134
    if-eqz v2, :cond_5

    .line 135
    .line 136
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 137
    .line 138
    .line 139
    :catchall_4
    :cond_5
    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/cloud/hisavana/sdk/h4;
    .locals 4

    .line 1
    const-string v0, "ads"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    move-object v1, v0

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v3, Lcom/cloud/hisavana/sdk/h4;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Lcom/cloud/hisavana/sdk/h4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 30
    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    move-object v0, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v1, v3}, Lcom/cloud/hisavana/sdk/h4;->b(Lcom/cloud/hisavana/sdk/h4;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    move-object v1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-object v0
.end method

.method public final b()V
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/m;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "default_ad_data"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget-object v1, Lc7/b;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Ljava/io/File;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    array-length v0, v0

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_2

    .line 67
    :cond_0
    move v0, v2

    .line 68
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    array-length v3, v1

    .line 75
    move v4, v2

    .line 76
    :goto_1
    if-ge v4, v3, :cond_2

    .line 77
    .line 78
    aget-object v5, v1, v4

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_1

    .line 85
    .line 86
    sget-object v6, Lcom/cloud/hisavana/sdk/c0;->a:Lcom/cloud/hisavana/sdk/c0;

    .line 87
    .line 88
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v6, v5}, Lcom/cloud/hisavana/sdk/c0;->g(Ljava/io/File;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_1

    .line 96
    .line 97
    invoke-direct {v6, v5}, Lcom/cloud/hisavana/sdk/c0;->h(Ljava/io/File;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_1

    .line 102
    .line 103
    add-int/lit8 v0, v0, -0x1

    .line 104
    .line 105
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    const/4 v1, 0x2

    .line 109
    if-gt v0, v1, :cond_3

    .line 110
    .line 111
    const/4 v2, 0x1

    .line 112
    :cond_3
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v1, "default_file_save_finished"

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Ll7/a;->o(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v2, "DefaultMaterialManager"

    .line 131
    .line 132
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_3
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/cloud/hisavana/net/HttpRequest;->a:Lcom/cloud/hisavana/net/HttpRequest;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/net/HttpRequest;->k(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v9, Lcom/cloud/hisavana/sdk/c0$b;

    .line 7
    .line 8
    invoke-direct {v9, p1}, Lcom/cloud/hisavana/sdk/c0$b;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v2, 0x3

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x4

    .line 18
    move-object v1, p1

    .line 19
    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-static {p1, v3, v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->c0(Ljava/lang/String;IIJ)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final f(Ljava/lang/String;Lcom/cloud/hisavana/sdk/h4;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/functions/Function0;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v4, p1

    .line 3
    .line 4
    move-object/from16 v3, p3

    .line 5
    .line 6
    move-object/from16 v6, p4

    .line 7
    .line 8
    const-string v1, "codeSeatId"

    .line 9
    .line 10
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "count"

    .line 14
    .line 15
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "callback"

    .line 19
    .line 20
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    invoke-interface/range {p4 .. p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/h4;->a()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/h4;->a()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/h4;->c()Lcom/cloud/hisavana/sdk/h4;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0, v4, v1, v3, v6}, Lcom/cloud/hisavana/sdk/c0;->f(Ljava/lang/String;Lcom/cloud/hisavana/sdk/h4;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    sget-object v1, Lcom/cloud/hisavana/sdk/a0;->a:Lcom/cloud/hisavana/sdk/a0;

    .line 48
    .line 49
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v11}, Lcom/cloud/hisavana/sdk/a0;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v11}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    invoke-virtual {v11}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v13, 0x2

    .line 66
    if-ne v1, v13, :cond_2

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    move v10, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move v10, v12

    .line 72
    :goto_0
    new-instance v14, Lcom/cloud/hisavana/sdk/c0$c;

    .line 73
    .line 74
    move-object v1, v14

    .line 75
    move-object v2, v8

    .line 76
    move-object/from16 v3, p3

    .line 77
    .line 78
    move-object/from16 v4, p1

    .line 79
    .line 80
    move-object/from16 v5, p2

    .line 81
    .line 82
    move-object/from16 v6, p4

    .line 83
    .line 84
    move-object v7, v11

    .line 85
    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/c0$c;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/cloud/hisavana/sdk/h4;Lkotlin/jvm/functions/Function0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 86
    .line 87
    .line 88
    const/4 v3, 0x3

    .line 89
    const/4 v5, 0x2

    .line 90
    const/4 v6, 0x1

    .line 91
    const/4 v7, 0x4

    .line 92
    move v4, v9

    .line 93
    move v8, v10

    .line 94
    move-object v9, v11

    .line 95
    move-object v10, v14

    .line 96
    invoke-static/range {v2 .. v10}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, v11}, Lcom/cloud/hisavana/sdk/c0;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v2, "getClickUrl(...)"

    .line 107
    .line 108
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v3, "ssplocalhost=true"

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    invoke-static {v1, v3, v12, v13, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    invoke-virtual {v11}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/c0;->e(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    return-void
.end method
