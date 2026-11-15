.class public Ljl7$b;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljl7;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:I

.field public final synthetic l:Ljl7;


# direct methods
.method public constructor <init>(Ljl7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 0

    iput-object p1, p0, Ljl7$b;->l:Ljl7;

    iput p5, p0, Ljl7$b;->k:I

    invoke-direct {p0, p2, p3, p4}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 3

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget-object p1, p0, Ljl7$b;->l:Ljl7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Ljl7$b;->l:Ljl7;

    invoke-virtual {p1}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget p2, p0, Ljl7$b;->k:I

    invoke-static {p2}, Lsm7;->c(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v2, v1}, Lxj;->C(ILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Ljl7$b;->l:Ljl7;

    invoke-virtual {p1}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p1, p0, Ljl7$b;->l:Ljl7;

    iput-boolean v2, p1, Ljl7;->g:Z

    iget-object p1, p1, Ljl7;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes$Tripartite;

    iget p2, p2, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes$Tripartite;->thirdType:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Ljl7$b;->l:Ljl7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lek7;

    invoke-interface {p0}, Lek7;->U()V

    :goto_1
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    iget-object p2, p0, Ljl7$b;->l:Ljl7;

    invoke-virtual {p2}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object p2

    invoke-static {p2}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p2

    iget p0, p0, Ljl7$b;->k:I

    invoke-static {p0}, Lsm7;->c(I)Ljava/lang/String;

    move-result-object p0

    iget p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0, v0, p1}, Lxj;->C(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Ljl7$b;->l:Ljl7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljl7$b;->l:Ljl7;

    iget p0, p0, Ljl7$b;->k:I

    invoke-virtual {v0, p0}, Ljl7;->d(I)V

    return-void
.end method
