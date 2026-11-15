.class public Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/transsion/palmsdk/PalmAuthParam;

.field public final synthetic OooO0O0:Lcom/transsion/palmsdk/PalmID$b;

.field public final synthetic OooO0OO:Landroid/os/Bundle;

.field public final synthetic OooO0Oo:Lcom/transsion/palmsdk/PalmDefaultImpl;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/PalmDefaultImpl;Lcom/transsion/palmsdk/PalmAuthParam;Lcom/transsion/palmsdk/PalmID$b;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO;->OooO0Oo:Lcom/transsion/palmsdk/PalmDefaultImpl;

    iput-object p2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO;->OooO00o:Lcom/transsion/palmsdk/PalmAuthParam;

    iput-object p3, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO;->OooO0O0:Lcom/transsion/palmsdk/PalmID$b;

    iput-object p4, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO;->OooO0OO:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO;->OooO0Oo:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/palmsdk/account/XNManager;->j(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Lcom/transsion/palmsdk/data/PalmAuthRequest;

    iget-object v2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO;->OooO00o:Lcom/transsion/palmsdk/PalmAuthParam;

    iget-object v3, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO;->OooO0Oo:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v3}, Lcom/transsion/palmsdk/PalmDefaultImpl;->u(Lcom/transsion/palmsdk/PalmDefaultImpl;)Z

    move-result v3

    new-instance v4, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO$OooO00o;

    invoke-direct {v4, p0}, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO$OooO00o;-><init>(Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/palmsdk/data/PalmAuthRequest;-><init>(Lcom/transsion/palmsdk/PalmAuthParam;ZLcom/transsion/palmsdk/auth/OooO00o;)V

    iget-object v2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO;->OooO0Oo:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v2}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Law7;->c(Landroid/content/Context;)Law7;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setSilentMode(Z)V

    invoke-virtual {v2, v1}, Law7;->d(Lcom/transsion/palmsdk/data/PalmAuthRequest;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0OO;->OooO0O0:Lcom/transsion/palmsdk/PalmID$b;

    if-eqz p0, :cond_1

    const v0, 0x9ca9

    const-string v1, "palm id not login"

    invoke-interface {p0, v0, v1}, Lcom/transsion/palmsdk/PalmID$b;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
