.class Lapp/fast/ssh/VoucherActivity$4;
.super Ljava/lang/Object;
.source "VoucherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/VoucherActivity;->onUpdateState(Lapp/fast/ssh/core/VpnStatus$VpnState;)V
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

    iput-object p1, p0, Lapp/fast/ssh/VoucherActivity$4;->this$0:Lapp/fast/ssh/VoucherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/VoucherActivity$4;->this$0:Lapp/fast/ssh/VoucherActivity;

    invoke-virtual {v0}, Lapp/fast/ssh/VoucherActivity;->onBackPressed()V

    return-void
.end method
