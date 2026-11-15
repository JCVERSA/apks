.class public final Lcom/mbridge/msdk/foundation/download/utils/Utils;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDownloadRate(JJ)I
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-eqz v2, :cond_2

    .line 6
    .line 7
    cmp-long v0, p2, v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    cmp-long v0, p0, p2

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/16 p0, 0x64

    .line 17
    .line 18
    return p0

    .line 19
    :cond_1
    long-to-double p2, p2

    .line 20
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 21
    .line 22
    mul-double/2addr p2, v0

    .line 23
    long-to-double p0, p0

    .line 24
    mul-double/2addr p0, v0

    .line 25
    div-double/2addr p2, p0

    .line 26
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    .line 27
    .line 28
    mul-double/2addr p2, p0

    .line 29
    double-to-int p0, p2

    .line 30
    return p0

    .line 31
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method
