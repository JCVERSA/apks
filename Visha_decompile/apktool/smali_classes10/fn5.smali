.class public abstract Lfn5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BLsb2;)V
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lsb2;->update([BII)V

    return-void
.end method

.method public static b(SLsb2;)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lsb2;->b(B)V

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lsb2;->b(B)V

    return-void
.end method

.method public static c(ILsb2;)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lsb2;->b(B)V

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lsb2;->b(B)V

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lsb2;->b(B)V

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lsb2;->b(B)V

    return-void
.end method
