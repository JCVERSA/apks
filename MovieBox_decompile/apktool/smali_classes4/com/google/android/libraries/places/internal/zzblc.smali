.class final Lcom/google/android/libraries/places/internal/zzblc;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbma;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzblb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblc;->zza:Lcom/google/android/libraries/places/internal/zzbma;

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
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblc;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzw(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzblg;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzP(Lcom/google/android/libraries/places/internal/zzbma;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
