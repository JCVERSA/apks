.class public Lqo/b;
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

.method public static a(Landroid/content/Context;IIII)[I
    .locals 6

    .line 1
    const v5, 0x3f3851ec    # 0.72f

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    invoke-static/range {v0 .. v5}, Lqo/b;->b(Landroid/content/Context;IIIIF)[I

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static b(Landroid/content/Context;IIIIF)[I
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sget-object p3, Lzg/h;->a:Lzg/h;

    .line 4
    .line 5
    invoke-virtual {p3, p0}, Lzg/h;->e(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    :cond_0
    if-nez p4, :cond_1

    .line 10
    .line 11
    sget-object p4, Lzg/h;->a:Lzg/h;

    .line 12
    .line 13
    invoke-virtual {p4, p0}, Lzg/h;->c(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    :cond_1
    int-to-float p0, p1

    .line 18
    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    mul-float/2addr p0, p1

    .line 21
    int-to-float p2, p2

    .line 22
    div-float/2addr p0, p2

    .line 23
    mul-float/2addr p0, p1

    .line 24
    cmpg-float p1, p0, p1

    .line 25
    .line 26
    if-gez p1, :cond_2

    .line 27
    .line 28
    int-to-float p1, p3

    .line 29
    mul-float/2addr p1, p5

    .line 30
    :goto_0
    float-to-int p1, p1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    int-to-float p1, p3

    .line 33
    const p2, 0x3f6b851f    # 0.92f

    .line 34
    .line 35
    .line 36
    mul-float/2addr p1, p2

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    int-to-float p2, p1

    .line 39
    div-float/2addr p2, p0

    .line 40
    float-to-int p2, p2

    .line 41
    int-to-float p3, p4

    .line 42
    mul-float/2addr p3, p5

    .line 43
    float-to-int p3, p3

    .line 44
    if-le p2, p3, :cond_3

    .line 45
    .line 46
    int-to-float p1, p3

    .line 47
    mul-float/2addr p1, p0

    .line 48
    float-to-int p1, p1

    .line 49
    move p2, p3

    .line 50
    :cond_3
    filled-new-array {p1, p2}, [I

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
