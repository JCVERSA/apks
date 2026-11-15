.class final Lcom/google/android/libraries/places/internal/zzbgv;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbgy;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbgy;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbgv;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbgv;->zzb:Lcom/google/android/libraries/places/internal/zzbgy;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbgv;->zzb:Lcom/google/android/libraries/places/internal/zzbgy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbgy;->zze(Lcom/google/android/libraries/places/internal/zzbgy;)Lcom/google/android/libraries/places/internal/zzayn;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbgv;->zza:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzayn;->zzc(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
