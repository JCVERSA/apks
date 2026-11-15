.class public final Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zza:I

    iput v0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zzb:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzdf;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zza:I

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zzb:I

    return-void
.end method

.method public static bridge synthetic zza(Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zza:I

    return p0
.end method

.method public static bridge synthetic zzb(Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zzb:I

    return p0
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zza:I

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zzb:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Developer billing type must be specified for billing choice."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;-><init>(Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;Lcom/android/billingclient/api/zzdf;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Billing program is not specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBillingProgram(I)Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zza:I

    return-object p0
.end method

.method public setDeveloperBillingType(I)Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zze;
    .end annotation

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zzb:I

    return-object p0
.end method
