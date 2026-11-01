.class Lapp/fast/ssh/VoucherActivity$2;
.super Ljava/lang/Object;
.source "VoucherActivity.java"

# interfaces
.implements Lapp/fast/ssh/core/VpnConnection$RedeemResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/VoucherActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lapp/fast/ssh/VoucherActivity$2;->this$0:Lapp/fast/ssh/VoucherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRedeemResult(I)V
    .locals 1

    .prologue
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lapp/fast/ssh/VoucherActivity$2;->this$0:Lapp/fast/ssh/VoucherActivity;

    new-instance v0, Lapp/fast/ssh/VoucherActivity$2$2;

    invoke-direct {v0, p0}, Lapp/fast/ssh/VoucherActivity$2$2;-><init>(Lapp/fast/ssh/VoucherActivity$2;)V

    invoke-virtual {p1, v0}, Lapp/fast/ssh/VoucherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object p1, p0, Lapp/fast/ssh/VoucherActivity$2;->this$0:Lapp/fast/ssh/VoucherActivity;

    new-instance v0, Lapp/fast/ssh/VoucherActivity$2$1;

    invoke-direct {v0, p0}, Lapp/fast/ssh/VoucherActivity$2$1;-><init>(Lapp/fast/ssh/VoucherActivity$2;)V

    invoke-virtual {p1, v0}, Lapp/fast/ssh/VoucherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
