.class public Lrp1;
.super Lc1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc1;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc1;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final I()[B
    .locals 5

    iget-object v0, p0, Lc1;->b:[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lc1;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc1;->b:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "0000Z"

    invoke-static {v0}, Lu0a;->e(Ljava/lang/String;)[B

    move-result-object v0

    iget-object p0, p0, Lc1;->b:[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lc1;->F()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc1;->b:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "00Z"

    invoke-static {v0}, Lu0a;->e(Ljava/lang/String;)[B

    move-result-object v0

    iget-object p0, p0, Lc1;->b:[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lc1;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc1;->b:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-lez v0, :cond_2

    iget-object v3, p0, Lc1;->b:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lc1;->b:[B

    aget-byte v3, p0, v0

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [B

    invoke-static {p0, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v2, v3, v0

    return-object v3

    :cond_3
    add-int/lit8 v3, v0, 0x2

    new-array v3, v3, [B

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v2, v3, v0

    return-object v3

    :cond_4
    iget-object p0, p0, Lc1;->b:[B

    return-object p0

    :cond_5
    return-object v0
.end method

.method public n(Lo1;Z)V
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0}, Lrp1;->I()[B

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Lo1;->o(ZI[B)V

    return-void
.end method

.method public q(Z)I
    .locals 0

    invoke-virtual {p0}, Lrp1;->I()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p1, p0}, Lo1;->g(ZI)I

    move-result p0

    return p0
.end method

.method public u()Lp1;
    .locals 0

    return-object p0
.end method

.method public v()Lp1;
    .locals 0

    return-object p0
.end method
