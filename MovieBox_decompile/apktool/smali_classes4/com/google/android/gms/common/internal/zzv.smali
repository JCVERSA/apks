.class public final Lcom/google/android/gms/common/internal/zzv;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Ljava/lang/String;

.field private final zzc:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzv;->zzb:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzv;->zza:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/zzv;->zzc:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method final zza()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzv;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method final zzb()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzv;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method final zzc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzv;->zzc:Z

    .line 2
    .line 3
    return v0
.end method
