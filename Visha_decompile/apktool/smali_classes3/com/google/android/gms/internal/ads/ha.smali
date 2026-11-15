.class public abstract Lcom/google/android/gms/internal/ads/ha;
.super Lpri;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Z


# instance fields
.field public a:Lasi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ha;->b:Ljava/util/logging/Logger;

    invoke-static {}, Lvui;->a()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/ha;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lyri;)V
    .locals 0

    invoke-direct {p0}, Lpri;-><init>()V

    return-void
.end method

.method public static B(ILrti;Lcui;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result p0

    add-int/2addr p0, p0

    check-cast p1, Lcom/google/android/gms/internal/ads/aa;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/aa;->f(Lcui;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(Lrti;Lcui;)I
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/ads/aa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/aa;->f(Lcui;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static c(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ra;->e(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhaw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static e(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static f(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static bridge synthetic i()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/ha;->c:Z

    return v0
.end method


# virtual methods
.method public abstract A(J)V
.end method

.method public abstract a([BII)V
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ha;->n()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhaw;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/ads/ha;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const-string v2, "com.google.protobuf.CodedOutputStream"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/ha;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwx;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract j()V
.end method

.method public abstract k(B)V
.end method

.method public abstract l(IZ)V
.end method

.method public abstract m(ILcom/google/android/gms/internal/ads/zzgwn;)V
.end method

.method public abstract n()I
.end method

.method public abstract o(II)V
.end method

.method public abstract p(I)V
.end method

.method public abstract q(IJ)V
.end method

.method public abstract r(J)V
.end method

.method public abstract s(II)V
.end method

.method public abstract t(I)V
.end method

.method public abstract u(ILrti;Lcui;)V
.end method

.method public abstract v(ILjava/lang/String;)V
.end method

.method public abstract w(II)V
.end method

.method public abstract x(II)V
.end method

.method public abstract y(I)V
.end method

.method public abstract z(IJ)V
.end method
