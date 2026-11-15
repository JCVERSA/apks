.class public Ljl7$c;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljl7;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:I

.field public final synthetic l:Landroid/content/Context;

.field public final synthetic m:Ljl7;


# direct methods
.method public constructor <init>(Ljl7;Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ljl7$c;->m:Ljl7;

    iput p4, p0, Ljl7$c;->k:I

    iput-object p5, p0, Ljl7$c;->l:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/ApplyTokenRes;

    iget-object p1, p0, Ljl7$c;->m:Ljl7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljl7$c;->m:Ljl7;

    invoke-virtual {p1}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    if-eqz p2, :cond_1

    iget-object p1, p0, Ljl7$c;->m:Ljl7;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lek7;

    iget p0, p0, Ljl7$c;->k:I

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/model/data/ApplyTokenRes;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lek7;->D(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ljl7$c;->m:Ljl7;

    invoke-virtual {p1}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object p1

    iget-object p0, p0, Ljl7$c;->l:Landroid/content/Context;

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljl7$c;->m:Ljl7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Ljl7$c;->m:Ljl7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljl7$c;->m:Ljl7;

    iget p0, p0, Ljl7$c;->k:I

    invoke-virtual {v0, p0}, Ljl7;->b(I)V

    return-void
.end method
