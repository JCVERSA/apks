.class public final Lcom/google/android/libraries/places/internal/zzbul;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbui;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbtd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbuj;Lcom/google/android/libraries/places/internal/zzbuk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbuj;->zzb(Lcom/google/android/libraries/places/internal/zzbuj;)Lcom/google/android/libraries/places/internal/zzbui;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbul;->zza:Lcom/google/android/libraries/places/internal/zzbui;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbuj;->zza(Lcom/google/android/libraries/places/internal/zzbuj;)Lcom/google/android/libraries/places/internal/zzbtb;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbtb;->zzb()Lcom/google/android/libraries/places/internal/zzbtd;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbul;->zzb:Lcom/google/android/libraries/places/internal/zzbtd;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbul;->zza:Lcom/google/android/libraries/places/internal/zzbui;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "Request{url="

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "}"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzbtd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbul;->zzb:Lcom/google/android/libraries/places/internal/zzbtd;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzbui;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbul;->zza:Lcom/google/android/libraries/places/internal/zzbui;

    .line 2
    .line 3
    return-object v0
.end method
