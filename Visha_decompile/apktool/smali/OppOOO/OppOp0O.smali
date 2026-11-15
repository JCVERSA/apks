.class public LOppOOO/OppOp0O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OppO00p:Lcom/transsion/xuanniao/account/center/view/n;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/n;)V
    .locals 0

    iput-object p1, p0, LOppOOO/OppOp0O;->OppO00p:Lcom/transsion/xuanniao/account/center/view/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, LOppOOO/OppOp0O;->OppO00p:Lcom/transsion/xuanniao/account/center/view/n;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/n;->a:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    sget v0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->k:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    const-string v1, "CI"

    invoke-virtual {v0, v1}, Lxj;->a0(Ljava/lang/String;)V

    new-instance v0, Lol7;

    invoke-direct {v0}, Lol7;-><init>()V

    invoke-virtual {v0, p0}, Lol7;->c(Landroid/app/Activity;)V

    new-instance v1, Lgs7;

    invoke-direct {v1, p0, v0}, Lgs7;-><init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;Lol7;)V

    iput-object v1, v0, Lol7;->b:Lol7$i;

    return-void
.end method
