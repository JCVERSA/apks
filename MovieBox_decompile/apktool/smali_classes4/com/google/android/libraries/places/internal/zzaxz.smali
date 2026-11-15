.class public final Lcom/google/android/libraries/places/internal/zzaxz;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzaxy;


# static fields
.field private static final zza:Ljava/lang/Object;


# instance fields
.field private volatile zzb:Lcom/google/android/libraries/places/internal/zzaxy;

.field private volatile zzc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/libraries/places/internal/zzaxz;->zza:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzaxy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaxz;->zza:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaxz;->zzc:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaxz;->zzb:Lcom/google/android/libraries/places/internal/zzaxy;

    .line 9
    .line 10
    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzaxy;)Lcom/google/android/libraries/places/internal/zzaxy;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzaxz;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzaxz;-><init>(Lcom/google/android/libraries/places/internal/zzaxy;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaxz;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaxz;->zza:Ljava/lang/Object;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaxz;->zzb:Lcom/google/android/libraries/places/internal/zzaxy;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaxz;->zzc:Ljava/lang/Object;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzdy;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzdy;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaxz;->zzc:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzaxz;->zzb:Lcom/google/android/libraries/places/internal/zzaxy;

    .line 23
    .line 24
    :cond_1
    :goto_0
    return-object v0
.end method
