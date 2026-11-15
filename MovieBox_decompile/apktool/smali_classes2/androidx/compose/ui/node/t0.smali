.class public abstract Landroidx/compose/ui/node/t0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/collection/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/collection/q0;->b()Landroidx/collection/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Landroidx/compose/ui/node/t0;->a:Landroidx/collection/k0;

    .line 6
    .line 7
    return-void
.end method

.method public static final a(Landroidx/compose/ui/f$c;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "autoInvalidateInsertedNode called on unattached node"

    .line 8
    .line 9
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/t0;->b(Landroidx/compose/ui/f$c;II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final b(Landroidx/compose/ui/f$c;II)V
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/compose/ui/node/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Landroidx/compose/ui/node/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/node/i;->E1()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    and-int/2addr v1, p1

    .line 13
    invoke-static {p0, v1, p2}, Landroidx/compose/ui/node/t0;->c(Landroidx/compose/ui/f$c;II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/node/i;->E1()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    not-int p0, p0

    .line 21
    and-int/2addr p0, p1

    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-static {p1, p0, p2}, Landroidx/compose/ui/node/t0;->b(Landroidx/compose/ui/f$c;II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    and-int/2addr p1, v0

    .line 41
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/t0;->c(Landroidx/compose/ui/f$c;II)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method private static final c(Landroidx/compose/ui/f$c;II)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->h1()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/2addr v1, p1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    instance-of v1, p0, Landroidx/compose/ui/node/x;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object v1, p0

    .line 23
    check-cast v1, Landroidx/compose/ui/node/x;

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/compose/ui/node/a0;->b(Landroidx/compose/ui/node/x;)V

    .line 26
    .line 27
    .line 28
    if-ne p2, v0, :cond_1

    .line 29
    .line 30
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {p0, v1}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->s2()V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/16 v1, 0x80

    .line 42
    .line 43
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    and-int/2addr v1, p1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    instance-of v1, p0, Landroidx/compose/ui/node/w;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    if-eq p2, v0, :cond_2

    .line 55
    .line 56
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    .line 61
    .line 62
    .line 63
    :cond_2
    const/16 v1, 0x100

    .line 64
    .line 65
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    and-int/2addr v1, p1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    instance-of v1, p0, Landroidx/compose/ui/node/p;

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    if-eq p2, v0, :cond_3

    .line 77
    .line 78
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->z0()V

    .line 83
    .line 84
    .line 85
    :cond_3
    const/4 v1, 0x4

    .line 86
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    and-int/2addr v1, p1

    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    instance-of v1, p0, Landroidx/compose/ui/node/n;

    .line 94
    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    move-object v1, p0

    .line 98
    check-cast v1, Landroidx/compose/ui/node/n;

    .line 99
    .line 100
    invoke-static {v1}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    const/16 v1, 0x8

    .line 104
    .line 105
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    and-int/2addr v1, p1

    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    instance-of v1, p0, Landroidx/compose/ui/node/i1;

    .line 113
    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    move-object v1, p0

    .line 117
    check-cast v1, Landroidx/compose/ui/node/i1;

    .line 118
    .line 119
    invoke-static {v1}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    const/16 v1, 0x40

    .line 123
    .line 124
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    and-int/2addr v1, p1

    .line 129
    if-eqz v1, :cond_6

    .line 130
    .line 131
    instance-of v1, p0, Landroidx/compose/ui/node/a1;

    .line 132
    .line 133
    if-eqz v1, :cond_6

    .line 134
    .line 135
    move-object v1, p0

    .line 136
    check-cast v1, Landroidx/compose/ui/node/a1;

    .line 137
    .line 138
    invoke-static {v1}, Landroidx/compose/ui/node/b1;->a(Landroidx/compose/ui/node/a1;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    const/16 v1, 0x400

    .line 142
    .line 143
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    and-int/2addr v1, p1

    .line 148
    if-eqz v1, :cond_7

    .line 149
    .line 150
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 151
    .line 152
    if-eqz v1, :cond_7

    .line 153
    .line 154
    if-eq p2, v0, :cond_7

    .line 155
    .line 156
    move-object v1, p0

    .line 157
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 158
    .line 159
    invoke-static {v1}, Landroidx/compose/ui/focus/u;->c(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 160
    .line 161
    .line 162
    :cond_7
    const/16 v1, 0x800

    .line 163
    .line 164
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    and-int/2addr v1, p1

    .line 169
    if-eqz v1, :cond_9

    .line 170
    .line 171
    instance-of v1, p0, Landroidx/compose/ui/focus/m;

    .line 172
    .line 173
    if-eqz v1, :cond_9

    .line 174
    .line 175
    move-object v1, p0

    .line 176
    check-cast v1, Landroidx/compose/ui/focus/m;

    .line 177
    .line 178
    invoke-static {v1}, Landroidx/compose/ui/node/t0;->k(Landroidx/compose/ui/focus/m;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_9

    .line 183
    .line 184
    if-ne p2, v0, :cond_8

    .line 185
    .line 186
    invoke-static {v1}, Landroidx/compose/ui/node/t0;->j(Landroidx/compose/ui/focus/m;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_8
    invoke-static {v1}, Landroidx/compose/ui/focus/n;->a(Landroidx/compose/ui/focus/m;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    :goto_0
    const/16 p2, 0x1000

    .line 194
    .line 195
    invoke-static {p2}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    and-int/2addr p1, p2

    .line 200
    if-eqz p1, :cond_a

    .line 201
    .line 202
    instance-of p1, p0, Landroidx/compose/ui/focus/c;

    .line 203
    .line 204
    if-eqz p1, :cond_a

    .line 205
    .line 206
    check-cast p0, Landroidx/compose/ui/focus/c;

    .line 207
    .line 208
    invoke-static {p0}, Landroidx/compose/ui/focus/d;->b(Landroidx/compose/ui/focus/c;)V

    .line 209
    .line 210
    .line 211
    :cond_a
    return-void
.end method

.method public static final d(Landroidx/compose/ui/f$c;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "autoInvalidateRemovedNode called on unattached node"

    .line 8
    .line 9
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/t0;->b(Landroidx/compose/ui/f$c;II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final e(Landroidx/compose/ui/f$c;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "autoInvalidateUpdatedNode called on unattached node"

    .line 8
    .line 9
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/t0;->b(Landroidx/compose/ui/f$c;II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final f(Landroidx/compose/ui/f$b;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    instance-of v1, p0, Landroidx/compose/ui/layout/o;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    or-int/2addr v0, v1

    .line 16
    :cond_0
    instance-of v1, p0, Landroidx/compose/ui/draw/f;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    or-int/2addr v0, v1

    .line 26
    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/semantics/j;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    or-int/2addr v0, v1

    .line 37
    :cond_2
    instance-of v1, p0, Landroidx/compose/ui/input/pointer/d0;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    const/16 v1, 0x10

    .line 42
    .line 43
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    or-int/2addr v0, v1

    .line 48
    :cond_3
    instance-of v1, p0, Landroidx/compose/ui/modifier/d;

    .line 49
    .line 50
    if-nez v1, :cond_4

    .line 51
    .line 52
    instance-of v1, p0, Landroidx/compose/ui/modifier/j;

    .line 53
    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    :cond_4
    const/16 v1, 0x20

    .line 57
    .line 58
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    or-int/2addr v0, v1

    .line 63
    :cond_5
    instance-of p0, p0, Landroidx/compose/ui/layout/b0;

    .line 64
    .line 65
    if-eqz p0, :cond_6

    .line 66
    .line 67
    const/16 p0, 0x100

    .line 68
    .line 69
    invoke-static {p0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    or-int/2addr v0, p0

    .line 74
    :cond_6
    return v0
.end method

.method public static final g(Landroidx/compose/ui/f$c;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    sget-object v0, Landroidx/compose/ui/node/t0;->a:Landroidx/collection/k0;

    .line 13
    .line 14
    invoke-static {p0}, Landroidx/compose/ui/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/collection/p0;->a(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ltz v2, :cond_1

    .line 23
    .line 24
    iget-object p0, v0, Landroidx/collection/p0;->c:[I

    .line 25
    .line 26
    aget p0, p0, v2

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_1
    const/4 v2, 0x1

    .line 31
    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    instance-of v3, p0, Landroidx/compose/ui/node/x;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    or-int/2addr v2, v3

    .line 45
    :cond_2
    instance-of v3, p0, Landroidx/compose/ui/node/n;

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    or-int/2addr v2, v3

    .line 55
    :cond_3
    instance-of v3, p0, Landroidx/compose/ui/node/i1;

    .line 56
    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    const/16 v3, 0x8

    .line 60
    .line 61
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    or-int/2addr v2, v3

    .line 66
    :cond_4
    instance-of v3, p0, Landroidx/compose/ui/node/e1;

    .line 67
    .line 68
    if-eqz v3, :cond_5

    .line 69
    .line 70
    const/16 v3, 0x10

    .line 71
    .line 72
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    or-int/2addr v2, v3

    .line 77
    :cond_5
    instance-of v3, p0, Landroidx/compose/ui/modifier/h;

    .line 78
    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    const/16 v3, 0x20

    .line 82
    .line 83
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    or-int/2addr v2, v3

    .line 88
    :cond_6
    instance-of v3, p0, Landroidx/compose/ui/node/a1;

    .line 89
    .line 90
    if-eqz v3, :cond_7

    .line 91
    .line 92
    const/16 v3, 0x40

    .line 93
    .line 94
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    or-int/2addr v2, v3

    .line 99
    :cond_7
    instance-of v3, p0, Landroidx/compose/ui/node/w;

    .line 100
    .line 101
    if-eqz v3, :cond_8

    .line 102
    .line 103
    const/16 v3, 0x80

    .line 104
    .line 105
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    or-int/2addr v2, v3

    .line 110
    :cond_8
    instance-of v3, p0, Landroidx/compose/ui/node/p;

    .line 111
    .line 112
    if-eqz v3, :cond_9

    .line 113
    .line 114
    const/16 v3, 0x100

    .line 115
    .line 116
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    or-int/2addr v2, v3

    .line 121
    :cond_9
    instance-of v3, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 122
    .line 123
    if-eqz v3, :cond_a

    .line 124
    .line 125
    const/16 v3, 0x400

    .line 126
    .line 127
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    or-int/2addr v2, v3

    .line 132
    :cond_a
    instance-of v3, p0, Landroidx/compose/ui/focus/m;

    .line 133
    .line 134
    if-eqz v3, :cond_b

    .line 135
    .line 136
    const/16 v3, 0x800

    .line 137
    .line 138
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    or-int/2addr v2, v3

    .line 143
    :cond_b
    instance-of v3, p0, Landroidx/compose/ui/focus/c;

    .line 144
    .line 145
    if-eqz v3, :cond_c

    .line 146
    .line 147
    const/16 v3, 0x1000

    .line 148
    .line 149
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    or-int/2addr v2, v3

    .line 154
    :cond_c
    instance-of v3, p0, Ld0/e;

    .line 155
    .line 156
    if-eqz v3, :cond_d

    .line 157
    .line 158
    const/16 v3, 0x2000

    .line 159
    .line 160
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    or-int/2addr v2, v3

    .line 165
    :cond_d
    instance-of v3, p0, Lf0/a;

    .line 166
    .line 167
    if-eqz v3, :cond_e

    .line 168
    .line 169
    const/16 v3, 0x4000

    .line 170
    .line 171
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    or-int/2addr v2, v3

    .line 176
    :cond_e
    instance-of v3, p0, Landroidx/compose/ui/node/d;

    .line 177
    .line 178
    if-eqz v3, :cond_f

    .line 179
    .line 180
    const v3, 0x8000

    .line 181
    .line 182
    .line 183
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    or-int/2addr v2, v3

    .line 188
    :cond_f
    instance-of p0, p0, Landroidx/compose/ui/node/m1;

    .line 189
    .line 190
    if-eqz p0, :cond_10

    .line 191
    .line 192
    const/high16 p0, 0x40000

    .line 193
    .line 194
    invoke-static {p0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    or-int/2addr p0, v2

    .line 199
    goto :goto_0

    .line 200
    :cond_10
    move p0, v2

    .line 201
    :goto_0
    invoke-virtual {v0, v1, p0}, Landroidx/collection/k0;->r(Ljava/lang/Object;I)V

    .line 202
    .line 203
    .line 204
    :goto_1
    return p0
.end method

.method public static final h(Landroidx/compose/ui/f$c;)I
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/compose/ui/node/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/ui/node/i;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->E1()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/compose/ui/node/t0;->h(Landroidx/compose/ui/f$c;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    or-int/2addr v0, v1

    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/t0;->g(Landroidx/compose/ui/f$c;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_1
    return v0
.end method

.method public static final i(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/2addr p0, v0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method private static final j(Landroidx/compose/ui/focus/m;)V
    .locals 10

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->j1()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_c

    .line 16
    .line 17
    new-instance v1, Landroidx/compose/runtime/collection/b;

    .line 18
    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    new-array v3, v2, [Landroidx/compose/ui/f$c;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v1, v3, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v1, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->q()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_b

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/4 v3, 0x1

    .line 59
    sub-int/2addr p0, v3

    .line 60
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Landroidx/compose/ui/f$c;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->Z0()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    and-int/2addr v5, v0

    .line 71
    if-nez v5, :cond_2

    .line 72
    .line 73
    invoke-static {v1, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    :goto_1
    if-eqz p0, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    and-int/2addr v5, v0

    .line 84
    if-eqz v5, :cond_a

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    move-object v6, v5

    .line 88
    :goto_2
    if-eqz p0, :cond_1

    .line 89
    .line 90
    instance-of v7, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 91
    .line 92
    if-eqz v7, :cond_3

    .line 93
    .line 94
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 95
    .line 96
    invoke-static {p0}, Landroidx/compose/ui/focus/u;->c(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    and-int/2addr v7, v0

    .line 105
    if-eqz v7, :cond_9

    .line 106
    .line 107
    instance-of v7, p0, Landroidx/compose/ui/node/i;

    .line 108
    .line 109
    if-eqz v7, :cond_9

    .line 110
    .line 111
    move-object v7, p0

    .line 112
    check-cast v7, Landroidx/compose/ui/node/i;

    .line 113
    .line 114
    invoke-virtual {v7}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    move v8, v4

    .line 119
    :goto_3
    if-eqz v7, :cond_8

    .line 120
    .line 121
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->e1()I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    and-int/2addr v9, v0

    .line 126
    if-eqz v9, :cond_7

    .line 127
    .line 128
    add-int/lit8 v8, v8, 0x1

    .line 129
    .line 130
    if-ne v8, v3, :cond_4

    .line 131
    .line 132
    move-object p0, v7

    .line 133
    goto :goto_4

    .line 134
    :cond_4
    if-nez v6, :cond_5

    .line 135
    .line 136
    new-instance v6, Landroidx/compose/runtime/collection/b;

    .line 137
    .line 138
    new-array v9, v2, [Landroidx/compose/ui/f$c;

    .line 139
    .line 140
    invoke-direct {v6, v9, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 141
    .line 142
    .line 143
    :cond_5
    if-eqz p0, :cond_6

    .line 144
    .line 145
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-object p0, v5

    .line 149
    :cond_6
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_7
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    goto :goto_3

    .line 157
    :cond_8
    if-ne v8, v3, :cond_9

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_9
    :goto_5
    invoke-static {v6}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    goto :goto_2

    .line 165
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    goto :goto_1

    .line 170
    :cond_b
    return-void

    .line 171
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    const-string v0, "visitChildren called on an unattached node"

    .line 174
    .line 175
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p0
.end method

.method private static final k(Landroidx/compose/ui/focus/m;)Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/b;->a:Landroidx/compose/ui/node/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/b;->b()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/focus/m;->r0(Landroidx/compose/ui/focus/k;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/b;->a()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
