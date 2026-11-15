.class public final Lcom/android/billingclient/api/BillingProgramInformationDialogParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/android/billingclient/api/zze;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;
    }
.end annotation


# instance fields
.field private final billingProgram:I

.field private final externalTransactionToken:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;->zza(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->billingProgram:I

    .line 3
    invoke-static {p1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;->zzb(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->externalTransactionToken:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;Lcom/android/billingclient/api/zzde;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;-><init>(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;-><init>(Lcom/android/billingclient/api/zzde;)V

    return-object v0
.end method


# virtual methods
.method public getBillingProgram()I
    .locals 0

    iget p0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->billingProgram:I

    return p0
.end method

.method public getExternalTransactionToken()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->externalTransactionToken:Ljava/lang/String;

    return-object p0
.end method
