.class public final Ln7d;
.super Lbl4;
.source "SourceFile"


# instance fields
.field public d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public e:I

.field public f:Lwmd;

.field public final g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILwmd;)V
    .locals 0

    invoke-direct {p0}, Lbl4;-><init>()V

    iput-object p1, p0, Ln7d;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput p2, p0, Ln7d;->e:I

    iput-object p3, p0, Ln7d;->f:Lwmd;

    const-string p1, "Rewarded"

    iput-object p1, p0, Ln7d;->g:Ljava/lang/String;

    return-void
.end method

.method private final A()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln7d;->h:Z

    iget-object v0, p0, Ln7d;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ln7d;->f:Lwmd;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lbl4;->a:Landroid/os/Bundle;

    invoke-interface {v1, v0, v2}, Lwmd;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Ln7d;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Ln7d;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lm7d;

    invoke-direct {v1, p0}, Lm7d;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public static synthetic g(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Ln7d;->s(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic h(Ln7d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln7d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic i(Ln7d;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lbl4;->b(I)V

    return-void
.end method

.method public static final synthetic j(Ln7d;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Ln7d;->n(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public static final synthetic k(Ln7d;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Ln7d;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static final synthetic l(Ln7d;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln7d;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    return-void
.end method

.method public static final synthetic m(Ln7d;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln7d;->q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    return-void
.end method

.method private final n(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln7d;->h:Z

    iget-object v0, p0, Ln7d;->f:Lwmd;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lbl4;->a:Landroid/os/Bundle;

    invoke-interface {v0, p1, p0}, Lwmd;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private final o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 6

    invoke-static {}, Likd;->c()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "imageCounter"

    if-eqz v0, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v3, p0, Ln7d;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcDownloadCount imageCounter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ln7d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v5, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v5, v1

    :cond_0
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ln7d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_2

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-direct {p0}, Ln7d;->A()V

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/U0;->N(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_3
    return-void
.end method

.method private static final s(Ljava/util/List;)V
    .locals 1

    const-string v0, "$temp"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lfx8;->a:Lfx8;

    invoke-virtual {v0, p0}, Lfx8;->b(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic t(Ln7d;)V
    .locals 0

    invoke-direct {p0}, Ln7d;->A()V

    return-void
.end method

.method public static final synthetic u(Ln7d;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lbl4;->e(I)V

    return-void
.end method

.method public static final synthetic x(Ln7d;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lbl4;->f(I)V

    return-void
.end method

.method private final y()V
    .locals 3

    iget-object v0, p0, Ln7d;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Ln7d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ln7d;->v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAdImgUrl(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Ln7d;->r(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADM_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v1, "ERROR_ADM_URL_IS_EMPTY"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ln7d;->n(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_0
    sget-object v0, Lzfb;->a:Lzfb;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v1, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ln7d;->n(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_2
    return-void
.end method

.method private final z()V
    .locals 3

    iget-object v0, p0, Ln7d;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v1, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ln7d;->n(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_0
    sget-object v1, Lgob;->a:Lgob$a;

    new-instance v2, Ln7d$c;

    invoke-direct {v2, p0, v0}, Ln7d$c;-><init>(Ln7d;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v1, v2, v0}, Lgob$a;->c(Lgob$b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method


# virtual methods
.method public final p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ZIP_MATERIAL_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string p2, "ERROR_ZIP_MATERIAL_TAKE_FAILED"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ln7d;->n(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_0
    sget-object v0, Ld45;->a:Ld45;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p2

    const-string v1, "getFilePath(...)"

    invoke-static {p2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ln7d$b;

    invoke-direct {v1, p0, p1}, Ln7d$b;-><init>(Ln7d;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v0, p1, p2, v1}, Ld45;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lh24;)V

    return-void
.end method

.method public final q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setCached(Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method public final r(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ln7d$a;

    invoke-direct {v1, p3, p0, p1, p2}, Ln7d$a;-><init>(ILn7d;ZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v0, p2, p3, p1, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method

.method public final v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getStoreFlag(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object p0, p0, Ln7d;->g:Ljava/lang/String;

    const-string v0, "Store flag is not valid, skipping download"

    invoke-virtual {p1, p0, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ln7d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_3

    const-string v1, "imageCounter"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStoreImageurl(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v0, p1, v1}, Ln7d;->r(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void

    :cond_4
    :goto_0
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v0, "ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ln7d;->n(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public final w()V
    .locals 4

    iget-object v0, p0, Ln7d;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v1, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ln7d;->n(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Ln7d;->h:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ln7d;->h:Z

    iget v2, p0, Ln7d;->e:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Ln7d;->z()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ln7d;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    invoke-direct {p0}, Ln7d;->y()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lbl4;->a()V

    invoke-direct {p0}, Ln7d;->A()V

    :cond_5
    :goto_1
    return-void
.end method
