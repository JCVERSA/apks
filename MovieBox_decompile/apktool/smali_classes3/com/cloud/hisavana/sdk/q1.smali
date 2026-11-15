.class public final Lcom/cloud/hisavana/sdk/q1;
.super Lcom/cloud/hisavana/sdk/h0;
.source "source.java"


# instance fields
.field private d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private e:I

.field private f:Lcom/cloud/hisavana/sdk/m3;

.field private final g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/m3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/h0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q1;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 5
    .line 6
    iput p2, p0, Lcom/cloud/hisavana/sdk/q1;->e:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/q1;->f:Lcom/cloud/hisavana/sdk/m3;

    .line 9
    .line 10
    const-string p1, "Rewarded"

    .line 11
    .line 12
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q1;->g:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic g(Lcom/cloud/hisavana/sdk/q1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/q1;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/cloud/hisavana/sdk/q1;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/h0;->b(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/cloud/hisavana/sdk/q1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/q1;->m(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcom/cloud/hisavana/sdk/q1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/q1;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lcom/cloud/hisavana/sdk/q1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/q1;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lcom/cloud/hisavana/sdk/q1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/q1;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q1;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q1;->f:Lcom/cloud/hisavana/sdk/m3;

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

.method private final n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "imageCounter"

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/q1;->g:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "calcDownloadCount imageCounter "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/q1;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v5, v1

    .line 34
    :cond_0
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v0, v3, v4}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q1;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object v1, v0

    .line 57
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-gtz v0, :cond_3

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/q1;->y()V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/J0;->M(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method private final o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ZIP_MATERIAL_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 4
    .line 5
    const-string p2, "ERROR_ZIP_MATERIAL_TAKE_FAILED"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/q1;->m(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/z;->a:Lcom/cloud/hisavana/sdk/common/util/z;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string v1, "getFilePath(...)"

    .line 21
    .line 22
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/cloud/hisavana/sdk/q1$b;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/q1$b;-><init>(Lcom/cloud/hisavana/sdk/q1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/common/util/z;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/util/n;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setCached(Ljava/lang/Boolean;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private final q(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/16 p3, 0x8

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p3, 0x2

    .line 11
    :goto_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/cloud/hisavana/sdk/q1$a;

    .line 16
    .line 17
    invoke-direct {v1, p3, p0, p1, p2}, Lcom/cloud/hisavana/sdk/q1$a;-><init>(ILcom/cloud/hisavana/sdk/q1;ZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p2, p3, p1, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static final synthetic r(Lcom/cloud/hisavana/sdk/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/q1;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic s(Lcom/cloud/hisavana/sdk/q1;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/h0;->e(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final t(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "getStoreFlag(...)"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gtz v1, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q1;->g:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "Store flag is not valid, skipping download"

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/q1;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    const-string v1, "imageCounter"

    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "getStoreImageurl(...)"

    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x6

    .line 71
    invoke-direct {p0, v0, p1, v1}, Lcom/cloud/hisavana/sdk/q1;->q(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_4
    :goto_0
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 76
    .line 77
    const-string v0, "ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY"

    .line 78
    .line 79
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/q1;->m(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static final synthetic v(Lcom/cloud/hisavana/sdk/q1;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/h0;->f(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q1;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/q1;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/q1;->t(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "getAdImgUrl(...)"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {p0, v1, v0, v2}, Lcom/cloud/hisavana/sdk/q1;->q(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADM_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 41
    .line 42
    const-string v1, "ERROR_ADM_URL_IS_EMPTY"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/q1;->m(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    :goto_1
    if-nez v0, :cond_2

    .line 55
    .line 56
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 57
    .line 58
    const-string v1, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL"

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/q1;->m(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method private final x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q1;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 6
    .line 7
    const-string v1, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/q1;->m(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/p0;->a:Lcom/cloud/hisavana/sdk/common/util/p0$a;

    .line 17
    .line 18
    new-instance v2, Lcom/cloud/hisavana/sdk/q1$c;

    .line 19
    .line 20
    invoke-direct {v2, p0, v0}, Lcom/cloud/hisavana/sdk/q1$c;-><init>(Lcom/cloud/hisavana/sdk/q1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, v0}, Lcom/cloud/hisavana/sdk/common/util/p0$a;->c(Lcom/cloud/hisavana/sdk/common/util/p0$b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final y()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q1;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q1;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/q1;->f:Lcom/cloud/hisavana/sdk/m3;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-interface {v1, v0, v2}, Lcom/cloud/hisavana/sdk/m3;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/q1;->e:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q1;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lcom/cloud/hisavana/sdk/i0;->a:Lcom/cloud/hisavana/sdk/i0;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/i0;->b(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    return-void
.end method


# virtual methods
.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q1;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 6
    .line 7
    const-string v1, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/q1;->m(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/q1;->h:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/q1;->h:Z

    .line 23
    .line 24
    iget v2, p0, Lcom/cloud/hisavana/sdk/q1;->e:I

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq v2, v3, :cond_4

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    if-eq v2, v3, :cond_4

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne v1, v0, :cond_2

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/q1;->x()V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q1;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 v0, 0x0

    .line 52
    :goto_0
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/q1;->w()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/h0;->a()V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/q1;->y()V

    .line 62
    .line 63
    .line 64
    :cond_5
    :goto_1
    return-void
.end method
