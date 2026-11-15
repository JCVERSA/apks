.class public Ltgd;
.super Lbl4;
.source "SourceFile"


# instance fields
.field public d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public f:Lwmd;

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILwmd;)V
    .locals 1

    invoke-direct {p0}, Lbl4;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltgd;->g:Z

    iput-object p1, p0, Ltgd;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput p2, p0, Ltgd;->h:I

    iput-object p3, p0, Ltgd;->f:Lwmd;

    return-void
.end method

.method public static synthetic g(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Ltgd;->m(Ljava/util/List;)V

    return-void
.end method

.method private h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltgd;->g:Z

    iget-object v1, p0, Ltgd;->f:Lwmd;

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Ltgd;->g:Z

    iget-object p0, p0, Lbl4;->a:Landroid/os/Bundle;

    invoke-interface {v1, p1, p0}, Lwmd;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static synthetic j(Ltgd;)V
    .locals 0

    invoke-direct {p0}, Ltgd;->q()V

    return-void
.end method

.method public static synthetic k(Ltgd;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lbl4;->f(I)V

    return-void
.end method

.method public static synthetic l(Ltgd;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Ltgd;->h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method private static synthetic m(Ljava/util/List;)V
    .locals 1

    sget-object v0, Lfx8;->a:Lfx8;

    invoke-virtual {v0, p0}, Lfx8;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o(Ltgd;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Ltgd;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method public static synthetic p(Ltgd;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lbl4;->b(I)V

    return-void
.end method

.method private q()V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateDownloadCount imageCounter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltgd;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplashLoadManager"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ltgd;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-direct {p0}, Ltgd;->s()V

    :cond_1
    return-void
.end method

.method public static synthetic r(Ltgd;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lbl4;->e(I)V

    return-void
.end method

.method private s()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltgd;->g:Z

    iget-object v1, p0, Ltgd;->f:Lwmd;

    if-eqz v1, :cond_0

    iget-object v2, p0, Ltgd;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Ltgd;->g:Z

    iget-object v0, p0, Lbl4;->a:Landroid/os/Bundle;

    invoke-interface {v1, v2, v0}, Lwmd;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Ltgd;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Ltgd;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lsgd;

    invoke-direct {v1, v0}, Lsgd;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private u()V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "SplashLoadManager"

    const-string v2, "loadVideo"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lgob;->a:Lgob$a;

    new-instance v1, Ltgd$c;

    invoke-direct {v1, p0}, Ltgd$c;-><init>(Ltgd;)V

    iget-object p0, p0, Ltgd;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1, p0}, Lgob$a;->c(Lgob$b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method


# virtual methods
.method public final i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ltgd$b;

    invoke-direct {v0, p0, p1}, Ltgd$b;-><init>(Ltgd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Ltgd;->u()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v1

    invoke-static {p2, p1, p0, v1, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Ltgd;->h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return v3

    :cond_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltgd$a;

    invoke-direct {v2, p0}, Ltgd$a;-><init>(Ltgd;)V

    const/4 p0, 0x6

    invoke-static {v1, p1, p0, v0, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return v3

    :cond_2
    return v0
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Ltgd;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_SPLASH_MATERIAL_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Ltgd;->h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Ltgd;->g:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltgd;->g:Z

    iget v1, p0, Ltgd;->h:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lt6;->a:Lt6;

    invoke-virtual {v1, v0}, Lt6;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Ltgd;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Ltgd;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0, v1}, Ltgd;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ltgd;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_3
    iget-object v1, p0, Ltgd;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0, v1, v0}, Ltgd;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lbl4;->a()V

    invoke-direct {p0}, Ltgd;->s()V

    return-void
.end method
