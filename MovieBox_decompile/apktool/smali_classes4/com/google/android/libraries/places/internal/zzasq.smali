.class public abstract Lcom/google/android/libraries/places/internal/zzasq;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final synthetic zze:I = 0x0

.field private static volatile zzf:I = 0x64


# instance fields
.field zza:I

.field final zzb:I

.field zzc:I

.field zzd:Lcom/google/android/libraries/places/internal/zzasr;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzasp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/google/android/libraries/places/internal/zzasq;->zzf:I

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasq;->zzb:I

    .line 7
    .line 8
    const p1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzasq;->zzc:I

    .line 12
    .line 13
    return-void
.end method

.method public static zzF(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    ushr-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    neg-int v0, v0

    .line 6
    xor-int/2addr p0, v0

    .line 7
    return p0
.end method

.method public static zzH(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    const/4 v2, 0x1

    .line 5
    ushr-long/2addr p0, v2

    .line 6
    neg-long v0, v0

    .line 7
    xor-long/2addr p0, v0

    .line 8
    return-wide p0
.end method

.method public static zzI(Ljava/io/InputStream;I)Lcom/google/android/libraries/places/internal/zzasq;
    .locals 2

    .line 1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzaso;

    .line 2
    .line 3
    const/16 v0, 0x1000

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzaso;-><init>(Ljava/io/InputStream;ILcom/google/android/libraries/places/internal/zzasn;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public static zzJ([BII)Lcom/google/android/libraries/places/internal/zzasq;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1, p2, p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzK([BIIZ)Lcom/google/android/libraries/places/internal/zzasq;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method static zzK([BIIZ)Lcom/google/android/libraries/places/internal/zzasq;
    .locals 6

    .line 1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzasm;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v0, p1

    .line 7
    move-object v1, p0

    .line 8
    move v3, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzasm;-><init>([BIIZLcom/google/android/libraries/places/internal/zzasl;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzasm;->zze(I)I
    :try_end_0
    .catch Lcom/google/android/libraries/places/internal/zzauf; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method


# virtual methods
.method public abstract zzA(I)V
.end method

.method public abstract zzC()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzD()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzE(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzG(I)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzasq;->zzc:I

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzasq;->zzc:I

    .line 7
    .line 8
    return p1
.end method

.method public abstract zzb()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzd()I
.end method

.method public abstract zze(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/places/internal/zzauf;
        }
    .end annotation
.end method

.method public abstract zzf()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzg()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzh()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzk()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzl()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzm()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzn()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzo()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzp()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzt()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzu()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzv()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzw()Lcom/google/android/libraries/places/internal/zzask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzx()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzy()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzz(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/places/internal/zzauf;
        }
    .end annotation
.end method
