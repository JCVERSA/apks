.class public Lyr7$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyr7;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lyr7;


# direct methods
.method public constructor <init>(Lyr7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lyr7$a;->k:Lyr7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes;

    iget-object p1, p0, Lyr7$a;->k:Lyr7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyr7$a;->k:Lyr7;

    invoke-virtual {p1}, Lyr7;->b()Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes;->contacts:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lyr7$a;->k:Lyr7;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes;->contacts:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    iput-object p2, p1, Lyr7;->d:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    :cond_1
    iget-object p0, p0, Lyr7$a;->k:Lyr7;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lkq7;

    iget-object p0, p0, Lyr7;->d:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    invoke-interface {p1, p0}, Lkq7;->T(Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lyr7$a;->k:Lyr7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    iget-object p0, p0, Lyr7$a;->k:Lyr7;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lkq7;

    iget-object p0, p0, Lyr7;->d:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    invoke-interface {p1, p0}, Lkq7;->T(Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lyr7$a;->k:Lyr7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lyr7$a;->k:Lyr7;

    invoke-virtual {p0}, Lyr7;->d()V

    return-void
.end method
