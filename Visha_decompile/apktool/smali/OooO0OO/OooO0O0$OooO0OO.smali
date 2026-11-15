.class public LOooO0OO/OooO0O0$OooO0OO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO0OO/OooO0O0;->b(Lcom/transsion/palmsdk/PalmID$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lnj7;

.field public final synthetic OooO0O0:LOooO0OO/OooO0O0;


# direct methods
.method public constructor <init>(LOooO0OO/OooO0O0;Lnj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LOooO0OO/OooO0O0$OooO0OO;->OooO0O0:LOooO0OO/OooO0O0;

    iput-object p2, p0, LOooO0OO/OooO0O0$OooO0OO;->OooO00o:Lnj7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LOooO0OO/OooO0O0$OooO0OO;->OooO00o:Lnj7;

    iget-object v1, v1, Lnj7;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v2

    iget-object v3, p0, LOooO0OO/OooO0O0$OooO0OO;->OooO0O0:LOooO0OO/OooO0O0;

    iget-object v3, v3, LOooO0OO/OooO0O0;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/transsion/palmsdk/account/XNManager;->k(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/palmsdk/PalmID$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "TUDC convert success"

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object v1, p0, LOooO0OO/OooO0O0$OooO0OO;->OooO00o:Lnj7;

    iget-object v2, p0, LOooO0OO/OooO0O0$OooO0OO;->OooO0O0:LOooO0OO/OooO0O0;

    iget-object v2, v2, LOooO0OO/OooO0O0;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lnj7;->b(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "TUDC convert failed"

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object v1, p0, LOooO0OO/OooO0O0$OooO0OO;->OooO00o:Lnj7;

    iget-object v2, p0, LOooO0OO/OooO0O0$OooO0OO;->OooO0O0:LOooO0OO/OooO0O0;

    iget-object v2, v2, LOooO0OO/OooO0O0;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lnj7;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, LOooO0OO/OooO0O0$OooO0OO;->OooO0O0:LOooO0OO/OooO0O0;

    iget-object v1, v1, LOooO0OO/OooO0O0;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, LOooO0OO/OooO0O0$OooO0OO;->OooO0O0:LOooO0OO/OooO0O0;

    invoke-static {p0, v0}, LOooO0OO/OooO0O0;->d(LOooO0OO/OooO0O0;Z)Z

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_1
    iget-object v2, p0, LOooO0OO/OooO0O0$OooO0OO;->OooO0O0:LOooO0OO/OooO0O0;

    iget-object v2, v2, LOooO0OO/OooO0O0;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object p0, p0, LOooO0OO/OooO0O0$OooO0OO;->OooO0O0:LOooO0OO/OooO0O0;

    invoke-static {p0, v0}, LOooO0OO/OooO0O0;->d(LOooO0OO/OooO0O0;Z)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method
