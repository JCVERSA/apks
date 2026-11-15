.class public final Landroidx/compose/ui/focus/FocusTargetNode;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/d;
.implements Landroidx/compose/ui/focus/s;
.implements Landroidx/compose/ui/node/u0;
.implements Landroidx/compose/ui/modifier/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusTargetNode$a;
    }
.end annotation


# instance fields
.field private n:Z

.field private o:Z

.field private p:Landroidx/compose/ui/focus/FocusStateImpl;

.field private final q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic C1(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic D1(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic E1(Landroidx/compose/ui/focus/FocusTargetNode;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic F1(Landroidx/compose/ui/focus/FocusTargetNode;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method private final K1()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->N1(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/ui/focus/u;->d(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/v;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->e(Landroidx/compose/ui/focus/v;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->b(Landroidx/compose/ui/focus/v;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->a(Landroidx/compose/ui/focus/v;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->M1(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->L1(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 42
    .line 43
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->P1(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 44
    .line 45
    .line 46
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->c(Landroidx/compose/ui/focus/v;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_2
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->c(Landroidx/compose/ui/focus/v;)V

    .line 53
    .line 54
    .line 55
    throw v1

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v1, "Re-initializing focus target node."

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method private static final L1(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 12

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
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "visitSubtreeIf called on an unattached node"

    .line 18
    .line 19
    invoke-static {v1}, Lg0/a;->b(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v1, Landroidx/compose/runtime/collection/b;

    .line 23
    .line 24
    const/16 v2, 0x10

    .line 25
    .line 26
    new-array v3, v2, [Landroidx/compose/ui/f$c;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct {v1, v3, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v1, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->q()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_e

    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    const/4 v3, 0x1

    .line 64
    sub-int/2addr p0, v3

    .line 65
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Landroidx/compose/ui/f$c;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->Z0()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    and-int/2addr v5, v0

    .line 76
    if-eqz v5, :cond_d

    .line 77
    .line 78
    move-object v5, p0

    .line 79
    :goto_1
    if-eqz v5, :cond_d

    .line 80
    .line 81
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->e1()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    and-int/2addr v6, v0

    .line 86
    if-eqz v6, :cond_c

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    move-object v7, v5

    .line 90
    move-object v8, v6

    .line 91
    :goto_2
    if-eqz v7, :cond_c

    .line 92
    .line 93
    instance-of v9, v7, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 94
    .line 95
    if-eqz v9, :cond_5

    .line 96
    .line 97
    check-cast v7, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 98
    .line 99
    invoke-static {v7}, Landroidx/compose/ui/focus/FocusTargetNode;->N1(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-nez v9, :cond_2

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/ui/focus/FocusTargetNode;->J1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    sget-object v0, Landroidx/compose/ui/focus/FocusTargetNode$a;->a:[I

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    aget p0, v0, p0

    .line 117
    .line 118
    if-eq p0, v3, :cond_4

    .line 119
    .line 120
    const/4 v0, 0x2

    .line 121
    if-eq p0, v0, :cond_4

    .line 122
    .line 123
    const/4 v0, 0x3

    .line 124
    if-eq p0, v0, :cond_4

    .line 125
    .line 126
    const/4 v0, 0x4

    .line 127
    if-ne p0, v0, :cond_3

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 131
    .line 132
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_4
    move v4, v3

    .line 137
    :goto_3
    return v4

    .line 138
    :cond_5
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->e1()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    and-int/2addr v9, v0

    .line 143
    if-eqz v9, :cond_b

    .line 144
    .line 145
    instance-of v9, v7, Landroidx/compose/ui/node/i;

    .line 146
    .line 147
    if-eqz v9, :cond_b

    .line 148
    .line 149
    move-object v9, v7

    .line 150
    check-cast v9, Landroidx/compose/ui/node/i;

    .line 151
    .line 152
    invoke-virtual {v9}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    move v10, v4

    .line 157
    :goto_4
    if-eqz v9, :cond_a

    .line 158
    .line 159
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->e1()I

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    and-int/2addr v11, v0

    .line 164
    if-eqz v11, :cond_9

    .line 165
    .line 166
    add-int/lit8 v10, v10, 0x1

    .line 167
    .line 168
    if-ne v10, v3, :cond_6

    .line 169
    .line 170
    move-object v7, v9

    .line 171
    goto :goto_5

    .line 172
    :cond_6
    if-nez v8, :cond_7

    .line 173
    .line 174
    new-instance v8, Landroidx/compose/runtime/collection/b;

    .line 175
    .line 176
    new-array v11, v2, [Landroidx/compose/ui/f$c;

    .line 177
    .line 178
    invoke-direct {v8, v11, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 179
    .line 180
    .line 181
    :cond_7
    if-eqz v7, :cond_8

    .line 182
    .line 183
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-object v7, v6

    .line 187
    :cond_8
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_9
    :goto_5
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    goto :goto_4

    .line 195
    :cond_a
    if-ne v10, v3, :cond_b

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_b
    :goto_6
    invoke-static {v8}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    goto :goto_2

    .line 203
    :cond_c
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :cond_d
    invoke-static {v1, p0}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_e
    return v4
.end method

.method private static final M1(Landroidx/compose/ui/focus/FocusTargetNode;)Z
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
    if-eqz v1, :cond_e

    .line 16
    .line 17
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    const/4 v2, 0x0

    .line 30
    if-eqz p0, :cond_d

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->Z0()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    and-int/2addr v3, v0

    .line 45
    const/4 v4, 0x0

    .line 46
    if-eqz v3, :cond_b

    .line 47
    .line 48
    :goto_1
    if-eqz v1, :cond_b

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->e1()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    and-int/2addr v3, v0

    .line 55
    if-eqz v3, :cond_a

    .line 56
    .line 57
    move-object v3, v1

    .line 58
    move-object v5, v4

    .line 59
    :goto_2
    if-eqz v3, :cond_a

    .line 60
    .line 61
    instance-of v6, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 62
    .line 63
    const/4 v7, 0x1

    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 67
    .line 68
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->N1(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_9

    .line 73
    .line 74
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusTargetNode;->J1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    sget-object v0, Landroidx/compose/ui/focus/FocusTargetNode$a;->a:[I

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    aget p0, v0, p0

    .line 85
    .line 86
    if-eq p0, v7, :cond_2

    .line 87
    .line 88
    const/4 v0, 0x2

    .line 89
    if-eq p0, v0, :cond_2

    .line 90
    .line 91
    const/4 v0, 0x3

    .line 92
    if-eq p0, v0, :cond_1

    .line 93
    .line 94
    const/4 v0, 0x4

    .line 95
    if-ne p0, v0, :cond_0

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 99
    .line 100
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_1
    move v2, v7

    .line 105
    :cond_2
    :goto_3
    return v2

    .line 106
    :cond_3
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->e1()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    and-int/2addr v6, v0

    .line 111
    if-eqz v6, :cond_9

    .line 112
    .line 113
    instance-of v6, v3, Landroidx/compose/ui/node/i;

    .line 114
    .line 115
    if-eqz v6, :cond_9

    .line 116
    .line 117
    move-object v6, v3

    .line 118
    check-cast v6, Landroidx/compose/ui/node/i;

    .line 119
    .line 120
    invoke-virtual {v6}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    move v8, v2

    .line 125
    :goto_4
    if-eqz v6, :cond_8

    .line 126
    .line 127
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->e1()I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    and-int/2addr v9, v0

    .line 132
    if-eqz v9, :cond_7

    .line 133
    .line 134
    add-int/lit8 v8, v8, 0x1

    .line 135
    .line 136
    if-ne v8, v7, :cond_4

    .line 137
    .line 138
    move-object v3, v6

    .line 139
    goto :goto_5

    .line 140
    :cond_4
    if-nez v5, :cond_5

    .line 141
    .line 142
    new-instance v5, Landroidx/compose/runtime/collection/b;

    .line 143
    .line 144
    const/16 v9, 0x10

    .line 145
    .line 146
    new-array v9, v9, [Landroidx/compose/ui/f$c;

    .line 147
    .line 148
    invoke-direct {v5, v9, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 149
    .line 150
    .line 151
    :cond_5
    if-eqz v3, :cond_6

    .line 152
    .line 153
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-object v3, v4

    .line 157
    :cond_6
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :cond_7
    :goto_5
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    goto :goto_4

    .line 165
    :cond_8
    if-ne v8, v7, :cond_9

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_9
    invoke-static {v5}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    goto :goto_2

    .line 173
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :cond_b
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    if-eqz p0, :cond_c

    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_c

    .line 190
    .line 191
    invoke-virtual {v1}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_c
    move-object v1, v4

    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_d
    return v2

    .line 201
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 202
    .line 203
    const-string v0, "visitAncestors called on an unattached node"

    .line 204
    .line 205
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p0
.end method

.method private static final N1(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->p:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method


# virtual methods
.method public final G1()V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/focus/u;->d(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroidx/compose/ui/focus/v;->i(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusStateImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->p:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "committing a node that was not updated in the current transaction"

    .line 15
    .line 16
    invoke-static {v0}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 20
    .line 21
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final H1()Landroidx/compose/ui/focus/k;
    .locals 15

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusPropertiesImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x800

    .line 7
    .line 8
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x400

    .line 13
    .line 14
    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    or-int v4, v1, v2

    .line 23
    .line 24
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->j1()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_c

    .line 33
    .line 34
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    :goto_0
    if-eqz v6, :cond_b

    .line 43
    .line 44
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->Z0()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    and-int/2addr v7, v4

    .line 57
    const/4 v8, 0x0

    .line 58
    if-eqz v7, :cond_9

    .line 59
    .line 60
    :goto_1
    if-eqz v5, :cond_9

    .line 61
    .line 62
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->e1()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    and-int/2addr v7, v4

    .line 67
    if-eqz v7, :cond_8

    .line 68
    .line 69
    if-eq v5, v3, :cond_0

    .line 70
    .line 71
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->e1()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    and-int/2addr v7, v2

    .line 76
    if-eqz v7, :cond_0

    .line 77
    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->e1()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    and-int/2addr v7, v1

    .line 85
    if-eqz v7, :cond_8

    .line 86
    .line 87
    move-object v7, v5

    .line 88
    move-object v9, v8

    .line 89
    :goto_2
    if-eqz v7, :cond_8

    .line 90
    .line 91
    instance-of v10, v7, Landroidx/compose/ui/focus/m;

    .line 92
    .line 93
    if-eqz v10, :cond_1

    .line 94
    .line 95
    check-cast v7, Landroidx/compose/ui/focus/m;

    .line 96
    .line 97
    invoke-interface {v7, v0}, Landroidx/compose/ui/focus/m;->r0(Landroidx/compose/ui/focus/k;)V

    .line 98
    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_1
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->e1()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    and-int/2addr v10, v1

    .line 106
    if-eqz v10, :cond_7

    .line 107
    .line 108
    instance-of v10, v7, Landroidx/compose/ui/node/i;

    .line 109
    .line 110
    if-eqz v10, :cond_7

    .line 111
    .line 112
    move-object v10, v7

    .line 113
    check-cast v10, Landroidx/compose/ui/node/i;

    .line 114
    .line 115
    invoke-virtual {v10}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    const/4 v11, 0x0

    .line 120
    move v12, v11

    .line 121
    :goto_3
    const/4 v13, 0x1

    .line 122
    if-eqz v10, :cond_6

    .line 123
    .line 124
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->e1()I

    .line 125
    .line 126
    .line 127
    move-result v14

    .line 128
    and-int/2addr v14, v1

    .line 129
    if-eqz v14, :cond_5

    .line 130
    .line 131
    add-int/lit8 v12, v12, 0x1

    .line 132
    .line 133
    if-ne v12, v13, :cond_2

    .line 134
    .line 135
    move-object v7, v10

    .line 136
    goto :goto_4

    .line 137
    :cond_2
    if-nez v9, :cond_3

    .line 138
    .line 139
    new-instance v9, Landroidx/compose/runtime/collection/b;

    .line 140
    .line 141
    const/16 v13, 0x10

    .line 142
    .line 143
    new-array v13, v13, [Landroidx/compose/ui/f$c;

    .line 144
    .line 145
    invoke-direct {v9, v13, v11}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 146
    .line 147
    .line 148
    :cond_3
    if-eqz v7, :cond_4

    .line 149
    .line 150
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-object v7, v8

    .line 154
    :cond_4
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    :cond_5
    :goto_4
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    goto :goto_3

    .line 162
    :cond_6
    if-ne v12, v13, :cond_7

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_7
    :goto_5
    invoke-static {v9}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    goto :goto_2

    .line 170
    :cond_8
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    goto :goto_1

    .line 175
    :cond_9
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    if-eqz v6, :cond_a

    .line 180
    .line 181
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    if-eqz v5, :cond_a

    .line 186
    .line 187
    invoke-virtual {v5}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_a
    move-object v5, v8

    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_b
    :goto_6
    return-object v0

    .line 197
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 198
    .line 199
    const-string v1, "visitAncestors called on an unattached node"

    .line 200
    .line 201
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v0
.end method

.method public final I1()Landroidx/compose/ui/layout/d;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->a()Landroidx/compose/ui/modifier/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->P(Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/compose/ui/layout/d;

    .line 10
    .line 11
    return-object v0
.end method

.method public J1()Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/focus/u;->a(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroidx/compose/ui/focus/v;->i(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusStateImpl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->p:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 18
    .line 19
    :cond_1
    return-object v0
.end method

.method public final O1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->p:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->K1()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->J1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroidx/compose/ui/focus/FocusTargetNode$a;->a:[I

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    aget v0, v1, v0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 28
    .line 29
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;

    .line 33
    .line 34
    invoke-direct {v2, v0, p0}, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v2}, Landroidx/compose/ui/node/v0;->a(Landroidx/compose/ui/f$c;Lkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    const-string v0, "focusProperties"

    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    check-cast v0, Landroidx/compose/ui/focus/k;

    .line 52
    .line 53
    :goto_0
    invoke-interface {v0}, Landroidx/compose/ui/focus/k;->t()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getFocusOwner()Landroidx/compose/ui/focus/i;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0, v1}, Landroidx/compose/ui/focus/g;->o(Z)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic P(Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/modifier/g;->a(Landroidx/compose/ui/modifier/h;Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public P1(Landroidx/compose/ui/focus/FocusStateImpl;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/focus/u;->d(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/focus/v;->j(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic V()Landroidx/compose/ui/modifier/f;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/modifier/g;->b(Landroidx/compose/ui/modifier/h;)Landroidx/compose/ui/modifier/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public Z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->J1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->O1()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->J1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Landroidx/compose/ui/focus/d;->c(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public h1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public n1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->J1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/focus/FocusTargetNode$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v0, v2, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/focus/u;->d(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/v;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :try_start_0
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->e(Landroidx/compose/ui/focus/v;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->b(Landroidx/compose/ui/focus/v;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->a(Landroidx/compose/ui/focus/v;)V

    .line 40
    .line 41
    .line 42
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->P1(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->c(Landroidx/compose/ui/focus/v;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->c(Landroidx/compose/ui/focus/v;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getFocusOwner()Landroidx/compose/ui/focus/i;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v2, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/compose/ui/focus/b$a;->c()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-interface {v0, v1, v1, v3, v2}, Landroidx/compose/ui/focus/i;->j(ZZZI)Z

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Landroidx/compose/ui/focus/u;->c(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 76
    .line 77
    .line 78
    :goto_2
    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->p:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 80
    .line 81
    return-void
.end method
