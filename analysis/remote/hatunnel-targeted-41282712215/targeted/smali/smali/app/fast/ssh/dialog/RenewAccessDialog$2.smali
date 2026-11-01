.class Lapp/fast/ssh/dialog/RenewAccessDialog$2;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "RenewAccessDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/dialog/RenewAccessDialog;->requestRewardedAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

.field final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lapp/fast/ssh/dialog/RenewAccessDialog;Landroid/app/ProgressDialog;)V
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

    iput-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    iput-object p2, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-static {v0}, Lapp/fast/ssh/dialog/RenewAccessDialog;->access$300(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "\u3177"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "\u3178"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :try_start_1
    iget-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/RenewAccessDialog;->access$700(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/widget/Button;

    move-result-object p1

    const-string/jumbo v0, "\u3179"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string/jumbo v1, "\u317a"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lapp/fast/ssh/core/VpnStatus;->getLastConnectedProfile()Lapp/fast/ssh/core/VpnProfile;

    move-result-object v2

    invoke-virtual {v2}, Lapp/fast/ssh/core/VpnProfile;->primaryNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "\u317b"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lapp/fast/ssh/core/VpnStatus;->getLastConnectedProfile()Lapp/fast/ssh/core/VpnProfile;

    move-result-object v2

    invoke-virtual {v2}, Lapp/fast/ssh/core/VpnProfile;->serverHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "\u317c"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-static {v2}, Lapp/fast/ssh/dialog/RenewAccessDialog;->access$000(Lapp/fast/ssh/dialog/RenewAccessDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "\u317d"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-static {v2}, Lapp/fast/ssh/dialog/RenewAccessDialog;->access$100(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "\u317e"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance v1, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-static {v1}, Lapp/fast/ssh/dialog/RenewAccessDialog;->access$200(Lapp/fast/ssh/dialog/RenewAccessDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->build()Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    iget-object v0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->this$0:Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-static {v0}, Lapp/fast/ssh/dialog/RenewAccessDialog;->access$300(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lapp/fast/ssh/dialog/RenewAccessDialog$2$1;

    invoke-direct {v1, p0}, Lapp/fast/ssh/dialog/RenewAccessDialog$2$1;-><init>(Lapp/fast/ssh/dialog/RenewAccessDialog$2;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lapp/fast/ssh/dialog/RenewAccessDialog$2;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
