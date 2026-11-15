.class public LOppOOO0/OppOOp0$c;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOOO0/OppOOp0;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:LOppOOO0/OppOOp0;


# direct methods
.method public constructor <init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, LOppOOO0/OppOOp0$c;->k:LOppOOO0/OppOOp0;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/AddressesListRes;

    iget-object p1, p0, LOppOOO0/OppOOp0$c;->k:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LOppOOO0/OppOOp0$c;->k:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    if-eqz p2, :cond_1

    iget-object p0, p0, LOppOOO0/OppOOp0$c;->k:LOppOOO0/OppOOp0;

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/AddressesListRes;->addresses:Ljava/util/ArrayList;

    iput-object p1, p0, LOppOOO0/OppOOp0;->j:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ljq7;

    invoke-interface {p0, p1}, Ljq7;->S(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LOppOOO0/OppOOp0$c;->k:LOppOOO0/OppOOp0;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, LOppOOO0/OppOOp0$c;->k:LOppOOO0/OppOOp0;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->l()V

    return-void
.end method
