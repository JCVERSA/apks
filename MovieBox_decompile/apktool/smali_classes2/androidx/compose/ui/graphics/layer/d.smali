.class public abstract Landroidx/compose/ui/graphics/layer/d;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lz/g;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lz/g;->G0()Lz/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p0}, Lz/g;->G0()Lz/d;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Lz/d;->g()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/k4;)V
    .locals 8

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/graphics/k4$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/graphics/k4$b;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$b;->b()Ly/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ly/i;->f()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$b;->b()Ly/i;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ly/i;->i()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v0, v1}, Ly/h;->a(FF)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$b;->b()Ly/i;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ly/i;->k()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$b;->b()Ly/i;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ly/i;->e()F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {v2, p1}, Ly/n;->a(FF)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->R(JJ)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/k4$a;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    check-cast p1, Landroidx/compose/ui/graphics/k4$a;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$a;->b()Landroidx/compose/ui/graphics/Path;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->O(Landroidx/compose/ui/graphics/Path;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/graphics/k4$c;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    check-cast p1, Landroidx/compose/ui/graphics/k4$c;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$c;->c()Landroidx/compose/ui/graphics/Path;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$c;->c()Landroidx/compose/ui/graphics/Path;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->O(Landroidx/compose/ui/graphics/Path;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$c;->b()Ly/k;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ly/k;->e()F

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p1}, Ly/k;->g()F

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v0, v1}, Ly/h;->a(FF)J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    invoke-virtual {p1}, Ly/k;->j()F

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {p1}, Ly/k;->d()F

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-static {v0, v1}, Ly/n;->a(FF)J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    invoke-virtual {p1}, Ly/k;->b()J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    invoke-static {v0, v1}, Ly/a;->d(J)F

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    move-object v2, p0

    .line 122
    invoke-virtual/range {v2 .. v7}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->W(JJF)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_0
    return-void
.end method
