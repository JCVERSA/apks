.class public Lcom/transsion/palmsdk/auth/OooO0o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public b:Lcom/transsion/palmsdk/auth/OooO0O0;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/content/Intent;

.field public final e:Lcom/transsion/palmsdk/PalmAuthParam;

.field public final f:Lcom/transsion/palmsdk/PalmID$e;

.field public g:Z

.field public final h:Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/transsion/palmsdk/PalmAuthParam;Lcom/transsion/palmsdk/PalmID$e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->g:Z

    new-instance v0, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;

    invoke-direct {v0, p0}, Lcom/transsion/palmsdk/auth/OooO0o$OooO00o;-><init>(Lcom/transsion/palmsdk/auth/OooO0o;)V

    iput-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->h:Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;

    iput-object p1, p0, Lcom/transsion/palmsdk/auth/OooO0o;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsion/palmsdk/auth/OooO0o;->e:Lcom/transsion/palmsdk/PalmAuthParam;

    iput-object p2, p0, Lcom/transsion/palmsdk/auth/OooO0o;->d:Landroid/content/Intent;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/transsion/palmsdk/auth/OooO0o;->f:Lcom/transsion/palmsdk/PalmID$e;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/transsion/palmsdk/auth/OooO0o$a;

    invoke-direct {p2, p0, p1}, Lcom/transsion/palmsdk/auth/OooO0o$a;-><init>(Lcom/transsion/palmsdk/auth/OooO0o;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/palmsdk/auth/OooO0o;->f:Lcom/transsion/palmsdk/PalmID$e;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/palmsdk/auth/OooO0o;->d:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

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

    iput-object p1, p0, Lcom/transsion/palmsdk/auth/OooO0o;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "auth_param"

    iget-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->e:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p2, p0, Lcom/transsion/palmsdk/auth/OooO0o;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    iget-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->h:Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;

    invoke-interface {p2, p1, v0}, Lcom/transsion/palmsdk/auth/OooO0O0;->OooO0O0(Landroid/os/Bundle;Lcom/transsion/palmsdk/auth/OooO00o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->f:Lcom/transsion/palmsdk/PalmID$e;

    if-eqz p0, :cond_0

    const/16 p1, -0x6d

    invoke-interface {p0, p1}, Lcom/transsion/palmsdk/PalmID$e;->a(I)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/palmsdk/auth/OooO0o;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0o;->f:Lcom/transsion/palmsdk/PalmID$e;

    if-eqz p0, :cond_0

    const/16 p1, -0x6d

    invoke-interface {p0, p1}, Lcom/transsion/palmsdk/PalmID$e;->a(I)V

    :cond_0
    return-void
.end method
