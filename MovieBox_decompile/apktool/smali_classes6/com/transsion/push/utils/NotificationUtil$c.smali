.class public final Lcom/transsion/push/utils/NotificationUtil$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyg/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/NotificationUtil;->M(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/utils/NotificationUtil$c;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyg/m$a;->a(Lyg/m;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    iget-object p2, p0, Lcom/transsion/push/utils/NotificationUtil$c;->a:Landroid/content/Context;

    sget-object v0, Lcom/transsion/pushapi/TriggerSource;->NETWORK_CONNECTED:Lcom/transsion/pushapi/TriggerSource;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/utils/NotificationUtil;->P(Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 1
    return-void
.end method
