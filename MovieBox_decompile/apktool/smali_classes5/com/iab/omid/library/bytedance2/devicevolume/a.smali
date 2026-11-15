.class public Lcom/iab/omid/library/bytedance2/devicevolume/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(II)F
    .locals 1

    .line 1
    if-lez p2, :cond_1

    .line 2
    .line 3
    if-lez p1, :cond_1

    .line 4
    .line 5
    int-to-float p1, p1

    .line 6
    int-to-float p2, p2

    .line 7
    div-float/2addr p1, p2

    .line 8
    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpl-float v0, p1, p2

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    move p1, p2

    .line 15
    :cond_0
    return p1

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    return p1
.end method
