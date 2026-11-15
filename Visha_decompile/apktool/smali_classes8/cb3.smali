.class public abstract Lcb3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lab3;I)[B
    .locals 7

    new-array v0, p1, [B

    mul-int/lit8 v1, p1, 0x8

    invoke-interface {p0}, Lab3;->c()I

    move-result v2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    invoke-interface {p0}, Lab3;->b()[B

    move-result-object p0

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Lab3;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    move v2, v3

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-interface {p0}, Lab3;->b()[B

    move-result-object v4

    array-length v5, v4

    sub-int v6, p1, v2

    if-gt v5, v6, :cond_1

    array-length v5, v4

    invoke-static {v4, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    invoke-static {v4, v3, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method
