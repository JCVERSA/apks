.class Lapp/fast/ssh/VoucherActivity$1;
.super Ljava/lang/Object;
.source "VoucherActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/VoucherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/VoucherActivity;


# direct methods
.method constructor <init>(Lapp/fast/ssh/VoucherActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/VoucherActivity$1;->this$0:Lapp/fast/ssh/VoucherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    check-cast p2, Lapp/fast/ssh/core/SSHTunnelService$LocalBinder;

    iget-object p1, p0, Lapp/fast/ssh/VoucherActivity$1;->this$0:Lapp/fast/ssh/VoucherActivity;

    invoke-virtual {p2}, Lapp/fast/ssh/core/SSHTunnelService$LocalBinder;->getServices()[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    check-cast p2, Lapp/fast/ssh/core/VpnConnection;

    invoke-static {p1, p2}, Lapp/fast/ssh/VoucherActivity;->access$002(Lapp/fast/ssh/VoucherActivity;Lapp/fast/ssh/core/VpnConnection;)Lapp/fast/ssh/core/VpnConnection;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lapp/fast/ssh/VoucherActivity$1;->this$0:Lapp/fast/ssh/VoucherActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lapp/fast/ssh/VoucherActivity;->access$002(Lapp/fast/ssh/VoucherActivity;Lapp/fast/ssh/core/VpnConnection;)Lapp/fast/ssh/core/VpnConnection;

    return-void
.end method
