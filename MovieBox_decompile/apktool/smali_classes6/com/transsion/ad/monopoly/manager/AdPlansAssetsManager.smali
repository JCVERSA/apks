.class public final Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;
.super Lcom/transsion/ad/monopoly/manager/c;
.source "source.java"


# static fields
.field public static final b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;Lcom/transsion/ad/monopoly/model/MbAdPlansDto;)Lcom/transsion/ad/monopoly/model/MbAdPlansDto;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->e(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;)Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->f(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;)Lcom/transsion/ad/monopoly/model/MbAdPlansDto;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getAdPlans()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    check-cast v0, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_7

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 30
    .line 31
    sget-object v2, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatar()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, ""

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    move-object v3, v4

    .line 42
    :cond_1
    invoke-direct {v2, v3}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdvertiserAvatarPath(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    check-cast v1, Ljava/lang/Iterable;

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_0

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const/4 v5, 0x1

    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    sget-object v6, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getUrl()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    if-nez v7, :cond_4

    .line 93
    .line 94
    move-object v7, v4

    .line 95
    :cond_4
    invoke-direct {v6, v7}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-nez v7, :cond_5

    .line 104
    .line 105
    invoke-virtual {v3, v6}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->setPath(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v5}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setDownloadMaterialSuccess(Z)V

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    sget-object v6, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    if-nez v7, :cond_6

    .line 124
    .line 125
    move-object v7, v4

    .line 126
    :cond_6
    invoke-direct {v6, v7}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-nez v7, :cond_3

    .line 135
    .line 136
    invoke-virtual {v3, v6}, Lcom/transsion/ad/monopoly/model/MbAdImage;->setPath(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v5}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setDownloadMaterialSuccess(Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_7
    return-object p1
.end method

.method private final f(Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getAdPlans()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 35
    .line 36
    sget-object v3, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a:Lcom/transsion/ad/monopoly/plan/AdPlansTransform;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getVersion()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->setVersion(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sget-object p1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    .line 54
    .line 55
    invoke-virtual {p1, v0, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->k(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-ne p1, p2, :cond_1

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p1
.end method

.method private final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/ad/a;->a:Lcom/transsion/ad/a;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/ad/a;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ".mineType"

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lci/f;->a:Lci/f;

    .line 34
    .line 35
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "getApp(...)"

    .line 40
    .line 41
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, p1, v0}, Lci/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    return-object p1
.end method


# virtual methods
.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method
