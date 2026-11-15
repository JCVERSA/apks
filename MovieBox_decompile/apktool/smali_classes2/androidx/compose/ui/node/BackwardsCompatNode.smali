.class public final Landroidx/compose/ui/node/BackwardsCompatNode;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/x;
.implements Landroidx/compose/ui/node/n;
.implements Landroidx/compose/ui/node/i1;
.implements Landroidx/compose/ui/node/e1;
.implements Landroidx/compose/ui/modifier/h;
.implements Landroidx/compose/ui/modifier/k;
.implements Landroidx/compose/ui/node/a1;
.implements Landroidx/compose/ui/node/w;
.implements Landroidx/compose/ui/node/p;
.implements Landroidx/compose/ui/focus/c;
.implements Landroidx/compose/ui/focus/m;
.implements Landroidx/compose/ui/focus/q;
.implements Landroidx/compose/ui/node/z0;
.implements Landroidx/compose/ui/draw/a;


# instance fields
.field private n:Landroidx/compose/ui/f$b;

.field private o:Z

.field private p:Landroidx/compose/ui/modifier/a;

.field private q:Ljava/util/HashSet;

.field private r:Landroidx/compose/ui/layout/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/f$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/compose/ui/node/t0;->f(Landroidx/compose/ui/f$b;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/compose/ui/f$c;->w1(I)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->o:Z

    .line 15
    .line 16
    new-instance p1, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->q:Ljava/util/HashSet;

    .line 22
    .line 23
    return-void
.end method

.method private final E1(Z)V
    .locals 3

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
    const-string v0, "initializeModifier called on unattached node"

    .line 8
    .line 9
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 13
    .line 14
    const/16 v1, 0x20

    .line 15
    .line 16
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    instance-of v1, v0, Landroidx/compose/ui/modifier/d;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    new-instance v1, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$2;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$2;-><init>(Landroidx/compose/ui/node/BackwardsCompatNode;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/compose/ui/f$c;->A1(Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    instance-of v1, v0, Landroidx/compose/ui/modifier/j;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    move-object v1, v0

    .line 44
    check-cast v1, Landroidx/compose/ui/modifier/j;

    .line 45
    .line 46
    invoke-direct {p0, v1}, Landroidx/compose/ui/node/BackwardsCompatNode;->J1(Landroidx/compose/ui/modifier/j;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    const/4 v1, 0x4

    .line 50
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    and-int/2addr v1, v2

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    invoke-static {p0}, Landroidx/compose/ui/node/a0;->a(Landroidx/compose/ui/node/x;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    const/4 v1, 0x2

    .line 67
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    and-int/2addr v1, v2

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->c(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/node/NodeCoordinator;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    move-object v2, v1

    .line 92
    check-cast v2, Landroidx/compose/ui/node/y;

    .line 93
    .line 94
    invoke-virtual {v2, p0}, Landroidx/compose/ui/node/y;->T2(Landroidx/compose/ui/node/x;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->n2()V

    .line 98
    .line 99
    .line 100
    :cond_4
    if-nez p1, :cond_5

    .line 101
    .line 102
    invoke-static {p0}, Landroidx/compose/ui/node/a0;->a(Landroidx/compose/ui/node/x;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    .line 110
    .line 111
    .line 112
    :cond_5
    instance-of p1, v0, Landroidx/compose/ui/layout/i0;

    .line 113
    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    move-object p1, v0

    .line 117
    check-cast p1, Landroidx/compose/ui/layout/i0;

    .line 118
    .line 119
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/i0;->d(Landroidx/compose/ui/layout/h0;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    const/16 p1, 0x80

    .line 127
    .line 128
    invoke-static {p1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 132
    .line 133
    .line 134
    const/16 p1, 0x100

    .line 135
    .line 136
    invoke-static {p1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    and-int/2addr p1, v1

    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    instance-of p1, v0, Landroidx/compose/ui/layout/b0;

    .line 148
    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->c(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_7

    .line 156
    .line 157
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    .line 162
    .line 163
    .line 164
    :cond_7
    const/16 p1, 0x10

    .line 165
    .line 166
    invoke-static {p1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    and-int/2addr p1, v1

    .line 175
    if-eqz p1, :cond_8

    .line 176
    .line 177
    instance-of p1, v0, Landroidx/compose/ui/input/pointer/d0;

    .line 178
    .line 179
    if-eqz p1, :cond_8

    .line 180
    .line 181
    check-cast v0, Landroidx/compose/ui/input/pointer/d0;

    .line 182
    .line 183
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/d0;->g()Landroidx/compose/ui/input/pointer/c0;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/node/NodeCoordinator;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p1, v0}, Landroidx/compose/ui/input/pointer/c0;->f(Landroidx/compose/ui/layout/l;)V

    .line 192
    .line 193
    .line 194
    :cond_8
    const/16 p1, 0x8

    .line 195
    .line 196
    invoke-static {p1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    and-int/2addr p1, v0

    .line 205
    if-eqz p1, :cond_9

    .line 206
    .line 207
    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-interface {p1}, Landroidx/compose/ui/node/y0;->onSemanticsChange()V

    .line 212
    .line 213
    .line 214
    :cond_9
    return-void
.end method

.method private final H1()V
    .locals 3

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
    const-string v0, "unInitializeModifier called on unattached node"

    .line 8
    .line 9
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 13
    .line 14
    const/16 v1, 0x20

    .line 15
    .line 16
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    and-int/2addr v1, v2

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    instance-of v1, v0, Landroidx/compose/ui/modifier/j;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Landroidx/compose/ui/node/y0;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move-object v2, v0

    .line 40
    check-cast v2, Landroidx/compose/ui/modifier/j;

    .line 41
    .line 42
    invoke-interface {v2}, Landroidx/compose/ui/modifier/j;->getKey()Landroidx/compose/ui/modifier/l;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, p0, v2}, Landroidx/compose/ui/modifier/ModifierLocalManager;->d(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/c;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    instance-of v1, v0, Landroidx/compose/ui/modifier/d;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    check-cast v0, Landroidx/compose/ui/modifier/d;

    .line 54
    .line 55
    invoke-static {}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->a()Landroidx/compose/ui/node/BackwardsCompatNodeKt$a;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Landroidx/compose/ui/modifier/d;->f(Landroidx/compose/ui/modifier/k;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    const/16 v0, 0x8

    .line 63
    .line 64
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->e1()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    and-int/2addr v0, v1

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->onSemanticsChange()V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method private final J1(Landroidx/compose/ui/modifier/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->p:Landroidx/compose/ui/modifier/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/compose/ui/modifier/j;->getKey()Landroidx/compose/ui/modifier/l;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/compose/ui/modifier/a;->a(Landroidx/compose/ui/modifier/c;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/compose/ui/modifier/a;->c(Landroidx/compose/ui/modifier/j;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p1}, Landroidx/compose/ui/modifier/j;->getKey()Landroidx/compose/ui/modifier/l;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/modifier/ModifierLocalManager;->f(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/c;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Landroidx/compose/ui/modifier/a;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Landroidx/compose/ui/modifier/a;-><init>(Landroidx/compose/ui/modifier/j;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->p:Landroidx/compose/ui/modifier/a;

    .line 40
    .line 41
    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->c(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {p1}, Landroidx/compose/ui/modifier/j;->getKey()Landroidx/compose/ui/modifier/l;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/modifier/ModifierLocalManager;->a(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/c;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final C1()Landroidx/compose/ui/f$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D1()Ljava/util/HashSet;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->q:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public F(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final F1()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->o:Z

    .line 3
    .line 4
    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final G1(Landroidx/compose/ui/f$b;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->H1()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/ui/node/t0;->f(Landroidx/compose/ui/f$b;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Landroidx/compose/ui/f$c;->w1(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;->E1(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public I(Landroidx/compose/ui/layout/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->r:Landroidx/compose/ui/layout/l;

    .line 2
    .line 3
    return-void
.end method

.method public final I1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->q:Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->b()Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Landroidx/compose/ui/node/BackwardsCompatNode$updateModifierLocalConsumer$1;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Landroidx/compose/ui/node/BackwardsCompatNode$updateModifierLocalConsumer$1;-><init>(Landroidx/compose/ui/node/BackwardsCompatNode;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0, v1, v2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->i(Landroidx/compose/ui/node/z0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/input/pointer/d0;

    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/d0;->g()Landroidx/compose/ui/input/pointer/c0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/c0;->e(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public synthetic O()Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/h1;->a(Landroidx/compose/ui/node/i1;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public O0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/input/pointer/d0;

    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/d0;->g()Landroidx/compose/ui/input/pointer/c0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/c0;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public P(Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->q:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->j1()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_b

    .line 21
    .line 22
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_0
    if-eqz v2, :cond_a

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->Z0()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    and-int/2addr v3, v0

    .line 49
    const/4 v4, 0x0

    .line 50
    if-eqz v3, :cond_8

    .line 51
    .line 52
    :goto_1
    if-eqz v1, :cond_8

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->e1()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    and-int/2addr v3, v0

    .line 59
    if-eqz v3, :cond_7

    .line 60
    .line 61
    move-object v3, v1

    .line 62
    move-object v5, v4

    .line 63
    :goto_2
    if-eqz v3, :cond_7

    .line 64
    .line 65
    instance-of v6, v3, Landroidx/compose/ui/modifier/h;

    .line 66
    .line 67
    if-eqz v6, :cond_0

    .line 68
    .line 69
    check-cast v3, Landroidx/compose/ui/modifier/h;

    .line 70
    .line 71
    invoke-interface {v3}, Landroidx/compose/ui/modifier/h;->V()Landroidx/compose/ui/modifier/f;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6, p1}, Landroidx/compose/ui/modifier/f;->a(Landroidx/compose/ui/modifier/c;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_6

    .line 80
    .line 81
    invoke-interface {v3}, Landroidx/compose/ui/modifier/h;->V()Landroidx/compose/ui/modifier/f;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Landroidx/compose/ui/modifier/f;->b(Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->e1()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    and-int/2addr v6, v0

    .line 95
    if-eqz v6, :cond_6

    .line 96
    .line 97
    instance-of v6, v3, Landroidx/compose/ui/node/i;

    .line 98
    .line 99
    if-eqz v6, :cond_6

    .line 100
    .line 101
    move-object v6, v3

    .line 102
    check-cast v6, Landroidx/compose/ui/node/i;

    .line 103
    .line 104
    invoke-virtual {v6}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    const/4 v7, 0x0

    .line 109
    move v8, v7

    .line 110
    :goto_3
    const/4 v9, 0x1

    .line 111
    if-eqz v6, :cond_5

    .line 112
    .line 113
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->e1()I

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    and-int/2addr v10, v0

    .line 118
    if-eqz v10, :cond_4

    .line 119
    .line 120
    add-int/lit8 v8, v8, 0x1

    .line 121
    .line 122
    if-ne v8, v9, :cond_1

    .line 123
    .line 124
    move-object v3, v6

    .line 125
    goto :goto_4

    .line 126
    :cond_1
    if-nez v5, :cond_2

    .line 127
    .line 128
    new-instance v5, Landroidx/compose/runtime/collection/b;

    .line 129
    .line 130
    const/16 v9, 0x10

    .line 131
    .line 132
    new-array v9, v9, [Landroidx/compose/ui/f$c;

    .line 133
    .line 134
    invoke-direct {v5, v9, v7}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 135
    .line 136
    .line 137
    :cond_2
    if-eqz v3, :cond_3

    .line 138
    .line 139
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-object v3, v4

    .line 143
    :cond_3
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :cond_4
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    if-ne v8, v9, :cond_6

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    invoke-static {v5}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    goto :goto_2

    .line 159
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    goto :goto_1

    .line 164
    :cond_8
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    if-eqz v2, :cond_9

    .line 169
    .line 170
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-eqz v1, :cond_9

    .line 175
    .line 176
    invoke-virtual {v1}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_9
    move-object v1, v4

    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/modifier/c;->a()Lkotlin/jvm/functions/Function0;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    return-object p1

    .line 194
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 195
    .line 196
    const-string v0, "visitAncestors called on an unattached node"

    .line 197
    .line 198
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1
.end method

.method public Q0(Landroidx/compose/ui/semantics/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/semantics/j;

    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/compose/ui/semantics/j;->h()Landroidx/compose/ui/semantics/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsConfiguration"

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast p1, Landroidx/compose/ui/semantics/i;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/i;->c(Landroidx/compose/ui/semantics/i;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public R()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/input/pointer/d0;

    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/d0;->g()Landroidx/compose/ui/input/pointer/c0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/c0;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public R0(Landroidx/compose/ui/focus/r;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    const-string v0, "onFocusEvent called on wrong node"

    .line 4
    .line 5
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public synthetic S0()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/d1;->c(Landroidx/compose/ui/node/e1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public V()Landroidx/compose/ui/modifier/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->p:Landroidx/compose/ui/modifier/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Landroidx/compose/ui/modifier/i;->a()Landroidx/compose/ui/modifier/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    return-object v0
.end method

.method public synthetic V0()Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/h1;->b(Landroidx/compose/ui/node/i1;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getDensity()Lo0/e;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->H()Lo0/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public i()J
    .locals 2

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
    invoke-static {p0, v0}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Lo0/u;->d(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public m1()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->E1(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public n(Lz/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.draw.DrawModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/draw/f;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/compose/ui/draw/f;->n(Lz/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public n1()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->H1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public r0(Landroidx/compose/ui/focus/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    const-string v1, "applyFocusProperties called on wrong node"

    .line 4
    .line 5
    invoke-static {v1}, Lg0/a;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/focus/h;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/h;-><init>(Landroidx/compose/ui/focus/k;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public t0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/input/pointer/d0;

    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/d0;->g()Landroidx/compose/ui/input/pointer/c0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/c0;->d()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public v(Landroidx/compose/ui/layout/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.layout.OnGloballyPositionedModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/layout/b0;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/b0;->v(Landroidx/compose/ui/layout/l;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public v0(Lo0/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    const-string p2, "null cannot be cast to non-null type androidx.compose.ui.layout.ParentDataModifier"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public w0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->o:Z

    .line 3
    .line 4
    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public synthetic y0()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/d1;->b(Landroidx/compose/ui/node/e1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/layout/o;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/o;->z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
