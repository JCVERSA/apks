.class public abstract Lk19;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lk19;->a:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lk19;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5cf5d3ed
        0x5812631a
        -0x5d08632a
        0x14def9de
        0x0
        0x0
        0x0
        0x10000000
    .end array-data

    :array_1
    .array-data 4
        -0x54ed7697
        -0x1d12097b
        0x2298a31d
        0x68039276
        -0x2de80a42
        0x3dceec73
        0x1b7c309a
        -0x5e4c66bf
        0x4b9eba7d    # 2.0804858E7f
        -0x34fdb39d    # -8539235.0f
        -0x2ba10c66
        0x29bdf3b
        0x0
        0x0
        0x0
        0x1000000
    .end array-data
.end method

.method public static a([B[I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, v0, p1, v0, v1}, La51;->b([BI[III)V

    return-void
.end method

.method public static b(I[I)V
    .locals 3

    const/4 p0, 0x0

    aget p0, p1, p0

    not-int p0, p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    sget-object v1, Lk19;->a:[I

    const/16 v2, 0x8

    invoke-static {v2, p0, v1, p1}, Lvy6;->i(II[I[I)I

    invoke-static {v2, p1, v0}, Lvy6;->E(I[II)I

    return-void
.end method
