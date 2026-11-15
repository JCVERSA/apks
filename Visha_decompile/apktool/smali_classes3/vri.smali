.class public abstract Lvri;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:I = 0x64


# instance fields
.field public a:I

.field public final b:I

.field public c:Lwri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public synthetic constructor <init>(Luri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Lvri;->d:I

    iput p1, p0, Lvri;->b:I

    return-void
.end method

.method public static c(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    neg-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static d(J)J
    .locals 3

    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const/4 v2, 0x1

    ushr-long/2addr p0, v2

    neg-long v0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static e(Ljava/io/InputStream;I)Lvri;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lzsi;->b:[B

    array-length p1, p0

    const/4 p1, 0x0

    invoke-static {p0, p1, p1, p1}, Lvri;->f([BIIZ)Lvri;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/ea;

    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/ea;-><init>(Ljava/io/InputStream;ILuri;)V

    return-object p1
.end method

.method public static f([BIIZ)Lvri;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/ads/ca;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ca;-><init>([BIIZLuri;)V

    :try_start_0
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/ca;->j(I)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract A(I)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract g()D
.end method

.method public abstract h()F
.end method

.method public abstract i()I
.end method

.method public abstract j(I)I
.end method

.method public abstract k()I
.end method

.method public abstract l()I
.end method

.method public abstract m()I
.end method

.method public abstract n()I
.end method

.method public abstract o()I
.end method

.method public abstract p()I
.end method

.method public abstract q()I
.end method

.method public abstract r()J
.end method

.method public abstract s()J
.end method

.method public abstract t()J
.end method

.method public abstract u()J
.end method

.method public abstract v()J
.end method

.method public abstract w()Lcom/google/android/gms/internal/ads/zzgwn;
.end method

.method public abstract x()Ljava/lang/String;
.end method

.method public abstract y()Ljava/lang/String;
.end method

.method public abstract z(I)V
.end method
