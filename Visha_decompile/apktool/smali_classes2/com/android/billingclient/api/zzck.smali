.class final Lcom/android/billingclient/api/zzck;
.super Lcom/google/android/gms/internal/play_billing/zzad;
.source "SourceFile"


# instance fields
.field final zza:Ljava/lang/ref/WeakReference;

.field final zzb:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzcm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzad;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzck;->zza:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "DEBUG_MESSAGE"

    const/4 v1, 0x6

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v2, "RESPONSE_CODE"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "BillingClient"

    if-nez v3, :cond_1

    const-string v0, "Response bundle doesn\'t contain a response code"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    invoke-virtual {p0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/play_billing/a;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Unable to launch intent for billing program information dialog"

    invoke-static {v3, v0}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    invoke-virtual {p0, v3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_2
    const-string v3, "ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    if-nez v3, :cond_3

    const-string v0, "User has acknowledged the billing program information dialog before."

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzck;->zza:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/billingclient/api/ProxyBillingActivityV2;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "billing_program_information_dialog_result_receiver"

    iget-object v7, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "billing_program_information_dialog_pending_intent"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_5
    :goto_0
    const-string p1, "Activity is null or unavailable, unable to launch intent for billing program information dialog."

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "Activity is null or unavailable."

    invoke-virtual {p1, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    invoke-virtual {v5, v3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string v3, "Runtime error while launching intent for billing program information dialog."

    invoke-static {v4, v3, p1}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "An internal error occurred."

    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbt:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzjs;->zza()I

    move-result v0

    const-string v2, "INTERNAL_LOG_ERROR_REASON"

    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg7f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    invoke-virtual {p0, v1, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
