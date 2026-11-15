.class public final Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;,
        Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$DeveloperBillingType;
    }
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;Lcom/android/billingclient/api/zzdf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zza(Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;)I

    move-result p2

    iput p2, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;->zza:I

    invoke-static {p1}, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zzb(Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;->zzb:I

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;-><init>(Lcom/android/billingclient/api/zzdf;)V

    return-object v0
.end method


# virtual methods
.method public getBillingProgram()I
    .locals 0

    iget p0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;->zza:I

    return p0
.end method

.method public getDeveloperBillingType()I
    .locals 0
    .annotation build Lcom/android/billingclient/api/zze;
    .end annotation

    iget p0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;->zzb:I

    return p0
.end method
