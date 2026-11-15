.class final Lcom/google/android/libraries/places/internal/zzbpk;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbpl;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpk;->zza:Lcom/google/android/libraries/places/internal/zzbpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpk;->zza:Lcom/google/android/libraries/places/internal/zzbpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzac(Lcom/google/android/libraries/places/internal/zzbpo;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzy(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbft;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqr;->zzg()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
