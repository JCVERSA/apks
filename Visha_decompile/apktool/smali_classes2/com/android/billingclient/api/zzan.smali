.class public final synthetic Lcom/android/billingclient/api/zzan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic zzb:Lcom/android/billingclient/api/BillingProgramInformationDialogListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramInformationDialogListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzan;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzan;->zzb:Lcom/android/billingclient/api/BillingProgramInformationDialogListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/zzan;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object p0, p0, Lcom/android/billingclient/api/zzan;->zzb:Lcom/android/billingclient/api/BillingProgramInformationDialogListener;

    invoke-static {v0, p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzQ(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramInformationDialogListener;)V

    return-void
.end method
