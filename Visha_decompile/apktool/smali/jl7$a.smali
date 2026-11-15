.class public Ljl7$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljl7;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Ljl7;


# direct methods
.method public constructor <init>(Ljl7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Ljl7$a;->k:Ljl7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes;

    iget-object p1, p0, Ljl7$a;->k:Ljl7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Ljl7$a;->k:Ljl7;

    invoke-virtual {p1}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p1, p0, Ljl7$a;->k:Ljl7;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes;->tripartite:Ljava/util/ArrayList;

    iput-object p2, p1, Ljl7;->c:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object p1

    invoke-static {p1}, Lpa1;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ljl7$a;->k:Ljl7;

    iget-object p1, p1, Ljl7;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    :goto_0
    if-ltz p1, :cond_2

    iget-object p3, p0, Ljl7$a;->k:Ljl7;

    iget-object p3, p3, Ljl7;->c:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes$Tripartite;

    iget p3, p3, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes$Tripartite;->thirdType:I

    if-ne p3, p2, :cond_1

    iget-object p3, p0, Ljl7$a;->k:Ljl7;

    iget-object p3, p3, Ljl7;->c:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Ljl7$a;->k:Ljl7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lek7;

    invoke-interface {p0}, Lek7;->U()V

    :goto_1
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Ljl7$a;->k:Ljl7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ljl7$a;->k:Ljl7;

    invoke-virtual {p0}, Ljl7;->e()V

    return-void
.end method
