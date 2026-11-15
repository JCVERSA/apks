.class public final synthetic Lcom/google/android/libraries/places/internal/zzbpt;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzbpu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbpu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpt;->zza:Lcom/google/android/libraries/places/internal/zzbpu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpt;->zza:Lcom/google/android/libraries/places/internal/zzbpu;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpu;->zza:Lcom/google/android/libraries/places/internal/zzbpv;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpv;->zzf(Lcom/google/android/libraries/places/internal/zzbpv;)Lcom/google/android/libraries/places/internal/zzbpq;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbpr;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lcom/google/android/libraries/places/internal/zzbpr;-><init>(Lcom/google/android/libraries/places/internal/zzbpv;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2}, Lcom/google/android/libraries/places/internal/zzbpq;->zzc(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
