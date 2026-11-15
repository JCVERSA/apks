.class public Loid$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loid;->L(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loid;


# direct methods
.method public constructor <init>(Loid;)V
    .locals 0

    iput-object p1, p0, Loid$a;->a:Loid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interactiveEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplashImage"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Loid$a;->a:Loid;

    invoke-static {v0, p1}, Loid;->n(Loid;Ljava/lang/String;)V

    iget-object p1, p0, Loid$a;->a:Loid;

    invoke-static {p1}, Loid;->u(Loid;)Lcom/cloud/hisavana/sdk/q1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Loid$a;->a:Loid;

    invoke-static {p0}, Loid;->u(Loid;)Lcom/cloud/hisavana/sdk/q1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q1;->J()Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->cancel()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->changeFinishMode()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "SplashImage"

    const-string v2, "handleClick "

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Loid$a;->a:Loid;

    invoke-static {p0}, Loid;->F(Loid;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    move-result-object v0

    invoke-static {p0, v0}, Loid;->l(Loid;Landroid/view/View;)V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "SplashImage"

    const-string/jumbo v2, "timeoutShutdown "

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Loid$a;->a:Loid;

    invoke-static {v0}, Loid;->u(Loid;)Lcom/cloud/hisavana/sdk/q1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Loid$a;->a:Loid;

    invoke-static {p0}, Loid;->u(Loid;)Lcom/cloud/hisavana/sdk/q1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q1;->x0()V

    :cond_0
    return-void
.end method
