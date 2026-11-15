.class interface abstract Lcom/android/billingclient/api/zzdd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzb:Lcom/google/android/gms/internal/play_billing/zzjz;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjz;->zzc:Lcom/google/android/gms/internal/play_billing/zzjz;

    const-string v4, "com.android.vending.billing.ALTERNATIVE_BILLING"

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjz;->zzd:Lcom/google/android/gms/internal/play_billing/zzjz;

    const-string v0, "com.android.vending.billing.PURCHASES_UPDATED"

    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzcd;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcd;

    return-void
.end method


# virtual methods
.method public abstract zza(Lf5j;)V
.end method

.method public abstract zzb(Lf5j;I)V
    .param p1    # Lf5j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract zzc(Lf5j;IJ)V
.end method

.method public abstract zzd(Lf5j;JZ)V
.end method

.method public abstract zze(Lf5j;IJZ)V
.end method

.method public abstract zzf(Ln5j;)V
    .param p1    # Ln5j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract zzg(Ln5j;I)V
    .param p1    # Ln5j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract zzh(Ln5j;JZ)V
.end method

.method public abstract zzi(Lb6j;)V
.end method

.method public abstract zzj(Lcom/android/billingclient/api/BillingResult;J)V
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract zzk(J)V
.end method

.method public abstract zzl(Lu8j;)V
.end method

.method public abstract zzm(La9j;)V
.end method

.method public abstract zzn(Li9j;)V
    .param p1    # Li9j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
