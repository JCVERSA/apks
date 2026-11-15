.class public final enum Lcom/google/android/gms/measurement/internal/zzjg;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/measurement/internal/zzjg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzjg;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzjg;

.field private static final synthetic zzc:[Lcom/google/android/gms/measurement/internal/zzjg;


# instance fields
.field private final zzd:[Lcom/google/android/gms/measurement/internal/zzje$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjg;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 5
    .line 6
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object v3, v2, v4

    .line 10
    .line 11
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    aput-object v3, v2, v5

    .line 15
    .line 16
    const-string v3, "STORAGE"

    .line 17
    .line 18
    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzjg;-><init>(Ljava/lang/String;I[Lcom/google/android/gms/measurement/internal/zzje$zza;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzjg;->zza:Lcom/google/android/gms/measurement/internal/zzjg;

    .line 22
    .line 23
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzjg;

    .line 24
    .line 25
    new-array v3, v5, [Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 26
    .line 27
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 28
    .line 29
    aput-object v6, v3, v4

    .line 30
    .line 31
    const-string v6, "DMA"

    .line 32
    .line 33
    invoke-direct {v2, v6, v5, v3}, Lcom/google/android/gms/measurement/internal/zzjg;-><init>(Ljava/lang/String;I[Lcom/google/android/gms/measurement/internal/zzje$zza;)V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lcom/google/android/gms/measurement/internal/zzjg;->zzb:Lcom/google/android/gms/measurement/internal/zzjg;

    .line 37
    .line 38
    new-array v1, v1, [Lcom/google/android/gms/measurement/internal/zzjg;

    .line 39
    .line 40
    aput-object v0, v1, v4

    .line 41
    .line 42
    aput-object v2, v1, v5

    .line 43
    .line 44
    sput-object v1, Lcom/google/android/gms/measurement/internal/zzjg;->zzc:[Lcom/google/android/gms/measurement/internal/zzjg;

    .line 45
    .line 46
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/google/android/gms/measurement/internal/zzje$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/measurement/internal/zzje$zza;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzd:[Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzjg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjg;->zzc:[Lcom/google/android/gms/measurement/internal/zzjg;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzjg;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzjg;

    .line 8
    .line 9
    return-object v0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzjg;)[Lcom/google/android/gms/measurement/internal/zzje$zza;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzd:[Lcom/google/android/gms/measurement/internal/zzje$zza;

    return-object p0
.end method


# virtual methods
.method public final zza()[Lcom/google/android/gms/measurement/internal/zzje$zza;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjg;->zzd:[Lcom/google/android/gms/measurement/internal/zzje$zza;

    return-object v0
.end method
