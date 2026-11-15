.class public abstract Lo4i;
.super Lsrh;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lx3i;)V
    .locals 0

    invoke-direct {p0}, Lsrh;-><init>()V

    return-void
.end method

.method public static v(Lg0j;)I
    .locals 1

    invoke-interface {p0}, Lg0j;->zzn()I

    move-result p0

    invoke-static {p0}, Lo4i;->w(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static w(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static x(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-virtual {p0}, Lo4i;->b()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lo4i;->b()I

    move-result p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Wrote more data than expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract b()I
.end method

.method public abstract c(B)V
.end method

.method public abstract d(IZ)V
.end method

.method public abstract e([BII)V
.end method

.method public abstract f(ILcom/google/android/gms/internal/play_billing/zzfp;)V
.end method

.method public abstract g(Lcom/google/android/gms/internal/play_billing/zzfp;)V
.end method

.method public abstract h(II)V
.end method

.method public abstract i(I)V
.end method

.method public abstract j(IJ)V
.end method

.method public abstract k(J)V
.end method

.method public abstract l(II)V
.end method

.method public abstract m(I)V
.end method

.method public abstract n(Lg0j;)V
.end method

.method public abstract o(ILjava/lang/String;)V
.end method

.method public abstract p(Ljava/lang/String;)V
.end method

.method public abstract q(II)V
.end method

.method public abstract r(II)V
.end method

.method public abstract s(I)V
.end method

.method public abstract t(IJ)V
.end method

.method public abstract u(J)V
.end method
