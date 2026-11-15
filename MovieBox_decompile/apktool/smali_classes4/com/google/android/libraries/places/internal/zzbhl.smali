.class final Lcom/google/android/libraries/places/internal/zzbhl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbhy;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbhy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/libraries/places/internal/zzbhl;->zza:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbhl;->zzb:Lcom/google/android/libraries/places/internal/zzbhy;

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
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbhl;->zzb:Lcom/google/android/libraries/places/internal/zzbhy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbhy;->zzd(Lcom/google/android/libraries/places/internal/zzbhy;)Lcom/google/android/libraries/places/internal/zzbfr;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbhl;->zza:I

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzm(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
