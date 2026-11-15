.class public final Lcom/google/android/libraries/places/internal/zzbvy;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbws;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbvz;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbws;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbvz;Lcom/google/android/libraries/places/internal/zzbws;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zza:Lcom/google/android/libraries/places/internal/zzbvz;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zzb:Lcom/google/android/libraries/places/internal/zzbws;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zza:Lcom/google/android/libraries/places/internal/zzbvz;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zzb:Lcom/google/android/libraries/places/internal/zzbws;

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbws;->close()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    :try_start_1
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    .line 20
    .line 21
    invoke-static {v2, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    .line 22
    .line 23
    .line 24
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_0
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    .line 26
    .line 27
    invoke-static {v2, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    .line 28
    .line 29
    .line 30
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AsyncTimeout.source("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zzb:Lcom/google/android/libraries/places/internal/zzbws;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ")"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J
    .locals 2

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zza:Lcom/google/android/libraries/places/internal/zzbvz;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbvy;->zzb:Lcom/google/android/libraries/places/internal/zzbws;

    .line 9
    .line 10
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbws;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-object p3, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    .line 15
    .line 16
    invoke-static {p3, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    .line 17
    .line 18
    .line 19
    return-wide p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    :try_start_1
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    .line 24
    .line 25
    invoke-static {p2, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    .line 26
    .line 27
    .line 28
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :goto_0
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbvz;->zza:Lcom/google/android/libraries/places/internal/zzbvw;

    .line 30
    .line 31
    invoke-static {p2, v0}, Lcom/google/android/libraries/places/internal/zzbvw;->zza(Lcom/google/android/libraries/places/internal/zzbvw;Lcom/google/android/libraries/places/internal/zzbvz;)Z

    .line 32
    .line 33
    .line 34
    throw p1
.end method
