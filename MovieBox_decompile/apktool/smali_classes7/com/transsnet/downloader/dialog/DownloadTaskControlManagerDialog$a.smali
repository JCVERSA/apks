.class public final Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lwj/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;->a:Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwj/g$a;->a(Lwj/g;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onFail()V
    .locals 3

    .line 1
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;->a:Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> interception() --> onFail() --> \u5931\u8d25\u4e86"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .line 1
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;->a:Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> checkRights --> onSuccess() --> \u6210\u529f\u4e86"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lax/b;

    .line 30
    .line 31
    invoke-direct {v0}, Lax/b;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    const-class v2, Lim/b;

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lim/b;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {v1}, Lim/b;->B()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v1, v2

    .line 54
    :goto_0
    invoke-virtual {v0, v1}, Lax/b;->i(I)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static {v1, v3, v2, v3}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v4, v0}, Lcom/transsnet/downloader/manager/g;->G(Lax/b;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v3, v2, v3}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Lcom/transsnet/downloader/manager/g;->v()V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 75
    .line 76
    sget v1, Lcom/transsnet/downloader/R$string;->download_task_control_manager_start_mul:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog$a;->a:Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 84
    .line 85
    .line 86
    return-void
.end method
