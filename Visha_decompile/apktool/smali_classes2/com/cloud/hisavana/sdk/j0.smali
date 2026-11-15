.class public Lcom/cloud/hisavana/sdk/j0;
.super Lcom/cloud/hisavana/sdk/z;
.source "SourceFile"


# instance fields
.field public e:Ljava/util/List;

.field public f:Lied;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/z;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/j0;)Lied;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/j0;->f:Lied;

    return-object p0
.end method

.method private h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/hisavana/sdk/z;->b:I

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/z$a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/z;->e()V

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/cloud/hisavana/sdk/j0;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/j0;->h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public static synthetic j(Lcom/cloud/hisavana/sdk/j0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/j0;->k(Ljava/util/List;)V

    return-void
.end method

.method private k(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/hisavana/sdk/z;->b:I

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z;->a:Lcom/cloud/hisavana/sdk/z$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/z$a;->b(Ljava/util/List;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/z;->e()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_MATERIAL_DOWNLOAD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/j0;->h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method


# virtual methods
.method public a(Lied;)V
    .locals 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/hisavana/sdk/z;->b:I

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/j0;->f:Lied;

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string/jumbo v1, "ssp"

    const-string/jumbo v2, "start execute getAdCreativies."

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/h0;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/h0;-><init>()V

    new-instance v1, Lcom/cloud/hisavana/sdk/j0$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/j0$a;-><init>(Lcom/cloud/hisavana/sdk/j0;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/h0;->d(Lcom/cloud/hisavana/sdk/h0$g;)V

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/j0;->f:Lied;

    sget-object v3, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SUCCESS:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILied;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/j0;->e:Ljava/util/List;

    invoke-virtual {p1}, Lied;->e()I

    move-result p1

    iget p0, p0, Lcom/cloud/hisavana/sdk/z;->d:I

    invoke-virtual {v0, v1, p1, v5, p0}, Lcom/cloud/hisavana/sdk/h0;->g(Ljava/util/List;III)V

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/j0;->e:Ljava/util/List;

    return-void
.end method
