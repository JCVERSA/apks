.class public Lcom/cloud/hisavana/sdk/f;
.super Lbl4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/f$b;,
        Lcom/cloud/hisavana/sdk/f$c;
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;

.field public e:Lcom/cloud/hisavana/sdk/f$b;

.field public f:Z

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/cloud/hisavana/sdk/f$b;)V
    .locals 1

    invoke-direct {p0}, Lbl4;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/f;->f:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/f;->h:Z

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/f;->d:Ljava/util/List;

    iput p2, p0, Lcom/cloud/hisavana/sdk/f;->g:I

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/f;->e:Lcom/cloud/hisavana/sdk/f$b;

    return-void
.end method

.method public static synthetic g(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/f;->r(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic h(Lcom/cloud/hisavana/sdk/f;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/f;->j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public static synthetic i(Lcom/cloud/hisavana/sdk/f;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/f;->l(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/f;->f:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f;->e:Lcom/cloud/hisavana/sdk/f$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lbl4;->a:Landroid/os/Bundle;

    invoke-interface {v0, p1, p0}, Lcom/cloud/hisavana/sdk/f$b;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private k(Ljava/util/List;)V
    .locals 4

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "downloadMaterial start"

    const-string v2, "NativeLoadManager"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/f$a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/f$a;-><init>(Lcom/cloud/hisavana/sdk/f;Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move-object v1, p1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-nez p1, :cond_1

    new-instance v1, Lcom/cloud/hisavana/sdk/f$c;

    invoke-direct {v1, v2, v0}, Lcom/cloud/hisavana/sdk/f$c;-><init>(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;)V

    move-object p1, v1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/cloud/hisavana/sdk/f$c;

    invoke-direct {v3, v2, v0}, Lcom/cloud/hisavana/sdk/f$c;-><init>(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;)V

    invoke-static {v1, v3}, Lcom/cloud/hisavana/sdk/f$c;->c(Lcom/cloud/hisavana/sdk/f$c;Lcom/cloud/hisavana/sdk/f$c;)Lcom/cloud/hisavana/sdk/f$c;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/f$c;->b(Lcom/cloud/hisavana/sdk/f$c;)Lcom/cloud/hisavana/sdk/f$c;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f$c;->j(Lcom/cloud/hisavana/sdk/f$c;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string v0, "downloadMaterial ads is null"

    invoke-virtual {p1, v2, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_DOWNLOAD_MATERIAL_ADS_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/f;->j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public static synthetic m(Lcom/cloud/hisavana/sdk/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/f;->h:Z

    return p0
.end method

.method public static synthetic n(Lcom/cloud/hisavana/sdk/f;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/f;->p(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/cloud/hisavana/sdk/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/f;->h:Z

    return p1
.end method

.method public static synthetic q(Lcom/cloud/hisavana/sdk/f;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lbl4;->c(Z)V

    return-void
.end method

.method public static synthetic r(Ljava/util/List;)V
    .locals 1

    sget-object v0, Lfx8;->a:Lfx8;

    invoke-virtual {v0, p0}, Lfx8;->b(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final l(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/f;->f:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f;->e:Lcom/cloud/hisavana/sdk/f$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbl4;->a:Landroid/os/Bundle;

    invoke-interface {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/f$b;->b(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    :cond_0
    iget p0, p0, Lcom/cloud/hisavana/sdk/f;->g:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance p1, Lmk4;

    invoke-direct {p1, p2}, Lmk4;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_NATIVE_MATERIAL_DOWNLOAD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/f;->j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final p(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public s()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/f;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/f;->f:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f;->d:Ljava/util/List;

    invoke-static {v0}, Lx93;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/f;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/U0;->H(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/f;->g:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/f;->k(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lbl4;->a()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/f;->d:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/sdk/f;->l(Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_3
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_NATIVE_MATERIAL_DOWNLOAD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/f;->j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_1
    return-void
.end method
