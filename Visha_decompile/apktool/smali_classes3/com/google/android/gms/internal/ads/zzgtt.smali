.class public final enum Lcom/google/android/gms/internal/ads/zzgtt;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lpsi;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzgtt;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzgtt;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzgtt;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzgtt;

.field public static final enum zze:Lcom/google/android/gms/internal/ads/zzgtt;

.field public static final enum zzf:Lcom/google/android/gms/internal/ads/zzgtt;

.field public static final enum zzg:Lcom/google/android/gms/internal/ads/zzgtt;

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/ads/zzgtt;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgtt;

    const-string v1, "UNKNOWN_PREFIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzgtt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zza:Lcom/google/android/gms/internal/ads/zzgtt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgtt;

    const-string v2, "TINK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzgtt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgtt;->zzb:Lcom/google/android/gms/internal/ads/zzgtt;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgtt;

    const-string v3, "LEGACY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzgtt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzgtt;->zzc:Lcom/google/android/gms/internal/ads/zzgtt;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgtt;

    const-string v4, "RAW"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/ads/zzgtt;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgtt;

    const-string v5, "CRUNCHY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzgtt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/ads/zzgtt;->zze:Lcom/google/android/gms/internal/ads/zzgtt;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgtt;

    const-string v6, "WITH_ID_REQUIREMENT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/gms/internal/ads/zzgtt;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzgtt;->zzf:Lcom/google/android/gms/internal/ads/zzgtt;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzgtt;

    const/4 v7, 0x6

    const/4 v8, -0x1

    const-string v9, "UNRECOGNIZED"

    invoke-direct {v6, v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzgtt;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/ads/zzgtt;->zzg:Lcom/google/android/gms/internal/ads/zzgtt;

    filled-new-array/range {v0 .. v6}, [Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zzh:[Lcom/google/android/gms/internal/ads/zzgtt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzi:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzgtt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zzh:[Lcom/google/android/gms/internal/ads/zzgtt;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzgtt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzgtt;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/ads/zzgtt;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzf:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zze:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzc:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzb:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zza:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtt;->zza()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zzg:Lcom/google/android/gms/internal/ads/zzgtt;

    if-eq p0, v0, :cond_0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzi:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
