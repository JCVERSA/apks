.class Lapp/fast/ssh/FastSSH$1;
.super Ljava/lang/Object;
.source "FastSSH.java"

# interfaces
.implements Lapp/fast/ssh/BillingManager$SessionControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/FastSSH;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/FastSSH;


# direct methods
.method constructor <init>(Lapp/fast/ssh/FastSSH;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/FastSSH$1;->this$0:Lapp/fast/ssh/FastSSH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    invoke-static {}, Lapp/fast/ssh/core/VpnStatus;->isConnected()Z

    move-result v0

    return v0
.end method

.method public sendSubToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    :try_start_0
    sget-object v0, Lapp/fast/ssh/core/VpnStatus;->vpnConnectionInstance:Lapp/fast/ssh/core/VpnConnection;

    if-eqz v0, :cond_0

    sget-object v0, Lapp/fast/ssh/core/VpnStatus;->vpnConnectionInstance:Lapp/fast/ssh/core/VpnConnection;

    invoke-virtual {v0, p1}, Lapp/fast/ssh/core/VpnConnection;->sendSubToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
