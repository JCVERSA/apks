.class public Lcom/transsion/palmsdk/auth/OooO0OO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public b:Lcom/transsion/palmsdk/auth/OooO0O0;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/content/Intent;

.field public final e:Landroid/os/Bundle;

.field public final f:Lcom/transsion/palmsdk/PalmID$b;

.field public final g:Z

.field public final h:Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Lcom/transsion/palmsdk/PalmID$b;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;

    invoke-direct {v0, p0}, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;-><init>(Lcom/transsion/palmsdk/auth/OooO0OO;)V

    iput-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->h:Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;

    iput-object p1, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->d:Landroid/content/Intent;

    iput-object p3, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->e:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->f:Lcom/transsion/palmsdk/PalmID$b;

    iput-boolean p5, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->g:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->d:Landroid/content/Intent;

    const/16 v2, 0x201

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->d:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    sget-object p1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "onServiceConnected"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p2}, Lcom/transsion/palmsdk/auth/OooO0O0$OooO00o;->OooO00o(Landroid/os/IBinder;)Lcom/transsion/palmsdk/auth/OooO0O0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    iget-object p2, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->e:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->h:Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;

    invoke-interface {p1, p2, v0}, Lcom/transsion/palmsdk/auth/OooO0O0;->OooO00o(Landroid/os/Bundle;Lcom/transsion/palmsdk/auth/OooO00o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->f:Lcom/transsion/palmsdk/PalmID$b;

    if-eqz p0, :cond_0

    const p1, 0x9ca6

    const-string p2, "remote exception"

    invoke-interface {p0, p1, p2}, Lcom/transsion/palmsdk/PalmID$b;->a(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->f:Lcom/transsion/palmsdk/PalmID$b;

    if-eqz p0, :cond_0

    const p1, 0x9ca6

    const-string v0, "service disconnected"

    invoke-interface {p0, p1, v0}, Lcom/transsion/palmsdk/PalmID$b;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
