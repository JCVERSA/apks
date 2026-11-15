.class public Lcom/transsion/palmsdk/auth/PalmAuthService$OooO00o;
.super Lcom/transsion/palmsdk/auth/OooO0O0$OooO00o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/palmsdk/auth/PalmAuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO0O0:Lcom/transsion/palmsdk/auth/PalmAuthService;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/auth/PalmAuthService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/PalmAuthService;

    invoke-direct {p0}, Lcom/transsion/palmsdk/auth/OooO0O0$OooO00o;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/os/Bundle;Lcom/transsion/palmsdk/auth/OooO00o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    const-class v0, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO00o;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "auth_param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/palmsdk/PalmAuthParam;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "error_code"

    const v0, 0x9ca5

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "error_message"

    const-string v0, "invalid arguments"

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/transsion/palmsdk/auth/OooO00o;->OooO00o(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/transsion/palmsdk/data/PalmAuthRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p2}, Lcom/transsion/palmsdk/data/PalmAuthRequest;-><init>(Lcom/transsion/palmsdk/PalmAuthParam;ZLcom/transsion/palmsdk/auth/OooO00o;)V

    const-string p2, "host_mode"

    invoke-virtual {p1, p2, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setHostMode(Z)V

    invoke-static {}, Lxj7;->a()Lxj7;

    move-result-object p1

    new-instance p2, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO0O0;

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/PalmAuthService;

    invoke-direct {p2, p0, v1}, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO0O0;-><init>(Lcom/transsion/palmsdk/auth/PalmAuthService;Lcom/transsion/palmsdk/data/PalmAuthRequest;)V

    invoke-virtual {p1, p2}, Lxj7;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public OooO0O0(Landroid/os/Bundle;Lcom/transsion/palmsdk/auth/OooO00o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    const-class v0, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO00o;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "auth_param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/palmsdk/PalmAuthParam;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "status"

    const/16 v0, -0x6d

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p2, p0}, Lcom/transsion/palmsdk/auth/OooO00o;->OooO00o(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lxj7;->a()Lxj7;

    move-result-object v0

    new-instance v1, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO0OO;

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/PalmAuthService;

    new-instance v2, Lcom/transsion/palmsdk/data/PalmAuthRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Lcom/transsion/palmsdk/data/PalmAuthRequest;-><init>(Lcom/transsion/palmsdk/PalmAuthParam;ZLcom/transsion/palmsdk/auth/OooO00o;)V

    invoke-direct {v1, p0, v2}, Lcom/transsion/palmsdk/auth/PalmAuthService$OooO0OO;-><init>(Lcom/transsion/palmsdk/auth/PalmAuthService;Lcom/transsion/palmsdk/data/PalmAuthRequest;)V

    invoke-virtual {v0, v1}, Lxj7;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
