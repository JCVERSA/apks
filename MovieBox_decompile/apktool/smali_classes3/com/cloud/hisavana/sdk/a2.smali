.class public Lcom/cloud/hisavana/sdk/a2;
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
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/a2;->g:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a2;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    iput p2, p0, Lcom/cloud/hisavana/sdk/a2;->h:I

    .line 10
    .line 11
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/a2;->f:Lcom/cloud/hisavana/sdk/m3;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/a2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a2;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/a2;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/h0;->f(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/a2;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/a2;->j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/a2;->g:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a2;->f:Lcom/cloud/hisavana/sdk/m3;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/a2;->g:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-interface {v1, p1, v0}, Lcom/cloud/hisavana/sdk/m3;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/a2$b;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/a2$b;-><init>(Lcom/cloud/hisavana/sdk/a2;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a2;->s()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v1, 0x2

    .line 35
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {p2, p1, v1, v2, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_1
    return-void
.end method

.method private l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-lez v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/a2;->j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lcom/cloud/hisavana/sdk/a2$a;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/cloud/hisavana/sdk/a2$a;-><init>(Lcom/cloud/hisavana/sdk/a2;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x6

    .line 48
    invoke-static {v1, p1, v4, v0, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 49
    .line 50
    .line 51
    return v3

    .line 52
    :cond_2
    return v0
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/a2;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/a2;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/a2;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/h0;->b(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private o()V
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
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a2;->e:Ljava/util/concurrent/atomic/AtomicInteger;

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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a2;->e:Ljava/util/concurrent/atomic/AtomicInteger;

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
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a2;->q()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/a2;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/h0;->e(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/a2;->g:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a2;->f:Lcom/cloud/hisavana/sdk/m3;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a2;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/a2;->g:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-interface {v1, v2, v0}, Lcom/cloud/hisavana/sdk/m3;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/a2;->h:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a2;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/cloud/hisavana/sdk/i0;->a:Lcom/cloud/hisavana/sdk/i0;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/i0;->b(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method private s()V
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
    const-string v2, "loadVideo"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/p0;->a:Lcom/cloud/hisavana/sdk/common/util/p0$a;

    .line 13
    .line 14
    new-instance v1, Lcom/cloud/hisavana/sdk/a2$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/a2$c;-><init>(Lcom/cloud/hisavana/sdk/a2;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a2;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/p0$a;->c(Lcom/cloud/hisavana/sdk/common/util/p0$b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a2;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_SPLASH_MATERIAL_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/a2;->j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/a2;->g:Z

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
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/a2;->g:Z

    .line 18
    .line 19
    iget v1, p0, Lcom/cloud/hisavana/sdk/a2;->h:I

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v1, v2, :cond_4

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/util/b;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/a2;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a2;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 42
    .line 43
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/a2;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a2;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 52
    .line 53
    .line 54
    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a2;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 55
    .line 56
    invoke-direct {p0, v1, v0}, Lcom/cloud/hisavana/sdk/a2;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/h0;->a()V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/a2;->q()V

    .line 64
    .line 65
    .line 66
    return-void
.end method
