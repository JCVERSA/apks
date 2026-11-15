.class public Lx3d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[C

.field public static final d:Ljava/util/Map;


# instance fields
.field public a:J

.field public b:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lx3d;->c:[C

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lx3d;->d:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lx3d;->d:Ljava/util/Map;

    sget-object v3, Lx3d;->c:[C

    aget-char v3, v3, v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x6as
        0x6bs
        0x6ds
        0x6es
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method public constructor <init>(DDI)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lx3d;->a:J

    const/4 v0, 0x0

    iput-byte v0, p0, Lx3d;->b:B

    const/16 v0, 0x40

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    const/4 v1, 0x2

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget-byte v5, p0, Lx3d;->b:B

    if-ge v5, p5, :cond_1

    if-eqz v4, :cond_0

    invoke-virtual {p0, p3, p4, v1}, Lx3d;->c(D[D)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lx3d;->c(D[D)V

    :goto_1
    xor-int/2addr v4, v3

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lx3d;->a:J

    sub-int/2addr v0, p5

    shl-long/2addr p1, v0

    iput-wide p1, p0, Lx3d;->a:J

    return-void

    nop

    :array_0
    .array-data 8
        -0x3fa9800000000000L    # -90.0
        0x4056800000000000L    # 90.0
    .end array-data

    :array_1
    .array-data 8
        -0x3f99800000000000L    # -180.0
        0x4066800000000000L    # 180.0
    .end array-data
.end method

.method public static a(DDI)Lx3d;
    .locals 7

    const/16 v0, 0xc

    if-gt p4, v0, :cond_1

    mul-int/lit8 p4, p4, 0x5

    const/16 v0, 0x3c

    if-gt p4, v0, :cond_0

    move v6, p4

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    new-instance p4, Lx3d;

    move-object v1, p4

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lx3d;-><init>(DDI)V

    return-object p4

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A geohash can only be 12 character long."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 8

    iget-byte v0, p0, Lx3d;->b:B

    const/4 v1, 0x5

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lx3d;->a:J

    iget-byte p0, p0, Lx3d;->b:B

    int-to-double v4, p0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p0, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p0, :cond_0

    const-wide/high16 v5, -0x800000000000000L

    and-long/2addr v5, v2

    const/16 v7, 0x3b

    ushr-long/2addr v5, v7

    long-to-int v5, v5

    sget-object v6, Lx3d;->c:[C

    aget-char v5, v6, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shl-long/2addr v2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot convert a geohash to base32 if the precision is not a multiple of 5."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(D[D)V
    .locals 6

    const/4 v0, 0x0

    aget-wide v1, p3, v0

    const/4 v3, 0x1

    aget-wide v4, p3, v3

    add-double/2addr v1, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v4

    cmpl-double p1, p1, v1

    if-ltz p1, :cond_0

    iget-byte p1, p0, Lx3d;->b:B

    add-int/2addr p1, v3

    int-to-byte p1, p1

    iput-byte p1, p0, Lx3d;->b:B

    iget-wide p1, p0, Lx3d;->a:J

    shl-long/2addr p1, v3

    const-wide/16 v3, 0x1

    or-long/2addr p1, v3

    iput-wide p1, p0, Lx3d;->a:J

    aput-wide v1, p3, v0

    goto :goto_0

    :cond_0
    iget-byte p1, p0, Lx3d;->b:B

    add-int/2addr p1, v3

    int-to-byte p1, p1

    iput-byte p1, p0, Lx3d;->b:B

    iget-wide p1, p0, Lx3d;->a:J

    shl-long/2addr p1, v3

    iput-wide p1, p0, Lx3d;->a:J

    aput-wide v1, p3, v3

    :goto_0
    return-void
.end method
