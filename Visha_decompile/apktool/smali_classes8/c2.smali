.class public abstract Lc2;
.super Lp1;
.source "SourceFile"

# interfaces
.implements Lv1;


# static fields
.field public static final c:Ld2;

.field public static final d:[C


# instance fields
.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc2$a;

    const-class v1, Lc2;

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lc2$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lc2;->c:Ld2;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc2;->d:[C

    return-void

    nop

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([BZ)V
    .locals 0

    invoke-direct {p0}, Lp1;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lci;->f([B)[B

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lc2;->b:[B

    return-void
.end method

.method public static w([B)Lc2;
    .locals 2

    new-instance v0, Lgq1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgq1;-><init>([BZ)V

    return-object v0
.end method

.method public static x(Ljava/lang/StringBuffer;I)V
    .locals 2

    sget-object v0, Lc2;->d:[C

    ushr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static y(Ljava/lang/StringBuffer;I)V
    .locals 6

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-static {p0, p1}, Lc2;->x(Ljava/lang/StringBuffer;I)V

    return-void

    :cond_0
    const/4 v1, 0x5

    new-array v2, v1, [B

    move v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    int-to-byte v5, p1

    aput-byte v5, v2, v4

    ushr-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2

    rsub-int/lit8 p1, v4, 0x5

    add-int/lit8 v3, v3, -0x2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v2, v3

    :goto_1
    add-int/lit8 p1, v3, 0x1

    aget-byte v0, v2, v3

    invoke-static {p0, v0}, Lc2;->x(Ljava/lang/StringBuffer;I)V

    if-lt p1, v1, :cond_1

    return-void

    :cond_1
    move v3, p1

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public final getString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lc2;->b:[B

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Lo1;->f(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "#1C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1, v0}, Lc2;->y(Ljava/lang/StringBuffer;I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lc2;->b:[B

    aget-byte v3, v3, v2

    invoke-static {v1, v3}, Lc2;->x(Ljava/lang/StringBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lc2;->b:[B

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    return p0
.end method

.method public final m(Lp1;)Z
    .locals 1

    instance-of v0, p1, Lc2;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lc2;

    iget-object p0, p0, Lc2;->b:[B

    iget-object p1, p1, Lc2;->b:[B

    invoke-static {p0, p1}, Lci;->b([B[B)Z

    move-result p0

    return p0
.end method

.method public final n(Lo1;Z)V
    .locals 1

    const/16 v0, 0x1c

    iget-object p0, p0, Lc2;->b:[B

    invoke-virtual {p1, p2, v0, p0}, Lo1;->o(ZI[B)V

    return-void
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final q(Z)I
    .locals 0

    iget-object p0, p0, Lc2;->b:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lo1;->g(ZI)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lc2;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
