.class public Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "received_check_upgrade_broadcast"

    invoke-static {p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->t(Ljava/lang/String;)V

    return-void
.end method
