.class Lapp/fast/ssh/VoucherActivity$2$2;
.super Ljava/lang/Object;
.source "VoucherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/VoucherActivity$2;->onRedeemResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/fast/ssh/VoucherActivity$2;


# direct methods
.method constructor <init>(Lapp/fast/ssh/VoucherActivity$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/VoucherActivity$2$2;->this$1:Lapp/fast/ssh/VoucherActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lapp/fast/ssh/VoucherActivity$2$2;->this$1:Lapp/fast/ssh/VoucherActivity$2;

    iget-object v0, v0, Lapp/fast/ssh/VoucherActivity$2;->this$0:Lapp/fast/ssh/VoucherActivity;

    const-string/jumbo v1, "\u2fb8"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lapp/fast/ssh/VoucherActivity$2$2;->this$1:Lapp/fast/ssh/VoucherActivity$2;

    iget-object v0, v0, Lapp/fast/ssh/VoucherActivity$2;->this$0:Lapp/fast/ssh/VoucherActivity;

    invoke-virtual {v0}, Lapp/fast/ssh/VoucherActivity;->onBackPressed()V

    return-void
.end method
