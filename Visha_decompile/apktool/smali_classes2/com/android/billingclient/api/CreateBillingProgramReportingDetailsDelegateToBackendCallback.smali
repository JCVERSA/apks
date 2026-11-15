.class final Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;
.super Lcom/google/android/gms/internal/play_billing/zzab;
.source "SourceFile"


# annotations
.annotation build Lcom/android/billingclient/api/zzf;
.end annotation


# static fields
.field private static final DELEGATE_TO_BACKEND_RESPONSE_DATA_KEY:Ljava/lang/String; = "RESPONSE_DATA"

.field private static final TAG:Ljava/lang/String; = "CreateBillingProgramReportingDetailsDelegateToBackendCallback"


# instance fields
.field final billingApiVersion:I

.field final billingLogger:Lcom/android/billingclient/api/zzdd;

.field final billingProgram:I

.field final executorService:Ljava/util/concurrent/ExecutorService;

.field final handler:Landroid/os/Handler;

.field final listener:Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;ILcom/android/billingclient/api/zzdd;ILandroid/os/Handler;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzab;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;

    iput p2, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingProgram:I

    iput-object p3, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    iput p4, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingApiVersion:I

    iput-object p5, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private parseReportingDetails(Landroid/os/Bundle;)Lcom/android/billingclient/api/BillingProgramReportingDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RESPONSE_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lxrg;->z([B)Lxrg;

    move-result-object p1

    new-instance v0, Lcom/android/billingclient/api/BillingProgramReportingDetails;

    invoke-virtual {p1}, Lxrg;->A()Lw0h;

    move-result-object p1

    invoke-virtual {p1}, Lw0h;->A()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingProgram:I

    invoke-direct {v0, p1, p0}, Lcom/android/billingclient/api/BillingProgramReportingDetails;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Response data is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private returnListenerResponseOnSuccess(Lcom/android/billingclient/api/BillingResult;Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->parseReportingDetails(Landroid/os/Bundle;)Lcom/android/billingclient/api/BillingProgramReportingDetails;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;

    invoke-interface {p0, p1, p2}, Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;->onCreateBillingProgramReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramReportingDetails;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "CreateBillingProgramReportingDetailsDelegateToBackendCallback"

    const-string v0, "Got a JSON exception trying to decode billing program reporting details."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaS:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v0, Lcom/android/billingclient/api/zzdk;->zzc:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v4

    iget v5, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingApiVersion:I

    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/billingclient/api/zzdj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;IILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;->onCreateBillingProgramReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramReportingDetails;)V

    return-void
.end method


# virtual methods
.method public onDelegateToBackendResponse(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Lcom/android/billingclient/api/zzf;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaT:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v3, Lcom/android/billingclient/api/zzdk;->zzc:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v3}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v3

    iget v4, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingApiVersion:I

    invoke-static {v1, v2, p1, v3, v4}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    iget-object p0, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;

    invoke-interface {p0, v2, v0}, Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;->onCreateBillingProgramReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramReportingDetails;)V

    return-void

    :cond_0
    sget-object v1, Lcom/android/billingclient/api/zzdk;->zzc:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v1}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v2

    iget-object v3, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    iget v4, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingApiVersion:I

    const-string v5, "CreateBillingProgramReportingDetailsDelegateToBackendCallback"

    invoke-static {p1, v5, v2, v3, v4}, Lcom/android/billingclient/api/zzdm;->zza(Landroid/os/Bundle;Ljava/lang/String;ILcom/android/billingclient/api/zzdd;I)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    iget-object v3, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;

    if-nez v3, :cond_1

    iget-object p1, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaR:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {v1}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v1

    iget p0, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingApiVersion:I

    invoke-static {v0, v2, p1, v1, p0}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3, v2, v0}, Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;->onCreateBillingProgramReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramReportingDetails;)V

    return-void

    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->returnListenerResponseOnSuccess(Lcom/android/billingclient/api/BillingResult;Landroid/os/Bundle;)V

    return-void
.end method
