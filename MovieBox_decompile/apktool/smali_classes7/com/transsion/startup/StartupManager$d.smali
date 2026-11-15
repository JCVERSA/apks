.class public final Lcom/transsion/startup/StartupManager$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lbm/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/startup/StartupManager;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/startup/StartupManager;


# direct methods
.method constructor <init>(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/startup/StartupManager$d;->a:Lcom/transsion/startup/StartupManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/StartupManager$d;->a:Lcom/transsion/startup/StartupManager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/transsion/startup/StartupManager;->x(Lcom/transsion/startup/StartupManager;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/startup/StartupManager$d;->a:Lcom/transsion/startup/StartupManager;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/transsion/startup/StartupManager;->u(Lcom/transsion/startup/StartupManager;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v2, Lkk/a;

    .line 5
    .line 6
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lkk/a;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v1, v0, v2, v3}, Lkk/a$a;->a(Lkk/a;ZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/transsion/upload/log/UploadLoggerManager;->a:Lcom/transsion/upload/log/UploadLoggerManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/upload/log/UploadLoggerManager;->g()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/transsion/startup/StartupManager$d;->a:Lcom/transsion/startup/StartupManager;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/transsion/startup/StartupManager;->w(Lcom/transsion/startup/StartupManager;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/startup/StartupManager$d;->a:Lcom/transsion/startup/StartupManager;

    .line 30
    .line 31
    invoke-static {v0, v2}, Lcom/transsion/startup/StartupManager;->x(Lcom/transsion/startup/StartupManager;Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/startup/StartupManager$d;->a:Lcom/transsion/startup/StartupManager;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/transsion/startup/StartupManager;->u(Lcom/transsion/startup/StartupManager;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
