.class Lapp/fast/ssh/VoucherActivity$3;
.super Ljava/lang/Object;
.source "VoucherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$e1:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lapp/fast/ssh/VoucherActivity;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/VoucherActivity$3;->this$0:Lapp/fast/ssh/VoucherActivity;

    iput-object p2, p0, Lapp/fast/ssh/VoucherActivity$3;->val$e1:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "\u2fb9"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/VoucherActivity$3;->val$e1:Ljava/lang/Exception;

    const-string/jumbo v2, "\u2fba"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    iget-object v0, p0, Lapp/fast/ssh/VoucherActivity$3;->this$0:Lapp/fast/ssh/VoucherActivity;

    const-string/jumbo v1, "\u2fbb"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
