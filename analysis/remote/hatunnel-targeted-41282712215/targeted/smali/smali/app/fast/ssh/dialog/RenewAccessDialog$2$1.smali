.class Lapp/fast/ssh/dialog/RenewAccessDialog$2$1;
.super Ljava/lang/Object;
.source "RenewAccessDialog.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/dialog/RenewAccessDialog$2;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/fast/ssh/dialog/RenewAccessDialog$2;


# direct methods
.method constructor <init>(Lapp/fast/ssh/dialog/RenewAccessDialog$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2$1;->this$1:Lapp/fast/ssh/dialog/RenewAccessDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 2

    iget-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2$1;->this$1:Lapp/fast/ssh/dialog/RenewAccessDialog$2;

    iget-object p1, p1, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/RenewAccessDialog;->access$300(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "\u3175"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2$1;->this$1:Lapp/fast/ssh/dialog/RenewAccessDialog$2;

    iget-object p1, p1, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/RenewAccessDialog;->access$400(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/widget/TextView;

    move-result-object p1

    const-string/jumbo v0, "\u3176"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2$1;->this$1:Lapp/fast/ssh/dialog/RenewAccessDialog$2;

    iget-object p1, p1, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/RenewAccessDialog;->access$500(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2$1;->this$1:Lapp/fast/ssh/dialog/RenewAccessDialog$2;

    iget-object p1, p1, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/RenewAccessDialog;->access$600(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
