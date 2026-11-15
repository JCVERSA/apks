.class public Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0Op$OppO0O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OppO00p:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0Op$OppO0O0;->OppO00p:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0Op$OppO0O0;->OppO00p:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;->a:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->I()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$OppO0Op$OppO0O0;->OppO00p:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity$d;->a:Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->f:Lkl7;

    iget-boolean v1, v0, Lkl7;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/ClearDataActivity;->B()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkl7;->c()V

    :goto_0
    return-void
.end method
