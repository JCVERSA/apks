.class final Lcom/google/android/libraries/places/internal/zzbot;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbpo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbot;->zza:Lcom/google/android/libraries/places/internal/zzbpo;

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
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbot;->zza:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzac(Lcom/google/android/libraries/places/internal/zzbpo;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzy(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbft;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbqr;->zzg()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
