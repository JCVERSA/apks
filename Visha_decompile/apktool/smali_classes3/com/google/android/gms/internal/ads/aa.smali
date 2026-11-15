.class public abstract Lcom/google/android/gms/internal/ads/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrti;


# instance fields
.field protected zzq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/aa;->zzq:I

    return-void
.end method

.method public static i(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lgri;->j(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract f(Lcui;)I
.end method

.method public g()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lrti;->a()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    new-array v1, v0, [B

    sget-object v2, Lcom/google/android/gms/internal/ads/ha;->b:Ljava/util/logging/Logger;

    new-instance v2, Lcom/google/android/gms/internal/ads/fa;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/fa;-><init>([BII)V

    invoke-interface {p0, v2}, Lrti;->c(Lcom/google/android/gms/internal/ads/ha;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ha;->g()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwk;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/aa;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h()Lcom/google/android/gms/internal/ads/zzhak;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhak;-><init>(Lrti;)V

    return-object v0
.end method

.method public abstract j(I)V
.end method

.method public k(Ljava/io/OutputStream;)V
    .locals 2

    invoke-interface {p0}, Lrti;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->c(I)I

    move-result v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ga;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/ga;-><init>(Ljava/io/OutputStream;I)V

    invoke-interface {p0, v1}, Lrti;->c(Lcom/google/android/gms/internal/ads/ha;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ha;->j()V

    return-void
.end method

.method public l()[B
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lrti;->a()I

    move-result v0

    new-array v1, v0, [B

    sget-object v2, Lcom/google/android/gms/internal/ads/ha;->b:Ljava/util/logging/Logger;

    new-instance v2, Lcom/google/android/gms/internal/ads/fa;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/fa;-><init>([BII)V

    invoke-interface {p0, v2}, Lrti;->c(Lcom/google/android/gms/internal/ads/ha;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ha;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/aa;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serializing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to a "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " threw an IOException (should never happen)."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
