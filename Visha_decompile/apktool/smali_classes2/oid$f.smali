.class public Loid$f;
.super Lcom/cloud/hisavana/sdk/common/tranmeasure/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Loid;)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Loid$f;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0, p1}, Loid$f;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/a;->a(Ljava/lang/Object;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "onViewImpressed --> view has impression"

    const-string/jumbo v2, "ssp_measure"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Loid$f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loid;

    if-eqz p0, :cond_1

    invoke-static {p0}, Loid;->r(Loid;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Loid;->u(Loid;)Lcom/cloud/hisavana/sdk/q1;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {p0, v1}, Loid;->s(Loid;Z)Z

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v1, "mSplashAd.adListener().onAdShow()"

    invoke-virtual {p0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->Q()V

    sget-object p0, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_1
    :goto_0
    return-void
.end method
