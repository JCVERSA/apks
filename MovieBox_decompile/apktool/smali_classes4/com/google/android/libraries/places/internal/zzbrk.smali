.class final Lcom/google/android/libraries/places/internal/zzbrk;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbts;


# static fields
.field private static final zza:Ljava/util/logging/Logger;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzbrj;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbts;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbsi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzbsf;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbrk;->zza:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbrj;Lcom/google/android/libraries/places/internal/zzbts;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsi;

    .line 5
    .line 6
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 7
    .line 8
    const-class v2, Lcom/google/android/libraries/places/internal/zzbsf;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbsi;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    move-object v6, v0

    .line 9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbrk;->zza:Ljava/util/logging/Logger;

    .line 14
    .line 15
    const-class v2, Ljava/io/IOException;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 24
    .line 25
    :goto_0
    move-object v2, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :goto_1
    const-string v4, "close"

    .line 31
    .line 32
    const-string v5, "Failed closing connection"

    .line 33
    .line 34
    const-string v3, "io.grpc.okhttp.ExceptionHandlingFrameWriter"

    .line 35
    .line 36
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbsi;->zzi(I)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbts;->zza(Lcom/google/android/libraries/places/internal/zzbue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final zzb(ZII)V
    .locals 6

    .line 1
    int-to-long v0, p2

    .line 2
    int-to-long v2, p3

    .line 3
    const/16 v4, 0x20

    .line 4
    .line 5
    shl-long/2addr v0, v4

    .line 6
    const-wide v4, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v2, v4

    .line 12
    or-long/2addr v0, v2

    .line 13
    const/4 v2, 0x2

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 17
    .line 18
    invoke-virtual {v3, v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzbsi;->zze(IJ)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 23
    .line 24
    invoke-virtual {v3, v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzbsi;->zzd(IJ)V

    .line 25
    .line 26
    .line 27
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 28
    .line 29
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbts;->zzb(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p1

    .line 34
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 35
    .line 36
    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/libraries/places/internal/zzbsi;->zzg(IILcom/google/android/libraries/places/internal/zzbtp;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbts;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final zzd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbts;->zzd()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zze()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbts;->zze()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzf(ZILcom/google/android/libraries/places/internal/zzbwb;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p1

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzbsi;->zza(IILcom/google/android/libraries/places/internal/zzbwb;IZ)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbts;->zzf(ZILcom/google/android/libraries/places/internal/zzbwb;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbts;->zzg()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzh(ILcom/google/android/libraries/places/internal/zzbtp;[B)V
    .locals 3

    .line 1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 4
    .line 5
    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzbwe;->zzb([B)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v1, v2, p2, v0}, Lcom/google/android/libraries/places/internal/zzbsi;->zzb(IILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 15
    .line 16
    invoke-interface {p1, v2, p2, p3}, Lcom/google/android/libraries/places/internal/zzbts;->zzh(ILcom/google/android/libraries/places/internal/zzbtp;[B)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbts;->zzg()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 26
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 27
    .line 28
    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final zzi(Lcom/google/android/libraries/places/internal/zzbue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzbsi;->zzh(ILcom/google/android/libraries/places/internal/zzbue;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbts;->zzi(Lcom/google/android/libraries/places/internal/zzbue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final zzj(ZZIILjava/util/List;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v3, p3

    .line 7
    move-object v5, p5

    .line 8
    invoke-interface/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzbts;->zzj(ZZIILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 14
    .line 15
    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzk(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsi;->zzj(IIJ)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzc:Lcom/google/android/libraries/places/internal/zzbts;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbts;->zzk(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbrk;->zzb:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
