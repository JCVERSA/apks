.class public final Lcom/transsion/vishatransfers/service/TransferService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishatransfers/service/TransferService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000O\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001%\u0018\u00002\u00020\u0001:\u0001/B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J)\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u0015\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J%\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0019\u0010\u0003R\u0014\u0010\u001b\u001a\u00020\u00118\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001dR\u0016\u0010 \u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001fR\u0018\u0010$\u001a\u00060!R\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u0010.\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010+\u00a8\u00060"
    }
    d2 = {
        "Lcom/transsion/vishatransfers/service/TransferService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "Lzfb;",
        "onCreate",
        "Landroid/content/Intent;",
        "intent",
        "",
        "flags",
        "startId",
        "onStartCommand",
        "(Landroid/content/Intent;II)I",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "onDestroy",
        "",
        "title",
        "b",
        "(Ljava/lang/String;)V",
        "currentSize",
        "progress",
        "d",
        "(Ljava/lang/String;Ljava/lang/String;I)V",
        "c",
        "Ljava/lang/String;",
        "TAG",
        "Landroid/app/Notification;",
        "Landroid/app/Notification;",
        "mNotification",
        "I",
        "mNotificationId",
        "Lcom/transsion/vishatransfers/service/TransferService$a;",
        "e",
        "Lcom/transsion/vishatransfers/service/TransferService$a;",
        "binder",
        "com/transsion/vishatransfers/service/TransferService$cancelReceiver$1",
        "f",
        "Lcom/transsion/vishatransfers/service/TransferService$cancelReceiver$1;",
        "cancelReceiver",
        "Landroid/widget/RemoteViews;",
        "g",
        "Landroid/widget/RemoteViews;",
        "simpleView",
        "h",
        "complexView",
        "a",
        "vishatransfer_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Landroid/app/Notification;

.field public d:I

.field public final e:Lcom/transsion/vishatransfers/service/TransferService$a;

.field public final f:Lcom/transsion/vishatransfers/service/TransferService$cancelReceiver$1;

.field public final g:Landroid/widget/RemoteViews;

.field public final h:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "TransferService"

    iput-object v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->b:Ljava/lang/String;

    new-instance v0, Lcom/transsion/vishatransfers/service/TransferService$a;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfers/service/TransferService$a;-><init>(Lcom/transsion/vishatransfers/service/TransferService;)V

    iput-object v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->e:Lcom/transsion/vishatransfers/service/TransferService$a;

    new-instance v0, Lcom/transsion/vishatransfers/service/TransferService$cancelReceiver$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfers/service/TransferService$cancelReceiver$1;-><init>(Lcom/transsion/vishatransfers/service/TransferService;)V

    iput-object v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->f:Lcom/transsion/vishatransfers/service/TransferService$cancelReceiver$1;

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/vishatransfers/R$layout;->notification_transfer_simple:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->g:Landroid/widget/RemoteViews;

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/vishatransfers/R$layout;->notification_transfer_complex:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->h:Landroid/widget/RemoteViews;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/vishatransfers/service/TransferService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfers/service/TransferService;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 7

    const-string v0, "title"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x4e21

    iput v6, p0, Lcom/transsion/vishatransfers/service/TransferService;->d:I

    sget-object v1, Lb6b;->a:Lb6b;

    iget-object v3, p0, Lcom/transsion/vishatransfers/service/TransferService;->g:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/transsion/vishatransfers/service/TransferService;->h:Landroid/widget/RemoteViews;

    move-object v2, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lb6b;->b(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishatransfers/service/TransferService;->c:Landroid/app/Notification;

    iget v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->d:I

    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lb6b;->a:Lb6b;

    iget v1, p0, Lcom/transsion/vishatransfers/service/TransferService;->d:I

    invoke-virtual {v0, p0, v1}, Lb6b;->a(Landroid/content/Context;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->c:Landroid/app/Notification;

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    const-string v0, "title"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentSize"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTransferProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/transsion/vishatransfers/service/TransferService;->c:Landroid/app/Notification;

    if-eqz v5, :cond_0

    sget-object v2, Lb6b;->a:Lb6b;

    iget v4, p0, Lcom/transsion/vishatransfers/service/TransferService;->d:I

    iget-object v9, p0, Lcom/transsion/vishatransfers/service/TransferService;->g:Landroid/widget/RemoteViews;

    iget-object v10, p0, Lcom/transsion/vishatransfers/service/TransferService;->h:Landroid/widget/RemoteViews;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v2 .. v10}, Lb6b;->d(Landroid/content/Context;ILandroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishatransfers/service/TransferService;->b:Ljava/lang/String;

    const-string v0, "onBind"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/vishatransfers/service/TransferService;->e:Lcom/transsion/vishatransfers/service/TransferService$a;

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->b:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lb6b;->a:Lb6b;

    invoke-virtual {v0, p0}, Lb6b;->c(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "com.transsion.vishatransfers.action.CANCEL_TRANSFER"

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->f:Lcom/transsion/vishatransfers/service/TransferService$cancelReceiver$1;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->f:Lcom/transsion/vishatransfers/service/TransferService$cancelReceiver$1;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->b:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/vishatransfers/service/TransferService;->f:Lcom/transsion/vishatransfers/service/TransferService$cancelReceiver$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfers/service/TransferService;->b:Ljava/lang/String;

    const-string p1, "onStartCommand"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
