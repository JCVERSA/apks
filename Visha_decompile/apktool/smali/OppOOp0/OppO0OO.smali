.class public LOppOOp0/OppO0OO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OppO00p:LOppOOp0/OppO0O0;


# direct methods
.method public constructor <init>(LOppOOp0/OppO0O0;)V
    .locals 0

    iput-object p1, p0, LOppOOp0/OppO0OO;->OppO00p:LOppOOp0/OppO0O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LOppOOp0/OppO0OO;->OppO00p:LOppOOp0/OppO0O0;

    iget-object v0, v0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    invoke-static {v0}, Lvo7;->a(Landroid/content/Context;)V

    iget-object v0, p0, LOppOOp0/OppO0OO;->OppO00p:LOppOOp0/OppO0O0;

    iget-object v0, v0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    const-string v0, " postLogin -----> 1"

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LOppOOp0/OppO0OO;->OppO00p:LOppOOp0/OppO0O0;

    iget-object v0, v0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    invoke-static {v0}, Ll41;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, LOppOOp0/OppO0OO;->OppO00p:LOppOOp0/OppO0O0;

    iget-object p0, p0, LOppOOp0/OppO0O0;->e:Ljava/lang/ref/SoftReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, " postLogin -----> 2"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    invoke-direct {p0, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
