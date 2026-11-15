.class final Lcom/android/billingclient/api/zzdq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Z = false

.field private static zzb:J = 0xbb8L

.field private static zzc:J = 0x7530L

.field private static zzd:I = 0x3

.field private static volatile zze:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static zza()I
    .locals 1

    sget v0, Lcom/android/billingclient/api/zzdq;->zzd:I

    return v0
.end method

.method public static zzb()J
    .locals 2

    sget-wide v0, Lcom/android/billingclient/api/zzdq;->zzc:J

    return-wide v0
.end method

.method public static zzc()J
    .locals 2

    sget-wide v0, Lcom/android/billingclient/api/zzdq;->zzb:J

    return-wide v0
.end method

.method public static zzd(J)V
    .locals 0

    sput-wide p0, Lcom/android/billingclient/api/zzdq;->zzc:J

    return-void
.end method

.method public static zze(I)V
    .locals 0

    sput p0, Lcom/android/billingclient/api/zzdq;->zzd:I

    return-void
.end method

.method public static zzf(J)V
    .locals 0

    sput-wide p0, Lcom/android/billingclient/api/zzdq;->zzb:J

    return-void
.end method

.method public static zzg(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/billingclient/api/zzdq;->zza:Z

    return-void
.end method

.method public static zzh(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/billingclient/api/zzdq;->zze:Z

    return-void
.end method

.method public static zzi()Z
    .locals 1

    sget-boolean v0, Lcom/android/billingclient/api/zzdq;->zze:Z

    return v0
.end method

.method public static zzj()Z
    .locals 1

    sget-boolean v0, Lcom/android/billingclient/api/zzdq;->zza:Z

    return v0
.end method
