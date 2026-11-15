.class public final Lkotlin/random/PlatformRandomKt;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u001a\u001f\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "",
        "hi26",
        "low27",
        "",
        "a",
        "(II)D",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(II)D
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    const/16 p0, 0x1b

    .line 3
    .line 4
    shl-long/2addr v0, p0

    .line 5
    int-to-long p0, p1

    .line 6
    add-long/2addr v0, p0

    .line 7
    long-to-double p0, v0

    .line 8
    const-wide/high16 v0, 0x4340000000000000L    # 9.007199254740992E15

    .line 9
    .line 10
    div-double/2addr p0, v0

    .line 11
    return-wide p0
.end method
