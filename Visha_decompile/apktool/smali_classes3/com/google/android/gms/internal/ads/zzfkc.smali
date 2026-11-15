.class public final enum Lcom/google/android/gms/internal/ads/zzfkc;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfkc;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfkc;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfkc;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzfkc;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/ads/zzfkc;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkc;

    const-string v1, "VIDEO_CONTROLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfkc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfkc;->zza:Lcom/google/android/gms/internal/ads/zzfkc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkc;

    const-string v2, "CLOSE_AD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfkc;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfkc;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfkc;

    const-string v3, "NOT_VISIBLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfkc;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfkc;->zzc:Lcom/google/android/gms/internal/ads/zzfkc;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfkc;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfkc;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzfkc;->zzd:Lcom/google/android/gms/internal/ads/zzfkc;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/ads/zzfkc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfkc;->zze:[Lcom/google/android/gms/internal/ads/zzfkc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfkc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkc;->zze:[Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfkc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfkc;

    return-object v0
.end method
