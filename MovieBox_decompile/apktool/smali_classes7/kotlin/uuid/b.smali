.class Lkotlin/uuid/b;
.super Lkotlin/uuid/a;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/uuid/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d(J[BIII)V
    .locals 4

    .line 1
    const-string v0, "dst"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    rsub-int/lit8 p4, p4, 0x7

    .line 7
    .line 8
    rsub-int/lit8 p5, p5, 0x8

    .line 9
    .line 10
    if-gt p5, p4, :cond_0

    .line 11
    .line 12
    :goto_0
    shl-int/lit8 v0, p4, 0x3

    .line 13
    .line 14
    shr-long v0, p0, v0

    .line 15
    .line 16
    const-wide/16 v2, 0xff

    .line 17
    .line 18
    and-long/2addr v0, v2

    .line 19
    long-to-int v0, v0

    .line 20
    invoke-static {}, Lkotlin/text/HexExtensionsKt;->a()[I

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    aget v0, v1, v0

    .line 25
    .line 26
    add-int/lit8 v1, p3, 0x1

    .line 27
    .line 28
    shr-int/lit8 v2, v0, 0x8

    .line 29
    .line 30
    int-to-byte v2, v2

    .line 31
    aput-byte v2, p2, p3

    .line 32
    .line 33
    add-int/lit8 p3, p3, 0x2

    .line 34
    .line 35
    int-to-byte v0, v0

    .line 36
    aput-byte v0, p2, v1

    .line 37
    .line 38
    if-eq p4, p5, :cond_0

    .line 39
    .line 40
    add-int/lit8 p4, p4, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public static final e([BIJ)V
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    :goto_0
    const/4 v1, -0x1

    .line 8
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    shl-int/lit8 v1, v0, 0x3

    .line 11
    .line 12
    add-int/lit8 v2, p1, 0x1

    .line 13
    .line 14
    shr-long v3, p2, v1

    .line 15
    .line 16
    long-to-int v1, v3

    .line 17
    int-to-byte v1, v1

    .line 18
    aput-byte v1, p0, p1

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    move p1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
