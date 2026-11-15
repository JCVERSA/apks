.class public abstract Lfgc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[B

.field public static final c:[I

.field public static final d:[Li53;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lfgc;->a:[I

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lfgc;->b:[B

    new-array v1, v0, [I

    sput-object v1, Lfgc;->c:[I

    new-array v0, v0, [Li53;

    sput-object v0, Lfgc;->d:[Li53;

    return-void

    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public static a(Li53;)V
    .locals 3

    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lt43;->u()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lt43;->r()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    :goto_0
    invoke-static {v1}, Lfgc;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Lfgc$a;

    invoke-direct {v2, v1}, Lfgc$a;-><init>(I)V

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1, v2}, Lt43;->y(Li53;Ljava/lang/String;Lpd8;)Lqd8;

    return-void
.end method

.method public static b(I)I
    .locals 2

    sget-object v0, Lfgc;->a:[I

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lfgc;->c(I[II)I

    move-result p0

    return p0
.end method

.method public static c(I[II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    if-ge p0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x2

    add-int/2addr v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
