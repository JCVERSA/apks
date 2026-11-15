.class public abstract Landroidx/compose/ui/layout/m;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/ui/layout/l;)Ly/i;
    .locals 4

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/layout/l;->R()Landroidx/compose/ui/layout/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/ui/layout/k;->a(Landroidx/compose/ui/layout/l;Landroidx/compose/ui/layout/l;ZILjava/lang/Object;)Ly/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ly/i;

    .line 17
    .line 18
    invoke-interface {p0}, Landroidx/compose/ui/layout/l;->k()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-static {v1, v2}, Lo0/t;->g(J)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-interface {p0}, Landroidx/compose/ui/layout/l;->k()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v2, v3}, Lo0/t;->f(J)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    int-to-float p0, p0

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {v0, v2, v2, v1, p0}, Ly/i;-><init>(FFFF)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/layout/l;)Ly/i;
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/layout/m;->d(Landroidx/compose/ui/layout/l;)Landroidx/compose/ui/layout/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/ui/layout/k;->a(Landroidx/compose/ui/layout/l;Landroidx/compose/ui/layout/l;ZILjava/lang/Object;)Ly/i;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/layout/l;)Ly/i;
    .locals 12

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/layout/m;->d(Landroidx/compose/ui/layout/l;)Landroidx/compose/ui/layout/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/layout/l;->k()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Lo0/t;->g(J)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-interface {v0}, Landroidx/compose/ui/layout/l;->k()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-static {v2, v3}, Lo0/t;->f(J)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    invoke-static {p0}, Landroidx/compose/ui/layout/m;->b(Landroidx/compose/ui/layout/l;)Ly/i;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ly/i;->f()F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    cmpg-float v5, v3, v4

    .line 33
    .line 34
    if-gez v5, :cond_0

    .line 35
    .line 36
    move v3, v4

    .line 37
    :cond_0
    cmpl-float v5, v3, v1

    .line 38
    .line 39
    if-lez v5, :cond_1

    .line 40
    .line 41
    move v3, v1

    .line 42
    :cond_1
    invoke-virtual {p0}, Ly/i;->i()F

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    cmpg-float v6, v5, v4

    .line 47
    .line 48
    if-gez v6, :cond_2

    .line 49
    .line 50
    move v5, v4

    .line 51
    :cond_2
    cmpl-float v6, v5, v2

    .line 52
    .line 53
    if-lez v6, :cond_3

    .line 54
    .line 55
    move v5, v2

    .line 56
    :cond_3
    invoke-virtual {p0}, Ly/i;->g()F

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    cmpg-float v7, v6, v4

    .line 61
    .line 62
    if-gez v7, :cond_4

    .line 63
    .line 64
    move v6, v4

    .line 65
    :cond_4
    cmpl-float v7, v6, v1

    .line 66
    .line 67
    if-lez v7, :cond_5

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    move v1, v6

    .line 71
    :goto_0
    invoke-virtual {p0}, Ly/i;->c()F

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    cmpg-float v6, p0, v4

    .line 76
    .line 77
    if-gez v6, :cond_6

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_6
    move v4, p0

    .line 81
    :goto_1
    cmpl-float p0, v4, v2

    .line 82
    .line 83
    if-lez p0, :cond_7

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_7
    move v2, v4

    .line 87
    :goto_2
    cmpg-float p0, v3, v1

    .line 88
    .line 89
    if-nez p0, :cond_8

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_8
    cmpg-float p0, v5, v2

    .line 93
    .line 94
    if-nez p0, :cond_9

    .line 95
    .line 96
    :goto_3
    sget-object p0, Ly/i;->e:Ly/i$a;

    .line 97
    .line 98
    invoke-virtual {p0}, Ly/i$a;->a()Ly/i;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_9
    invoke-static {v3, v5}, Ly/h;->a(FF)J

    .line 104
    .line 105
    .line 106
    move-result-wide v6

    .line 107
    invoke-interface {v0, v6, v7}, Landroidx/compose/ui/layout/l;->L(J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    invoke-static {v1, v5}, Ly/h;->a(FF)J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    invoke-interface {v0, v4, v5}, Landroidx/compose/ui/layout/l;->L(J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    invoke-static {v1, v2}, Ly/h;->a(FF)J

    .line 120
    .line 121
    .line 122
    move-result-wide v8

    .line 123
    invoke-interface {v0, v8, v9}, Landroidx/compose/ui/layout/l;->L(J)J

    .line 124
    .line 125
    .line 126
    move-result-wide v8

    .line 127
    invoke-static {v3, v2}, Ly/h;->a(FF)J

    .line 128
    .line 129
    .line 130
    move-result-wide v1

    .line 131
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/l;->L(J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    invoke-static {v6, v7}, Ly/g;->m(J)F

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    invoke-static {v4, v5}, Ly/g;->m(J)F

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-static {v0, v1}, Ly/g;->m(J)F

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-static {v8, v9}, Ly/g;->m(J)F

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    invoke-static {p0, v11}, Ljava/lang/Math;->min(FF)F

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    invoke-static {v6, v7}, Ly/g;->n(J)F

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-static {v4, v5}, Ly/g;->n(J)F

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    invoke-static {v0, v1}, Ly/g;->n(J)F

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-static {v8, v9}, Ly/g;->n(J)F

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    new-instance v1, Ly/i;

    .line 216
    .line 217
    invoke-direct {v1, v11, v4, p0, v0}, Ly/i;-><init>(FFFF)V

    .line 218
    .line 219
    .line 220
    return-object v1
.end method

.method public static final d(Landroidx/compose/ui/layout/l;)Landroidx/compose/ui/layout/l;
    .locals 2

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/layout/l;->R()Landroidx/compose/ui/layout/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    move-object v1, v0

    .line 6
    move-object v0, p0

    .line 7
    move-object p0, v1

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Landroidx/compose/ui/layout/l;->R()Landroidx/compose/ui/layout/l;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of p0, v0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    move-object p0, v0

    .line 20
    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_1
    if-nez p0, :cond_2

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_2
    move-object v1, v0

    .line 32
    move-object v0, p0

    .line 33
    move-object p0, v1

    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    return-object v0
.end method

.method public static final e(Landroidx/compose/ui/layout/l;)J
    .locals 2

    .line 1
    sget-object v0, Ly/g;->b:Ly/g$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly/g$a;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/l;->Y(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static final f(Landroidx/compose/ui/layout/l;)J
    .locals 2

    .line 1
    sget-object v0, Ly/g;->b:Ly/g$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly/g$a;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/l;->L(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method
