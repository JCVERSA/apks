.class final Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;
.super Lcom/google/android/gms/internal/play_billing/zzab;
.source "SourceFile"


# annotations
.annotation build Lcom/android/billingclient/api/zzf;
.end annotation


# static fields
.field private static final DELEGATE_TO_BACKEND_RESPONSE_DATA_KEY:Ljava/lang/String; = "RESPONSE_DATA"

.field private static final TAG:Ljava/lang/String; = "IsBillingProgramAvailableDelegateToBackendCallback"


# instance fields
.field final billingApiVersion:I

.field final billingLogger:Lcom/android/billingclient/api/zzdd;

.field final billingProgram:I

.field final executorService:Ljava/util/concurrent/ExecutorService;

.field final handler:Landroid/os/Handler;

.field final listener:Lcom/android/billingclient/api/BillingProgramAvailabilityListener;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;ILcom/android/billingclient/api/zzdd;ILandroid/os/Handler;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzab;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramAvailabilityListener;

    iput p2, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingProgram:I

    iput-object p3, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    iput p4, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingApiVersion:I

    iput-object p5, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private logErrorAndReturnDefaultAvailabilityDetails(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .locals 7
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/android/billingclient/api/zzdk;->zzb:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v4

    if-nez p4, :cond_0

    const/4 p4, 0x0

    :goto_0
    move-object v6, p4

    goto :goto_1

    :cond_0
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :goto_1
    iget v5, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingApiVersion:I

    iget-object v3, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    move-object v1, p3

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/billingclient/api/zzdj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;IILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramAvailabilityListener;

    new-instance p3, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    invoke-direct {p3, p1}, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;-><init>(I)V

    invoke-interface {p0, p2, p3}, Lcom/android/billingclient/api/BillingProgramAvailabilityListener;->onBillingProgramAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;)V

    return-void
.end method

.method private parseBillingChoiceAvailabilityDetails(Lq3h;)Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;
    .locals 1

    invoke-virtual {p1}, Lq3h;->y()Lwog;

    move-result-object p0

    invoke-virtual {p0}, Lwog;->B()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    new-instance p1, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    invoke-virtual {p0}, Lwog;->A()Z

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;-><init>(IZ)V

    return-object p1
.end method

.method private returnListenerResponseOnSuccess(ILcom/android/billingclient/api/BillingResult;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :try_start_0
    const-string p1, "RESPONSE_DATA"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaS:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->logErrorAndReturnDefaultAvailabilityDetails(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lq3h;->A([B)Lq3h;

    move-result-object p1

    invoke-virtual {p1}, Lq3h;->B()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaS:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->logErrorAndReturnDefaultAvailabilityDetails(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void

    :cond_1
    new-instance p3, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->parseBillingChoiceAvailabilityDetails(Lq3h;)Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;-><init>(ILcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    move-object p2, p1

    move p1, v0

    goto :goto_2

    :cond_2
    :try_start_1
    new-instance p3, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    invoke-direct {p3, p1}, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object p0, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramAvailabilityListener;

    invoke-interface {p0, p2, p3}, Lcom/android/billingclient/api/BillingProgramAvailabilityListener;->onBillingProgramAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;)V

    return-void

    :catch_1
    move-exception p2

    :goto_2
    const-string p3, "IsBillingProgramAvailableDelegateToBackendCallback"

    const-string v0, "Got a JSON exception trying to decode billing program availability details."

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaS:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->logErrorAndReturnDefaultAvailabilityDetails(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public onDelegateToBackendResponse(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Lcom/android/billingclient/api/zzf;
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaT:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/android/billingclient/api/zzdk;->zzb:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v2}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v2

    iget v3, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingApiVersion:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    iget-object p1, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramAvailabilityListener;

    iget p0, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingProgram:I

    new-instance v0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    invoke-direct {v0, p0}, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;-><init>(I)V

    invoke-interface {p1, v1, v0}, Lcom/android/billingclient/api/BillingProgramAvailabilityListener;->onBillingProgramAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/billingclient/api/zzdk;->zzb:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v1

    iget-object v2, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    iget v3, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingApiVersion:I

    const-string v4, "IsBillingProgramAvailableDelegateToBackendCallback"

    invoke-static {p1, v4, v1, v2, v3}, Lcom/android/billingclient/api/zzdm;->zza(Landroid/os/Bundle;Ljava/lang/String;ILcom/android/billingclient/api/zzdd;I)Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramAvailabilityListener;

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaR:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v0

    iget p0, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingApiVersion:I

    invoke-static {v2, v1, p1, v0, p0}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingProgram:I

    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->returnListenerResponseOnSuccess(ILcom/android/billingclient/api/BillingResult;Landroid/os/Bundle;)V

    return-void
.end method
