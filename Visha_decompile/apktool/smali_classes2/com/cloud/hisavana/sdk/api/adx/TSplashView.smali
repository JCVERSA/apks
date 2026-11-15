.class public Lcom/cloud/hisavana/sdk/api/adx/TSplashView;
.super Lcom/cloud/hisavana/sdk/api/adx/ViewApi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/api/adx/TSplashView$a;
    }
.end annotation


# instance fields
.field public o:Landroid/widget/RelativeLayout;

.field public p:Landroid/view/View;

.field public q:Ljf7;

.field public r:Landroid/content/Context;

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->t:Z

    .line 4
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->u:Z

    .line 5
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->r:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->t:Z

    .line 8
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->u:Z

    .line 9
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->r:Landroid/content/Context;

    return-void
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/api/adx/TSplashView;)Ljf7;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->q:Ljf7;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->e()V

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->p:Landroid/view/View;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->o:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public final e()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public getAdType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public loadAd()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->r:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->s:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->u:Z

    invoke-static {v0, v1, v2}, Lr6;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lied$b;

    invoke-direct {v0}, Lied$b;-><init>()V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->getAdType()I

    move-result v1

    invoke-virtual {v0, v1}, Lied$b;->i(I)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lied$b;->e(Ljava/lang/String;)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->d:Z

    invoke-virtual {v0, v1}, Lied$b;->s(Z)Lied$b;

    move-result-object v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->e:I

    invoke-virtual {v0, v1}, Lied$b;->m(I)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->f:Z

    invoke-virtual {v0, v1}, Lied$b;->k(Z)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Ld29;

    invoke-virtual {v0, v1}, Lied$b;->c(Ld29;)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lied$b;->j(Ljava/lang/String;)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->h:Z

    invoke-virtual {v0, v1}, Lied$b;->p(Z)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->i:Z

    invoke-virtual {v0, v1}, Lied$b;->w(Z)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->j:Lw6;

    invoke-virtual {v0, v1}, Lied$b;->b(Lw6;)Lied$b;

    move-result-object v0

    invoke-virtual {v0}, Lied$b;->g()Lied;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/q1;

    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/q1;-><init>(Lied;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView$a;-><init>(Lcom/cloud/hisavana/sdk/api/adx/TSplashView;)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public setLiteInit(Ljava/lang/String;Z)Lcom/cloud/hisavana/sdk/api/adx/TSplashView;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->t:Z

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->s:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->u:Z

    return-object p0
.end method

.method public setLogoLayout(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->p:Landroid/view/View;

    return-void
.end method

.method public setLogoLayoutHeightRatio(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->v:Ljava/lang/Float;

    return-void
.end method

.method public setSkipListener(Ljf7;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->q:Ljf7;

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/q1;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lied;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lied;->f(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->e()V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->o:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/q1;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q1;->n0(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/q1;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->v:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q1;->j0(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/q1;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q1;->q0(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:Landroidx/collection/ArraySet;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSplashView show error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ssp"

    invoke-virtual {v1, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/q1;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->r:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/q1;->l0(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
