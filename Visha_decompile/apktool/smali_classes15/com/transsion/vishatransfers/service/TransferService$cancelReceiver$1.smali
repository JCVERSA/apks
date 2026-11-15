.class public final Lcom/transsion/vishatransfers/service/TransferService$cancelReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfers/service/TransferService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/transsion/vishatransfers/service/TransferService$cancelReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Lzfb;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
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
.field public final synthetic a:Lcom/transsion/vishatransfers/service/TransferService;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfers/service/TransferService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfers/service/TransferService$cancelReceiver$1;->a:Lcom/transsion/vishatransfers/service/TransferService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.transsion.vishatransfers.action.CANCEL_TRANSFER"

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishatransfers/service/TransferService$cancelReceiver$1;->a:Lcom/transsion/vishatransfers/service/TransferService;

    invoke-static {p0}, Lcom/transsion/vishatransfers/service/TransferService;->a(Lcom/transsion/vishatransfers/service/TransferService;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onReceive: ACTION_CANCEL_TRANSFER"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->s:Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;->a()Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->t()V

    :cond_0
    return-void
.end method
