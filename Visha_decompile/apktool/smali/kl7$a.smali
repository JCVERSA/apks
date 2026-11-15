.class public Lkl7$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkl7;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lkl7;


# direct methods
.method public constructor <init>(Lkl7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lkl7$a;->k:Lkl7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget-object p1, p0, Lkl7$a;->k:Lkl7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "onSuccess Pid:"

    invoke-static {p1}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "Tid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.palm.id.log"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lkl7$a;->k:Lkl7;

    invoke-virtual {p1}, Lkl7;->b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lkl7$a;->k:Lkl7;

    invoke-virtual {p1}, Lkl7;->b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lxj;->q0(ILjava/lang/String;)V

    iget-object p1, p0, Lkl7$a;->k:Lkl7;

    invoke-virtual {p1}, Lkl7;->b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    iget-object p0, p0, Lkl7$a;->k:Lkl7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    if-eqz p0, :cond_2

    check-cast p0, Lcp7;

    invoke-interface {p0}, Lcp7;->B()V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    iget-object p2, p0, Lkl7$a;->k:Lkl7;

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lkl7$a;->k:Lkl7;

    invoke-virtual {p2}, Lkl7;->b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lkl7$a;->k:Lkl7;

    invoke-virtual {p0}, Lkl7;->b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    move-result-object p0

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    iget p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lxj;->q0(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lkl7$a;->k:Lkl7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lkl7$a;->k:Lkl7;

    invoke-virtual {p0}, Lkl7;->c()V

    return-void
.end method
