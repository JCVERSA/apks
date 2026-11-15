.class final Lcom/android/billingclient/api/zzej;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private zza:Lcom/android/billingclient/api/BillingResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Z

.field private final zzc:Lcom/android/billingclient/api/zzdd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/zzdd;)V
    .locals 1
    .param p1    # Lcom/android/billingclient/api/zzdd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/billingclient/api/zzej;->zzb:Z

    iput-object p1, p0, Lcom/android/billingclient/api/zzej;->zzc:Lcom/android/billingclient/api/zzdd;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "ProxyBillingReceiver"

    if-nez p2, :cond_0

    const-string p0, "Null intent!"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received intent action: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/a;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.vending.billing.IN_APP_BILLING_RESULT_UPDATE_ACTION"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, "billingClientTransactionId"

    if-eqz v0, :cond_2

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "Missing RESPONSE_CODE in intent."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/billingclient/api/zzej;->zzc:Lcom/android/billingclient/api/zzdd;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p2, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/billingclient/api/zzdd;->zzj(Lcom/android/billingclient/api/BillingResult;J)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    const-string v0, "DEBUG_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg7f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/zzej;->zza:Lcom/android/billingclient/api/BillingResult;

    iget-object p0, p0, Lcom/android/billingclient/api/zzej;->zzc:Lcom/android/billingclient/api/zzdd;

    if-eqz p0, :cond_3

    invoke-virtual {p2, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/billingclient/api/zzdd;->zzj(Lcom/android/billingclient/api/BillingResult;J)V

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.android.vending.billing.PLAY_BILLING_ACTIVITY_CREATED_ACTION"

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzej;->zzb:Z

    iget-object p0, p0, Lcom/android/billingclient/api/zzej;->zzc:Lcom/android/billingclient/api/zzdd;

    if-eqz p0, :cond_3

    invoke-virtual {p2, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lcom/android/billingclient/api/zzdd;->zzk(J)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Unexpected broadcast action: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza()Lcom/android/billingclient/api/BillingResult;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/billingclient/api/zzej;->zza:Lcom/android/billingclient/api/BillingResult;

    return-object p0
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/billingclient/api/zzej;->zza:Lcom/android/billingclient/api/BillingResult;

    return-void
.end method

.method public final zzc()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/billingclient/api/zzej;->zzb:Z

    return p0
.end method
