.class Lapp/fast/ssh/dialog/AddTimeDialog$2$1;
.super Ljava/lang/Object;
.source "AddTimeDialog.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/dialog/AddTimeDialog$2;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/fast/ssh/dialog/AddTimeDialog$2;


# direct methods
.method constructor <init>(Lapp/fast/ssh/dialog/AddTimeDialog$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog$2$1;->this$1:Lapp/fast/ssh/dialog/AddTimeDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 2

    iget-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog$2$1;->this$1:Lapp/fast/ssh/dialog/AddTimeDialog$2;

    iget-object p1, p1, Lapp/fast/ssh/dialog/AddTimeDialog$2;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/AddTimeDialog;->access$400(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "\u3142"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog$2$1;->this$1:Lapp/fast/ssh/dialog/AddTimeDialog$2;

    iget-object p1, p1, Lapp/fast/ssh/dialog/AddTimeDialog$2;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/AddTimeDialog;->access$500(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u3143"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lapp/fast/ssh/dialog/AddTimeDialog;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget-object v1, v1, Lapp/fast/ssh/TimerConf;->message_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
