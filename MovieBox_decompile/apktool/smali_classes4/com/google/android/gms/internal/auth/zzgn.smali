.class final Lcom/google/android/gms/internal/auth/zzgn;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final zza:Ljava/util/Iterator;

.field private static final zzb:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzgl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzgl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/auth/zzgn;->zza:Ljava/util/Iterator;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/auth/zzgm;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzgm;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/auth/zzgn;->zzb:Ljava/lang/Iterable;

    .line 14
    .line 15
    return-void
.end method

.method static zza()Ljava/lang/Iterable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzgn;->zzb:Ljava/lang/Iterable;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic zzb()Ljava/util/Iterator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzgn;->zza:Ljava/util/Iterator;

    .line 2
    .line 3
    return-object v0
.end method
