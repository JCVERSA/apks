.class public final enum Lcom/google/android/gms/internal/ads/zzfkh;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfkh;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfkh;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfkh;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/ads/zzfkh;


# instance fields
.field private final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkh;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    const-string v3, "native"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfkh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfkh;->zza:Lcom/google/android/gms/internal/ads/zzfkh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkh;

    const-string v2, "JAVASCRIPT"

    const/4 v3, 0x1

    const-string v4, "javascript"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfkh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfkh;->zzb:Lcom/google/android/gms/internal/ads/zzfkh;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfkh;

    const-string v3, "NONE"

    const/4 v4, 0x2

    const-string v5, "none"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfkh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfkh;->zzc:Lcom/google/android/gms/internal/ads/zzfkh;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/ads/zzfkh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfkh;->zzd:[Lcom/google/android/gms/internal/ads/zzfkh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkh;->zze:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfkh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkh;->zzd:[Lcom/google/android/gms/internal/ads/zzfkh;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfkh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfkh;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfkh;->zze:Ljava/lang/String;

    return-object p0
.end method
