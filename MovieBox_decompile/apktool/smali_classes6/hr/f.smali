.class public abstract Lhr/f;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(J)Ljava/lang/String;
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v2, "error"

    .line 12
    .line 13
    const-string v3, "formatNumber count< 0"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "0"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 23
    .line 24
    cmp-long v0, p0, v0

    .line 25
    .line 26
    if-gez v0, :cond_1

    .line 27
    .line 28
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-wide/32 v0, 0xf4240

    .line 34
    .line 35
    .line 36
    cmp-long v0, p0, v0

    .line 37
    .line 38
    const-string v1, "divide(...)"

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    const/4 v3, 0x1

    .line 42
    if-gez v0, :cond_2

    .line 43
    .line 44
    new-instance v0, Ljava/math/BigDecimal;

    .line 45
    .line 46
    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 47
    .line 48
    .line 49
    new-instance p0, Ljava/math/BigDecimal;

    .line 50
    .line 51
    const/16 p1, 0x3e8

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0, v3, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p0, " k"

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    .line 82
    .line 83
    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 84
    .line 85
    .line 86
    new-instance p0, Ljava/math/BigDecimal;

    .line 87
    .line 88
    const p1, 0xf4240

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p0, v3, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p0, " m"

    .line 110
    .line 111
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    :goto_0
    return-object p0
.end method
