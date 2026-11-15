.class public Lkl7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

.field public c:Lyo7;

.field public d:Ljava/util/ArrayList;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    new-instance v0, Lyo7;

    invoke-direct {v0}, Lyo7;-><init>()V

    iput-object v0, p0, Lkl7;->c:Lyo7;

    return-void
.end method


# virtual methods
.method public final b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    if-eqz p0, :cond_0

    check-cast p0, Lcp7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public c()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lkl7;->b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    move-result-object v0

    invoke-virtual {p0}, Lkl7;->b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logout Pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Tid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkl7;->c:Lyo7;

    invoke-virtual {p0}, Lkl7;->b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    move-result-object v1

    new-instance v2, Lkl7$a;

    invoke-virtual {p0}, Lkl7;->b()Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-direct {v2, p0, v3, v4}, Lkl7$a;-><init>(Lkl7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lyo7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    return-void
.end method
