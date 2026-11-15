.class public Lrd$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrd;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object p0

    const-string p1, "anti_fraud_log"

    const-string p2, "batteryBroadcastReceiver receive"

    invoke-virtual {p0, p1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
