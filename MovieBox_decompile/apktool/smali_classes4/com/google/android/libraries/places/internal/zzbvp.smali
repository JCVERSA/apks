.class public final Lcom/google/android/libraries/places/internal/zzbvp;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzbvs;

.field static final zzb:Lcom/google/android/libraries/places/internal/zzbvq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbvs;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-wide/high16 v2, -0x8000000000000000L

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbvs;-><init>(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbvp;->zza:Lcom/google/android/libraries/places/internal/zzbvs;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbvq;

    .line 13
    .line 14
    invoke-direct {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbvq;-><init>(J)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbvp;->zzb:Lcom/google/android/libraries/places/internal/zzbvq;

    .line 18
    .line 19
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzbvs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbvp;->zza:Lcom/google/android/libraries/places/internal/zzbvs;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 10
    .line 11
    const-string v0, "nope"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method
