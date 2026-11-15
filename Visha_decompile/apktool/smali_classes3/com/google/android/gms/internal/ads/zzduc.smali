.class public final enum Lcom/google/android/gms/internal/ads/zzduc;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzduc;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzduc;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzduc;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzduc;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/ads/zzduc;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzduc;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzduc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzduc;->zza:Lcom/google/android/gms/internal/ads/zzduc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzduc;

    const-string v2, "API"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzduc;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzduc;->zzb:Lcom/google/android/gms/internal/ads/zzduc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzduc;

    const-string v3, "GESTURE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzduc;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzduc;->zzc:Lcom/google/android/gms/internal/ads/zzduc;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzduc;

    const-string v4, "DEBUG_MENU"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzduc;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzduc;->zzd:Lcom/google/android/gms/internal/ads/zzduc;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/ads/zzduc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzduc;->zze:[Lcom/google/android/gms/internal/ads/zzduc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzduc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzduc;->zze:[Lcom/google/android/gms/internal/ads/zzduc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzduc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzduc;

    return-object v0
.end method
