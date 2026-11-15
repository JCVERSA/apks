.class public abstract Lt1;
.super Lp1;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final d:Ld2;


# instance fields
.field public final b:[Lx0;

.field public c:[Lx0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt1$a;

    const-class v1, Lt1;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lt1$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lt1;->d:Ld2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp1;-><init>()V

    sget-object v0, Ly0;->d:[Lx0;

    iput-object v0, p0, Lt1;->b:[Lx0;

    iput-object v0, p0, Lt1;->c:[Lx0;

    return-void
.end method

.method public constructor <init>(Lx0;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lp1;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lx0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lt1;->b:[Lx0;

    iput-object v0, p0, Lt1;->c:[Lx0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'element\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ly0;Z)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lp1;-><init>()V

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ly0;->f()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-virtual {p1}, Ly0;->c()[Lx0;

    move-result-object p1

    invoke-static {p1}, Lt1;->B([Lx0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ly0;->g()[Lx0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lt1;->b:[Lx0;

    if-nez p2, :cond_2

    array-length p2, p1

    if-ge p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_1
    iput-object p1, p0, Lt1;->c:[Lx0;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elementVector\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Z[Lx0;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lp1;-><init>()V

    iput-object p2, p0, Lt1;->b:[Lx0;

    if-nez p1, :cond_1

    array-length p1, p2

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    iput-object p2, p0, Lt1;->c:[Lx0;

    return-void
.end method

.method public constructor <init>([Lx0;Z)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lp1;-><init>()V

    invoke-static {p1}, Lci;->C([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Ly0;->b([Lx0;)[Lx0;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    array-length v2, v0

    if-lt v2, v1, :cond_0

    invoke-static {v0}, Lt1;->B([Lx0;)V

    :cond_0
    iput-object v0, p0, Lt1;->b:[Lx0;

    if-nez p2, :cond_2

    array-length p2, v0

    if-ge p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    iput-object p1, p0, Lt1;->c:[Lx0;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elements\' cannot be null, or contain null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Lx0;[Lx0;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lp1;-><init>()V

    iput-object p1, p0, Lt1;->b:[Lx0;

    iput-object p2, p0, Lt1;->c:[Lx0;

    return-void
.end method

.method public static A([B[B)Z
    .locals 6

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xdf

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xdf

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    if-ge v1, v2, :cond_0

    move v0, v3

    :cond_0
    return v0

    :cond_1
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v3

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_4

    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-eq v4, v5, :cond_3

    and-int/lit16 p0, v4, 0xff

    and-int/lit16 p1, v5, 0xff

    if-ge p0, p1, :cond_2

    move v0, v3

    :cond_2
    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    if-gt p0, p1, :cond_5

    move v0, v3

    :cond_5
    return v0
.end method

.method public static B([Lx0;)V
    .locals 14

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-object v4, p0, v3

    invoke-static {v2}, Lt1;->w(Lx0;)[B

    move-result-object v5

    invoke-static {v4}, Lt1;->w(Lx0;)[B

    move-result-object v6

    invoke-static {v6, v5}, Lt1;->A([B[B)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    move-object v13, v6

    move-object v6, v5

    move-object v5, v13

    :cond_1
    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v7, p0, v1

    invoke-static {v7}, Lt1;->w(Lx0;)[B

    move-result-object v8

    invoke-static {v6, v8}, Lt1;->A([B[B)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v5, v1, -0x2

    aput-object v2, p0, v5

    move-object v2, v4

    move-object v5, v6

    move-object v4, v7

    move-object v6, v8

    goto :goto_3

    :cond_2
    invoke-static {v5, v8}, Lt1;->A([B[B)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v5, v1, -0x2

    aput-object v2, p0, v5

    move-object v2, v7

    move-object v5, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v1, -0x1

    :goto_1
    add-int/lit8 v10, v9, -0x1

    if-lez v10, :cond_5

    add-int/lit8 v9, v9, -0x2

    aget-object v9, p0, v9

    invoke-static {v9}, Lt1;->w(Lx0;)[B

    move-result-object v11

    invoke-static {v11, v8}, Lt1;->A([B[B)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    aput-object v9, p0, v10

    move v9, v10

    goto :goto_1

    :cond_5
    :goto_2
    aput-object v7, p0, v10

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v0, -0x2

    aput-object v2, p0, v1

    sub-int/2addr v0, v3

    aput-object v4, p0, v0

    return-void
.end method

.method public static w(Lx0;)[B
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lx0;->j()Lp1;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lj1;->l(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot encode object added to SET"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x(Ly1;Z)Lt1;
    .locals 1

    sget-object v0, Lt1;->d:Ld2;

    invoke-virtual {v0, p0, p1}, Ld2;->e(Ly1;Z)Lp1;

    move-result-object p0

    check-cast p0, Lt1;

    return-object p0
.end method

.method public static y(Ljava/lang/Object;)Lt1;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lt1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lx0;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lx0;

    invoke-interface {v0}, Lx0;->j()Lp1;

    move-result-object v0

    instance-of v1, v0, Lt1;

    if-eqz v1, :cond_2

    check-cast v0, Lt1;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lt1;->d:Ld2;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Ld2;->b([B)Lp1;

    move-result-object p0

    check-cast p0, Lt1;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct set from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lt1;

    return-object p0
.end method


# virtual methods
.method public C()[Lx0;
    .locals 0

    iget-object p0, p0, Lt1;->b:[Lx0;

    invoke-static {p0}, Ly0;->b([Lx0;)[Lx0;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lt1;->b:[Lx0;

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v2, p0, Lt1;->b:[Lx0;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lx0;->j()Lp1;

    move-result-object v2

    invoke-virtual {v2}, Lp1;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lci$a;

    invoke-virtual {p0}, Lt1;->C()[Lx0;

    move-result-object p0

    invoke-direct {v0, p0}, Lci$a;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public m(Lp1;)Z
    .locals 5

    instance-of v0, p1, Lt1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lt1;

    invoke-virtual {p0}, Lt1;->size()I

    move-result v0

    invoke-virtual {p1}, Lt1;->size()I

    move-result v2

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lt1;->u()Lp1;

    move-result-object p0

    check-cast p0, Lbq1;

    invoke-virtual {p1}, Lt1;->u()Lp1;

    move-result-object p1

    check-cast p1, Lbq1;

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lt1;->b:[Lx0;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lx0;->j()Lp1;

    move-result-object v3

    iget-object v4, p1, Lt1;->b:[Lx0;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lx0;->j()Lp1;

    move-result-object v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Lp1;->m(Lp1;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lt1;->b:[Lx0;

    array-length p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lt1;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "[]"

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lt1;->b:[Lx0;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_1

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public u()Lp1;
    .locals 2

    iget-object v0, p0, Lt1;->c:[Lx0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lt1;->b:[Lx0;

    invoke-virtual {v0}, [Lx0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx0;

    check-cast v0, [Lx0;

    iput-object v0, p0, Lt1;->c:[Lx0;

    invoke-static {v0}, Lt1;->B([Lx0;)V

    :cond_0
    new-instance v0, Lbq1;

    const/4 v1, 0x1

    iget-object p0, p0, Lt1;->c:[Lx0;

    invoke-direct {v0, v1, p0}, Lbq1;-><init>(Z[Lx0;)V

    return-object v0
.end method

.method public v()Lp1;
    .locals 2

    new-instance v0, Lar1;

    iget-object v1, p0, Lt1;->b:[Lx0;

    iget-object p0, p0, Lt1;->c:[Lx0;

    invoke-direct {v0, v1, p0}, Lar1;-><init>([Lx0;[Lx0;)V

    return-object v0
.end method

.method public z(I)Lx0;
    .locals 0

    iget-object p0, p0, Lt1;->b:[Lx0;

    aget-object p0, p0, p1

    return-object p0
.end method
