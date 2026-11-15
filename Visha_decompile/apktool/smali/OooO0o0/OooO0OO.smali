.class public LOooO0o0/OooO0OO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lsj7;


# direct methods
.method public constructor <init>(Lsj7;)V
    .locals 0

    iput-object p1, p0, LOooO0o0/OooO0OO;->OooO00o:Lsj7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, LOooO0o0/OooO0OO;->OooO00o:Lsj7;

    iget-object v0, v0, Lsj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->getServerMode()I

    move-result v0

    sput v0, Lbw7;->a:I

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v0

    iget-object v1, p0, LOooO0o0/OooO0OO;->OooO00o:Lsj7;

    iget-object v2, v1, Lsj7;->a:Landroid/content/Context;

    iget-object v1, v1, Lsj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, LOooO0o0/OooO0OO;->OooO00o:Lsj7;

    iget-object v3, v3, Lsj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v3}, Lcom/transsion/palmsdk/PalmAuthParam;->getServerMode()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/palmsdk/account/XNManager;->c(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, LOooO0o0/OooO0OO;->OooO00o:Lsj7;

    iget-object v0, v0, Lsj7;->a:Landroid/content/Context;

    invoke-static {v0}, LOooO0OO/OooO0O0;->a(Landroid/content/Context;)LOooO0OO/OooO0O0;

    move-result-object v0

    iget-object v1, p0, LOooO0o0/OooO0OO;->OooO00o:Lsj7;

    iget-object v1, v1, Lsj7;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    iput-object v1, v0, LOooO0OO/OooO0O0;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LOooO0OO/OooO0O0;->c(Lcom/transsion/palmsdk/PalmID$a;Z)V

    iget-object v0, p0, LOooO0o0/OooO0OO;->OooO00o:Lsj7;

    invoke-static {v0}, Lsj7;->a(Lsj7;)V

    iget-object v0, p0, LOooO0o0/OooO0OO;->OooO00o:Lsj7;

    invoke-static {v0}, Lsj7;->c(Lsj7;)V

    iget-object p0, p0, LOooO0o0/OooO0OO;->OooO00o:Lsj7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "PalmInitManager cloud config initialization scheduled"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PalmInitManager initCloudConfigDelayed error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "PalmInitManager main process initialization completed"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "PalmInitManager initMainProcess error: "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    :goto_1
    return-void
.end method
