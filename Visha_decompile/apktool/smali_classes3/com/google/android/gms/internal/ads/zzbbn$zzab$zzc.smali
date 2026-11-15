.class public final enum Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lpsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;",
        ">;",
        "Lpsi;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

.field public static final zzd:I = 0x0

.field public static final zze:I = 0x1

.field public static final zzf:I = 0x2

.field private static final zzg:Ltsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltsi;"
        }
    .end annotation
.end field

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    const-string v1, "NETWORKTYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    const-string v1, "CELL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    const-string v1, "WIFI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzf()[Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzh:[Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc$a;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzg:Ltsi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzi:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzh:[Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    return-object p0
.end method

.method public static zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    return-object p0
.end method

.method public static zzd()Ltsi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltsi;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzg:Ltsi;

    return-object v0
.end method

.method public static zze()Lusi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/u0;->a:Lusi;

    return-object v0
.end method

.method private static synthetic zzf()[Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zza()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzi:I

    return p0
.end method
