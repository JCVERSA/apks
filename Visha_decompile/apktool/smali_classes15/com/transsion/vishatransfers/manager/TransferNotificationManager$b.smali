.class public final Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfers/manager/TransferNotificationManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;->b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;->b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p1, p2, Lcom/transsion/vishatransfers/service/TransferService$a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;->b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    check-cast p2, Lcom/transsion/vishatransfers/service/TransferService$a;

    invoke-virtual {p2}, Lcom/transsion/vishatransfers/service/TransferService$a;->a()Lcom/transsion/vishatransfers/service/TransferService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->o(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;Lcom/transsion/vishatransfers/service/TransferService;)V

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;->b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->l(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;Z)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;->b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;->b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    invoke-static {p1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->h(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Lcom/transsion/vishatransfers/service/TransferService;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/vishatransfers/service/TransferService;->c()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;->b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->o(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;Lcom/transsion/vishatransfers/service/TransferService;)V

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;->b:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->l(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;Z)V

    return-void
.end method
