.class public Lcom/cloud/hisavana/sdk/a4;
.super Lcom/cloud/hisavana/sdk/h0;
.source "source.java"


# instance fields
.field private d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Lcom/cloud/hisavana/sdk/m3;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/m3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/h0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/a4;->g:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    iput p2, p0, Lcom/cloud/hisavana/sdk/a4;->h:I

    .line 10
    .line 11
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/a4;->f:Lcom/cloud/hisavana/sdk/m3;

    .line 12
    .line 13
    return-void
.end method

.method private g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/a4;->g:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4;->f:Lcom/cloud/hisavana/sdk/m3;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/m3;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "calculateDownloadCount imageCounter "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a4;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const-string v2, "null"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "SplashLoadManager"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-gtz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/h0;->d()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a4;->w()V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/J0;->M(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method private i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setCached(Ljava/lang/Boolean;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/cloud/hisavana/sdk/a4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a4;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/a4;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/h0;->e(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/a4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/a4;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/a4;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Lcom/cloud/hisavana/sdk/a4;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/a4;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/h0;->f(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lcom/cloud/hisavana/sdk/a4;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/h0;->b(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private s()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SplashLoadManager"

    .line 6
    .line 7
    const-string v2, "interstitial loadAdmAd"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4;->f:Lcom/cloud/hisavana/sdk/m3;

    .line 20
    .line 21
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_DOWNLOAD_NO_NETWORK:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/m3;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 30
    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-lez v1, :cond_3

    .line 67
    .line 68
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-lez v2, :cond_4

    .line 85
    .line 86
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    .line 88
    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 89
    .line 90
    .line 91
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/a4;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 104
    .line 105
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/a4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_2
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 114
    .line 115
    new-instance v2, Lcom/cloud/hisavana/sdk/a4$d;

    .line 116
    .line 117
    invoke-direct {v2, p0}, Lcom/cloud/hisavana/sdk/a4$d;-><init>(Lcom/cloud/hisavana/sdk/a4;)V

    .line 118
    .line 119
    .line 120
    const/4 v3, 0x6

    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-static {v0, v1, v3, v4, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/h0;->a()V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a4;->w()V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_0
    return-void

    .line 133
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4;->f:Lcom/cloud/hisavana/sdk/m3;

    .line 134
    .line 135
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 138
    .line 139
    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/m3;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method static synthetic t(Lcom/cloud/hisavana/sdk/a4;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/h0;->f(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private u()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SplashLoadManager"

    .line 6
    .line 7
    const-string v2, "interstitial loadNormalAd"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_4

    .line 26
    .line 27
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/a4;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-lez v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-lez v3, :cond_2

    .line 70
    .line 71
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/a4;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 87
    .line 88
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/a4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 97
    .line 98
    new-instance v3, Lcom/cloud/hisavana/sdk/a4$b;

    .line 99
    .line 100
    invoke-direct {v3, p0, v0}, Lcom/cloud/hisavana/sdk/a4$b;-><init>(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 101
    .line 102
    .line 103
    const/4 v4, 0x6

    .line 104
    const/4 v5, 0x0

    .line 105
    invoke-static {v1, v2, v4, v5, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    const/16 v2, 0x8

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    const/4 v2, 0x2

    .line 122
    :goto_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    new-instance v4, Lcom/cloud/hisavana/sdk/a4$c;

    .line 127
    .line 128
    invoke-direct {v4, p0, v0}, Lcom/cloud/hisavana/sdk/a4$c;-><init>(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v0, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADM_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 136
    .line 137
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/a4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    return-void
.end method

.method private v()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SplashLoadManager"

    .line 6
    .line 7
    const-string v2, "interstitial loadVastAd"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_INTERSTITIAL_MATERIAL_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/a4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/p0;->a:Lcom/cloud/hisavana/sdk/common/util/p0$a;

    .line 23
    .line 24
    new-instance v2, Lcom/cloud/hisavana/sdk/a4$a;

    .line 25
    .line 26
    invoke-direct {v2, p0, v0}, Lcom/cloud/hisavana/sdk/a4$a;-><init>(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Lcom/cloud/hisavana/sdk/common/util/p0$a;->c(Lcom/cloud/hisavana/sdk/common/util/p0$b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/a4;->g:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4;->f:Lcom/cloud/hisavana/sdk/m3;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/m3;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/a4;->h:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/cloud/hisavana/sdk/i0;->a:Lcom/cloud/hisavana/sdk/i0;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/i0;->b(Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_INTERSTITIAL_MATERIAL_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/a4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/a4;->g:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/a4;->g:Z

    .line 18
    .line 19
    iget v1, p0, Lcom/cloud/hisavana/sdk/a4;->h:I

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v1, v2, :cond_5

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a4;->v()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a4;->u()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a4;->s()V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/h0;->a()V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a4;->w()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
