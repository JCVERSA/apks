.class public abstract Lq6i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(BB)C
    .locals 0

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method
