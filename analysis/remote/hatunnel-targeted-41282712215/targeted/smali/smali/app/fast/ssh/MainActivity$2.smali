.class Lapp/fast/ssh/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/MainActivity;->startResourceUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/MainActivity;

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$subscription:Lapp/fast/ssh/Subscription;


# direct methods
.method constructor <init>(Lapp/fast/ssh/MainActivity;Lapp/fast/ssh/Subscription;Landroid/app/ProgressDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/MainActivity$2;->this$0:Lapp/fast/ssh/MainActivity;

    iput-object p2, p0, Lapp/fast/ssh/MainActivity$2;->val$subscription:Lapp/fast/ssh/Subscription;

    iput-object p3, p0, Lapp/fast/ssh/MainActivity$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorOccurred()V
    .locals 3

    iget-object v0, p0, Lapp/fast/ssh/MainActivity$2;->this$0:Lapp/fast/ssh/MainActivity;

    const-string/jumbo v1, "\u2f63"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lapp/fast/ssh/MainActivity$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onResponseReceived(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Lapp/fast/ssh/MainActivity$2;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-static {v0, p1}, Lapp/fast/ssh/MainActivity;->access$000(Lapp/fast/ssh/MainActivity;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/MainActivity$2;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-static {p1}, Lapp/fast/ssh/MainActivity;->access$100(Lapp/fast/ssh/MainActivity;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lapp/fast/ssh/MainActivity$2;->val$subscription:Lapp/fast/ssh/Subscription;

    invoke-virtual {p1}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lapp/fast/ssh/MainActivity$2;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-static {p1}, Lapp/fast/ssh/MainActivity;->access$100(Lapp/fast/ssh/MainActivity;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object p1

    iget-object v0, p0, Lapp/fast/ssh/MainActivity$2;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lapp/fast/ssh/MainActivity$2;->this$0:Lapp/fast/ssh/MainActivity;

    const-string/jumbo v0, "\u2f64"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lapp/fast/ssh/MainActivity$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity$2;->onErrorOccurred()V

    return-void
.end method
