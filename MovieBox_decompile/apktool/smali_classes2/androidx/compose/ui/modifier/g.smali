.class public abstract synthetic Landroidx/compose/ui/modifier/g;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Landroidx/compose/ui/modifier/h;Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "ModifierLocal accessed from an unattached node"

    .line 12
    .line 13
    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/16 v0, 0x20

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->j1()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_c

    .line 31
    .line 32
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    if-eqz p0, :cond_b

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->Z0()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    and-int/2addr v2, v0

    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v2, :cond_9

    .line 61
    .line 62
    :goto_1
    if-eqz v1, :cond_9

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->e1()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    and-int/2addr v2, v0

    .line 69
    if-eqz v2, :cond_8

    .line 70
    .line 71
    move-object v2, v1

    .line 72
    move-object v4, v3

    .line 73
    :goto_2
    if-eqz v2, :cond_8

    .line 74
    .line 75
    instance-of v5, v2, Landroidx/compose/ui/modifier/h;

    .line 76
    .line 77
    if-eqz v5, :cond_1

    .line 78
    .line 79
    check-cast v2, Landroidx/compose/ui/modifier/h;

    .line 80
    .line 81
    invoke-interface {v2}, Landroidx/compose/ui/modifier/h;->V()Landroidx/compose/ui/modifier/f;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5, p1}, Landroidx/compose/ui/modifier/f;->a(Landroidx/compose/ui/modifier/c;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_7

    .line 90
    .line 91
    invoke-interface {v2}, Landroidx/compose/ui/modifier/h;->V()Landroidx/compose/ui/modifier/f;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0, p1}, Landroidx/compose/ui/modifier/f;->b(Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->e1()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    and-int/2addr v5, v0

    .line 105
    if-eqz v5, :cond_7

    .line 106
    .line 107
    instance-of v5, v2, Landroidx/compose/ui/node/i;

    .line 108
    .line 109
    if-eqz v5, :cond_7

    .line 110
    .line 111
    move-object v5, v2

    .line 112
    check-cast v5, Landroidx/compose/ui/node/i;

    .line 113
    .line 114
    invoke-virtual {v5}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const/4 v6, 0x0

    .line 119
    move v7, v6

    .line 120
    :goto_3
    const/4 v8, 0x1

    .line 121
    if-eqz v5, :cond_6

    .line 122
    .line 123
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->e1()I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    and-int/2addr v9, v0

    .line 128
    if-eqz v9, :cond_5

    .line 129
    .line 130
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    if-ne v7, v8, :cond_2

    .line 133
    .line 134
    move-object v2, v5

    .line 135
    goto :goto_4

    .line 136
    :cond_2
    if-nez v4, :cond_3

    .line 137
    .line 138
    new-instance v4, Landroidx/compose/runtime/collection/b;

    .line 139
    .line 140
    const/16 v8, 0x10

    .line 141
    .line 142
    new-array v8, v8, [Landroidx/compose/ui/f$c;

    .line 143
    .line 144
    invoke-direct {v4, v8, v6}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 145
    .line 146
    .line 147
    :cond_3
    if-eqz v2, :cond_4

    .line 148
    .line 149
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-object v2, v3

    .line 153
    :cond_4
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    :cond_5
    :goto_4
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    goto :goto_3

    .line 161
    :cond_6
    if-ne v7, v8, :cond_7

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_7
    invoke-static {v4}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    goto :goto_2

    .line 169
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    goto :goto_1

    .line 174
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    if-eqz p0, :cond_a

    .line 179
    .line 180
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-eqz v1, :cond_a

    .line 185
    .line 186
    invoke-virtual {v1}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_a
    move-object v1, v3

    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_b
    invoke-virtual {p1}, Landroidx/compose/ui/modifier/c;->a()Lkotlin/jvm/functions/Function0;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    return-object p0

    .line 204
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    const-string p1, "visitAncestors called on an unattached node"

    .line 207
    .line 208
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p0
.end method

.method public static b(Landroidx/compose/ui/modifier/h;)Landroidx/compose/ui/modifier/f;
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/ui/modifier/b;->a:Landroidx/compose/ui/modifier/b;

    .line 2
    .line 3
    return-object p0
.end method
