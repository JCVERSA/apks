.class public Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;
.super Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/palmsdk/auth/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO0O0:Lcom/transsion/palmsdk/auth/OooO0o;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/auth/OooO0o;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0o;

    invoke-direct {p0}, Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0o;

    iget-object v1, v0, Lcom/transsion/palmsdk/auth/OooO0o;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/palmsdk/auth/OooO0o;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    iget-object v1, v0, Lcom/transsion/palmsdk/auth/OooO0o;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const-class v0, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "logged_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0o;

    iget-object v1, v1, Lcom/transsion/palmsdk/auth/OooO0o;->c:Landroid/content/Context;

    invoke-static {v1}, Lmj7;->a(Landroid/content/Context;)Lmj7;

    move-result-object v1

    iget-object v1, v1, Lmj7;->a:Lhyperion/hap/IStoreManager;

    const-string v2, "linked_id"

    invoke-interface {v1, v2}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setResult linkedId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " loggedId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0o;

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->f:Lcom/transsion/palmsdk/PalmID$e;

    if-eqz p0, :cond_6

    const/16 p1, -0x68

    invoke-interface {p0, p1}, Lcom/transsion/palmsdk/PalmID$e;->a(I)V

    goto :goto_2

    :cond_2
    :goto_0
    const-string v0, "user_info"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0o;

    iget-object v1, v0, Lcom/transsion/palmsdk/auth/OooO0o;->f:Lcom/transsion/palmsdk/PalmID$e;

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/transsion/palmsdk/auth/OooO0o;->g:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x64

    goto :goto_1

    :cond_3
    const/16 v0, 0x65

    :goto_1
    invoke-interface {v1, v0, p1}, Lcom/transsion/palmsdk/PalmID$e;->b(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0o;

    iget-boolean v1, v0, Lcom/transsion/palmsdk/auth/OooO0o;->g:Z

    if-nez v1, :cond_6

    iget-object v0, v0, Lcom/transsion/palmsdk/auth/OooO0o;->c:Landroid/content/Context;

    invoke-static {v0}, Lmj7;->a(Landroid/content/Context;)Lmj7;

    move-result-object v0

    iget-object v0, v0, Lmj7;->a:Lhyperion/hap/IStoreManager;

    const-string v1, "linked_pkg"

    invoke-interface {v0, v1}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0o;

    iget-object v1, v1, Lcom/transsion/palmsdk/auth/OooO0o;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/palmsdk/PalmID;->l(Landroid/content/Context;)Lcom/transsion/palmsdk/PalmID;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/palmsdk/PalmDefaultImpl;

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0o;

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->d:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    check-cast v1, Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-virtual {v1, p1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->z(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v1, -0x6d

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0o;

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->f:Lcom/transsion/palmsdk/PalmID$e;

    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Lcom/transsion/palmsdk/PalmID$e;->a(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onCancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0o;

    iget-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    iget-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method
