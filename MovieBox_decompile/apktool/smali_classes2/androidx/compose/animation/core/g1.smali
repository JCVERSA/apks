.class public abstract Landroidx/compose/animation/core/g1;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ly/i;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ly/i;

    .line 2
    .line 3
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v1, v1, v1}, Ly/i;-><init>(FFFF)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroidx/compose/animation/core/g1;->a:Ly/i;

    .line 13
    .line 14
    sget-object v0, Lkotlin/jvm/internal/IntCompanionObject;->a:Lkotlin/jvm/internal/IntCompanionObject;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->c(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/s0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v3, Lo0/t;->b:Lo0/t$a;

    .line 31
    .line 32
    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->g(Lo0/t$a;)Landroidx/compose/animation/core/s0;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    sget-object v4, Lo0/p;->b:Lo0/p$a;

    .line 41
    .line 42
    invoke-static {v4}, Landroidx/compose/animation/core/VectorConvertersKt;->f(Lo0/p$a;)Landroidx/compose/animation/core/s0;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v4, Lkotlin/jvm/internal/FloatCompanionObject;->a:Lkotlin/jvm/internal/FloatCompanionObject;

    .line 51
    .line 52
    invoke-static {v4}, Landroidx/compose/animation/core/VectorConvertersKt;->b(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/s0;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const v5, 0x3c23d70a    # 0.01f

    .line 57
    .line 58
    .line 59
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    sget-object v5, Ly/i;->e:Ly/i$a;

    .line 68
    .line 69
    invoke-static {v5}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Ly/i$a;)Landroidx/compose/animation/core/s0;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v5, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    sget-object v6, Ly/m;->b:Ly/m$a;

    .line 78
    .line 79
    invoke-static {v6}, Landroidx/compose/animation/core/VectorConvertersKt;->j(Ly/m$a;)Landroidx/compose/animation/core/s0;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {v6, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    sget-object v7, Ly/g;->b:Ly/g$a;

    .line 88
    .line 89
    invoke-static {v7}, Landroidx/compose/animation/core/VectorConvertersKt;->h(Ly/g$a;)Landroidx/compose/animation/core/s0;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-static {v7, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sget-object v7, Lo0/i;->b:Lo0/i$a;

    .line 98
    .line 99
    invoke-static {v7}, Landroidx/compose/animation/core/VectorConvertersKt;->d(Lo0/i$a;)Landroidx/compose/animation/core/s0;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    const v8, 0x3dcccccd    # 0.1f

    .line 104
    .line 105
    .line 106
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    sget-object v9, Lo0/k;->b:Lo0/k$a;

    .line 115
    .line 116
    invoke-static {v9}, Landroidx/compose/animation/core/VectorConvertersKt;->e(Lo0/k$a;)Landroidx/compose/animation/core/s0;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    const/16 v9, 0x9

    .line 125
    .line 126
    new-array v9, v9, [Lkotlin/Pair;

    .line 127
    .line 128
    const/4 v10, 0x0

    .line 129
    aput-object v0, v9, v10

    .line 130
    .line 131
    const/4 v0, 0x1

    .line 132
    aput-object v3, v9, v0

    .line 133
    .line 134
    const/4 v0, 0x2

    .line 135
    aput-object v1, v9, v0

    .line 136
    .line 137
    const/4 v0, 0x3

    .line 138
    aput-object v4, v9, v0

    .line 139
    .line 140
    const/4 v0, 0x4

    .line 141
    aput-object v5, v9, v0

    .line 142
    .line 143
    const/4 v0, 0x5

    .line 144
    aput-object v6, v9, v0

    .line 145
    .line 146
    const/4 v0, 0x6

    .line 147
    aput-object v2, v9, v0

    .line 148
    .line 149
    const/4 v0, 0x7

    .line 150
    aput-object v7, v9, v0

    .line 151
    .line 152
    const/16 v0, 0x8

    .line 153
    .line 154
    aput-object v8, v9, v0

    .line 155
    .line 156
    invoke-static {v9}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sput-object v0, Landroidx/compose/animation/core/g1;->b:Ljava/util/Map;

    .line 161
    .line 162
    return-void
.end method

.method public static final a(Lo0/i$a;)F
    .locals 0

    .line 1
    const p0, 0x3dcccccd    # 0.1f

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lo0/i;->g(F)F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static final b(Ly/g$a;)J
    .locals 2

    .line 1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    invoke-static {p0, p0}, Ly/h;->a(FF)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public static final c(Ly/m$a;)J
    .locals 2

    .line 1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    invoke-static {p0, p0}, Ly/n;->a(FF)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public static final d(Ly/i$a;)Ly/i;
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/animation/core/g1;->a:Ly/i;

    .line 2
    .line 3
    return-object p0
.end method
