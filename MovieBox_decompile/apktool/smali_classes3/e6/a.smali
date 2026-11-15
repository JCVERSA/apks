.class public abstract Le6/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    sput v0, Le6/a;->a:I

    .line 4
    .line 5
    return-void
.end method

.method public static a(JJ)I
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    long-to-double p0, p0

    .line 9
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 10
    .line 11
    mul-double/2addr p0, v2

    .line 12
    long-to-double p2, p2

    .line 13
    div-double/2addr p0, p2

    .line 14
    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    .line 15
    .line 16
    mul-double/2addr p0, p2

    .line 17
    double-to-int p0, p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p0, v1

    .line 20
    :goto_0
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/16 p1, 0x64

    .line 25
    .line 26
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/32 v1, 0xea60

    .line 7
    .line 8
    .line 9
    div-long v3, p0, v1

    .line 10
    .line 11
    const-wide/32 v5, 0x36ee80

    .line 12
    .line 13
    .line 14
    rem-long/2addr p0, v5

    .line 15
    rem-long/2addr p0, v1

    .line 16
    const-wide/16 v1, 0x3e8

    .line 17
    .line 18
    div-long/2addr p0, v1

    .line 19
    const-wide/16 v1, 0xa

    .line 20
    .line 21
    cmp-long v5, v3, v1

    .line 22
    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    if-ltz v5, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    cmp-long v5, v3, v6

    .line 33
    .line 34
    if-lez v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :goto_0
    const-string v3, ":"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    cmp-long v1, p0, v1

    .line 55
    .line 56
    if-ltz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    cmp-long v1, p0, v6

    .line 63
    .line 64
    if-lez v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public static c(Landroid/view/View;Z)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    sget p1, Le6/a;->a:I

    .line 12
    .line 13
    const/16 v0, 0x13

    .line 14
    .line 15
    if-lt p1, v0, :cond_2

    .line 16
    .line 17
    const/16 p1, 0xf06

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    const/16 v0, 0x10

    .line 24
    .line 25
    if-lt p1, v0, :cond_3

    .line 26
    .line 27
    const/4 p1, 0x5

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
