.class public final Landroidx/compose/ui/focus/FocusOwnerImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/focus/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusOwnerImpl$a;
    }
.end annotation


# instance fields
.field private final a:Lkotlin/jvm/functions/Function2;

.field private final b:Lkotlin/jvm/functions/Function1;

.field private final c:Lkotlin/jvm/functions/Function0;

.field private final d:Lkotlin/jvm/functions/Function0;

.field private final e:Lkotlin/jvm/functions/Function0;

.field private f:Landroidx/compose/ui/focus/FocusTargetNode;

.field private final g:Landroidx/compose/ui/focus/FocusInvalidationManager;

.field private final h:Landroidx/compose/ui/focus/v;

.field private final i:Landroidx/compose/ui/f;

.field private j:Landroidx/collection/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->a:Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->b:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->d:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p6, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->e:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    new-instance p2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 15
    .line 16
    invoke-direct {p2}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 20
    .line 21
    new-instance p2, Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 22
    .line 23
    new-instance p3, Landroidx/compose/ui/focus/FocusOwnerImpl$focusInvalidationManager$1;

    .line 24
    .line 25
    invoke-direct {p3, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusInvalidationManager$1;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p1, p3}, Landroidx/compose/ui/focus/FocusInvalidationManager;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 32
    .line 33
    new-instance p1, Landroidx/compose/ui/focus/v;

    .line 34
    .line 35
    invoke-direct {p1}, Landroidx/compose/ui/focus/v;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->h:Landroidx/compose/ui/focus/v;

    .line 39
    .line 40
    sget-object p1, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 41
    .line 42
    sget-object p2, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;->INSTANCE:Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

    .line 43
    .line 44
    invoke-static {p1, p2}, Landroidx/compose/ui/focus/l;->a(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance p2, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$2;

    .line 49
    .line 50
    invoke-direct {p2, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$2;-><init>(Landroidx/compose/ui/focus/FocusOwnerImpl;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, p2}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->i:Landroidx/compose/ui/f;

    .line 58
    .line 59
    return-void
.end method

.method public static final synthetic p(Landroidx/compose/ui/focus/FocusOwnerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->J1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final s(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/f$c;
    .locals 5

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x2000

    .line 8
    .line 9
    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    or-int/2addr v1, v2

    .line 14
    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->j1()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string v2, "visitLocalDescendants called on an unattached node"

    .line 25
    .line 26
    invoke-static {v2}, Lg0/a;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->Z0()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    and-int/2addr v2, v1

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->e1()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    and-int/2addr v2, v1

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->e1()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    and-int/2addr v2, v4

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    return-object v3

    .line 66
    :cond_1
    move-object v3, p1

    .line 67
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return-object v3
.end method

.method private final t(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Ld0/d;->a(Landroid/view/KeyEvent;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1}, Ld0/d;->b(Landroid/view/KeyEvent;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sget-object v2, Ld0/c;->a:Ld0/c$a;

    .line 10
    .line 11
    invoke-virtual {v2}, Ld0/c$a;->a()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {p1, v3}, Ld0/c;->e(II)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->j:Landroidx/collection/i0;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Landroidx/collection/i0;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {p1, v2}, Landroidx/collection/i0;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->j:Landroidx/collection/i0;

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroidx/collection/i0;->l(J)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v2}, Ld0/c$a;->b()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {p1, v2}, Ld0/c;->e(II)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->j:Landroidx/collection/i0;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Landroidx/collection/v;->a(J)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-ne p1, v4, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->j:Landroidx/collection/i0;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Landroidx/collection/i0;->m(J)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p1, 0x0

    .line 67
    return p1

    .line 68
    :cond_3
    :goto_0
    return v4
.end method


# virtual methods
.method public a(Landroidx/compose/ui/focus/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->e(Landroidx/compose/ui/focus/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroidx/compose/ui/focus/b;Ly/i;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->a:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public c()Landroidx/compose/ui/focus/v;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->h:Landroidx/compose/ui/focus/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Landroid/view/KeyEvent;)Z
    .locals 10

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->b()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_c

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_b

    .line 17
    .line 18
    const/high16 v1, 0x20000

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->j1()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_a

    .line 33
    .line 34
    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {p1}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    const/4 v3, 0x0

    .line 43
    if-eqz p1, :cond_9

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->Z0()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    and-int/2addr v4, v1

    .line 58
    if-eqz v4, :cond_7

    .line 59
    .line 60
    :goto_1
    if-eqz v2, :cond_7

    .line 61
    .line 62
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->e1()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    and-int/2addr v4, v1

    .line 67
    if-eqz v4, :cond_6

    .line 68
    .line 69
    move-object v4, v2

    .line 70
    move-object v5, v3

    .line 71
    :goto_2
    if-eqz v4, :cond_6

    .line 72
    .line 73
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->e1()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    and-int/2addr v6, v1

    .line 78
    if-eqz v6, :cond_5

    .line 79
    .line 80
    instance-of v6, v4, Landroidx/compose/ui/node/i;

    .line 81
    .line 82
    if-eqz v6, :cond_5

    .line 83
    .line 84
    move-object v6, v4

    .line 85
    check-cast v6, Landroidx/compose/ui/node/i;

    .line 86
    .line 87
    invoke-virtual {v6}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    move v7, v0

    .line 92
    :goto_3
    const/4 v8, 0x1

    .line 93
    if-eqz v6, :cond_4

    .line 94
    .line 95
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->e1()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    and-int/2addr v9, v1

    .line 100
    if-eqz v9, :cond_3

    .line 101
    .line 102
    add-int/lit8 v7, v7, 0x1

    .line 103
    .line 104
    if-ne v7, v8, :cond_0

    .line 105
    .line 106
    move-object v4, v6

    .line 107
    goto :goto_4

    .line 108
    :cond_0
    if-nez v5, :cond_1

    .line 109
    .line 110
    new-instance v5, Landroidx/compose/runtime/collection/b;

    .line 111
    .line 112
    const/16 v8, 0x10

    .line 113
    .line 114
    new-array v8, v8, [Landroidx/compose/ui/f$c;

    .line 115
    .line 116
    invoke-direct {v5, v8, v0}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 117
    .line 118
    .line 119
    :cond_1
    if-eqz v4, :cond_2

    .line 120
    .line 121
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-object v4, v3

    .line 125
    :cond_2
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_3
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    goto :goto_3

    .line 133
    :cond_4
    if-ne v7, v8, :cond_5

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    invoke-static {v5}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    goto :goto_2

    .line 141
    :cond_6
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    goto :goto_1

    .line 146
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_8

    .line 151
    .line 152
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    if-eqz v2, :cond_8

    .line 157
    .line 158
    invoke-virtual {v2}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    goto :goto_0

    .line 163
    :cond_8
    move-object v2, v3

    .line 164
    goto :goto_0

    .line 165
    :cond_9
    invoke-static {v3}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    const-string v0, "visitAncestors called on an unattached node"

    .line 172
    .line 173
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_b
    :goto_5
    return v0

    .line 178
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 179
    .line 180
    const-string v0, "Dispatching intercepted soft keyboard event while focus system is invalidated."

    .line 181
    .line 182
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1
.end method

.method public e(ILy/i;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->e:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 17
    .line 18
    invoke-static {v0, p1, v2}, Landroidx/compose/ui/focus/w;->a(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget-object v3, Landroidx/compose/ui/focus/FocusRequester;->b:Landroidx/compose/ui/focus/FocusRequester$a;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusRequester$a;->a()Landroidx/compose/ui/focus/FocusRequester;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusRequester$a;->b()Landroidx/compose/ui/focus/FocusRequester;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v2, p3}, Landroidx/compose/ui/focus/FocusRequester;->c(Lkotlin/jvm/functions/Function1;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_1
    move-object v0, v1

    .line 55
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->e:Lkotlin/jvm/functions/Function0;

    .line 58
    .line 59
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 64
    .line 65
    new-instance v3, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    .line 66
    .line 67
    invoke-direct {v3, v0, p0, p3}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl;Lkotlin/jvm/functions/Function1;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1, p1, v2, p2, v3}, Landroidx/compose/ui/focus/w;->e(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;Ly/i;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method public f(Lf0/b;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2f

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "visitAncestors called on an unattached node"

    .line 16
    .line 17
    const/16 v2, 0x4000

    .line 18
    .line 19
    const/16 v3, 0x10

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x1

    .line 24
    if-eqz v0, :cond_c

    .line 25
    .line 26
    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-interface {v0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->j1()Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-eqz v8, :cond_b

    .line 39
    .line 40
    invoke-interface {v0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-static {v0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    if-eqz v0, :cond_a

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v9}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->Z0()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    and-int/2addr v9, v7

    .line 63
    if-eqz v9, :cond_8

    .line 64
    .line 65
    :goto_1
    if-eqz v8, :cond_8

    .line 66
    .line 67
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->e1()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    and-int/2addr v9, v7

    .line 72
    if-eqz v9, :cond_7

    .line 73
    .line 74
    move-object v10, v5

    .line 75
    move-object v9, v8

    .line 76
    :goto_2
    if-eqz v9, :cond_7

    .line 77
    .line 78
    instance-of v11, v9, Lf0/a;

    .line 79
    .line 80
    if-eqz v11, :cond_0

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_0
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->e1()I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    and-int/2addr v11, v7

    .line 88
    if-eqz v11, :cond_6

    .line 89
    .line 90
    instance-of v11, v9, Landroidx/compose/ui/node/i;

    .line 91
    .line 92
    if-eqz v11, :cond_6

    .line 93
    .line 94
    move-object v11, v9

    .line 95
    check-cast v11, Landroidx/compose/ui/node/i;

    .line 96
    .line 97
    invoke-virtual {v11}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    move v12, v4

    .line 102
    :goto_3
    if-eqz v11, :cond_5

    .line 103
    .line 104
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->e1()I

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    and-int/2addr v13, v7

    .line 109
    if-eqz v13, :cond_4

    .line 110
    .line 111
    add-int/lit8 v12, v12, 0x1

    .line 112
    .line 113
    if-ne v12, v6, :cond_1

    .line 114
    .line 115
    move-object v9, v11

    .line 116
    goto :goto_4

    .line 117
    :cond_1
    if-nez v10, :cond_2

    .line 118
    .line 119
    new-instance v10, Landroidx/compose/runtime/collection/b;

    .line 120
    .line 121
    new-array v13, v3, [Landroidx/compose/ui/f$c;

    .line 122
    .line 123
    invoke-direct {v10, v13, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 124
    .line 125
    .line 126
    :cond_2
    if-eqz v9, :cond_3

    .line 127
    .line 128
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-object v9, v5

    .line 132
    :cond_3
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_4
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    if-ne v12, v6, :cond_6

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    invoke-static {v10}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    goto :goto_2

    .line 148
    :cond_7
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    goto :goto_1

    .line 153
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    if-eqz v8, :cond_9

    .line 164
    .line 165
    invoke-virtual {v8}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    goto :goto_0

    .line 170
    :cond_9
    move-object v8, v5

    .line 171
    goto :goto_0

    .line 172
    :cond_a
    move-object v9, v5

    .line 173
    :goto_5
    check-cast v9, Lf0/a;

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :cond_c
    move-object v9, v5

    .line 183
    :goto_6
    if-eqz v9, :cond_2e

    .line 184
    .line 185
    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->j1()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_2d

    .line 198
    .line 199
    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v9}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    move-object v7, v5

    .line 212
    :goto_7
    if-eqz v2, :cond_18

    .line 213
    .line 214
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-virtual {v8}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->Z0()I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    and-int/2addr v8, v0

    .line 227
    if-eqz v8, :cond_16

    .line 228
    .line 229
    :goto_8
    if-eqz v1, :cond_16

    .line 230
    .line 231
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->e1()I

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    and-int/2addr v8, v0

    .line 236
    if-eqz v8, :cond_15

    .line 237
    .line 238
    move-object v8, v1

    .line 239
    move-object v10, v5

    .line 240
    :goto_9
    if-eqz v8, :cond_15

    .line 241
    .line 242
    instance-of v11, v8, Lf0/a;

    .line 243
    .line 244
    if-eqz v11, :cond_e

    .line 245
    .line 246
    if-nez v7, :cond_d

    .line 247
    .line 248
    new-instance v7, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .line 252
    .line 253
    :cond_d
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    goto :goto_c

    .line 257
    :cond_e
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->e1()I

    .line 258
    .line 259
    .line 260
    move-result v11

    .line 261
    and-int/2addr v11, v0

    .line 262
    if-eqz v11, :cond_14

    .line 263
    .line 264
    instance-of v11, v8, Landroidx/compose/ui/node/i;

    .line 265
    .line 266
    if-eqz v11, :cond_14

    .line 267
    .line 268
    move-object v11, v8

    .line 269
    check-cast v11, Landroidx/compose/ui/node/i;

    .line 270
    .line 271
    invoke-virtual {v11}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    move v12, v4

    .line 276
    :goto_a
    if-eqz v11, :cond_13

    .line 277
    .line 278
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->e1()I

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    and-int/2addr v13, v0

    .line 283
    if-eqz v13, :cond_12

    .line 284
    .line 285
    add-int/lit8 v12, v12, 0x1

    .line 286
    .line 287
    if-ne v12, v6, :cond_f

    .line 288
    .line 289
    move-object v8, v11

    .line 290
    goto :goto_b

    .line 291
    :cond_f
    if-nez v10, :cond_10

    .line 292
    .line 293
    new-instance v10, Landroidx/compose/runtime/collection/b;

    .line 294
    .line 295
    new-array v13, v3, [Landroidx/compose/ui/f$c;

    .line 296
    .line 297
    invoke-direct {v10, v13, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 298
    .line 299
    .line 300
    :cond_10
    if-eqz v8, :cond_11

    .line 301
    .line 302
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-object v8, v5

    .line 306
    :cond_11
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    :cond_12
    :goto_b
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    goto :goto_a

    .line 314
    :cond_13
    if-ne v12, v6, :cond_14

    .line 315
    .line 316
    goto :goto_9

    .line 317
    :cond_14
    :goto_c
    invoke-static {v10}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    goto :goto_9

    .line 322
    :cond_15
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    goto :goto_8

    .line 327
    :cond_16
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    if-eqz v2, :cond_17

    .line 332
    .line 333
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    if-eqz v1, :cond_17

    .line 338
    .line 339
    invoke-virtual {v1}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    goto/16 :goto_7

    .line 344
    .line 345
    :cond_17
    move-object v1, v5

    .line 346
    goto/16 :goto_7

    .line 347
    .line 348
    :cond_18
    if-eqz v7, :cond_1b

    .line 349
    .line 350
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    add-int/lit8 v1, v1, -0x1

    .line 355
    .line 356
    if-ltz v1, :cond_1b

    .line 357
    .line 358
    :goto_d
    add-int/lit8 v2, v1, -0x1

    .line 359
    .line 360
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    check-cast v1, Lf0/a;

    .line 365
    .line 366
    invoke-interface {v1, p1}, Lf0/a;->I0(Lf0/b;)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-eqz v1, :cond_19

    .line 371
    .line 372
    return v6

    .line 373
    :cond_19
    if-gez v2, :cond_1a

    .line 374
    .line 375
    goto :goto_e

    .line 376
    :cond_1a
    move v1, v2

    .line 377
    goto :goto_d

    .line 378
    :cond_1b
    :goto_e
    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    move-object v2, v5

    .line 383
    :goto_f
    if-eqz v1, :cond_23

    .line 384
    .line 385
    instance-of v8, v1, Lf0/a;

    .line 386
    .line 387
    if-eqz v8, :cond_1c

    .line 388
    .line 389
    check-cast v1, Lf0/a;

    .line 390
    .line 391
    invoke-interface {v1, p1}, Lf0/a;->I0(Lf0/b;)Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-eqz v1, :cond_22

    .line 396
    .line 397
    return v6

    .line 398
    :cond_1c
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->e1()I

    .line 399
    .line 400
    .line 401
    move-result v8

    .line 402
    and-int/2addr v8, v0

    .line 403
    if-eqz v8, :cond_22

    .line 404
    .line 405
    instance-of v8, v1, Landroidx/compose/ui/node/i;

    .line 406
    .line 407
    if-eqz v8, :cond_22

    .line 408
    .line 409
    move-object v8, v1

    .line 410
    check-cast v8, Landroidx/compose/ui/node/i;

    .line 411
    .line 412
    invoke-virtual {v8}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 413
    .line 414
    .line 415
    move-result-object v8

    .line 416
    move v10, v4

    .line 417
    :goto_10
    if-eqz v8, :cond_21

    .line 418
    .line 419
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->e1()I

    .line 420
    .line 421
    .line 422
    move-result v11

    .line 423
    and-int/2addr v11, v0

    .line 424
    if-eqz v11, :cond_20

    .line 425
    .line 426
    add-int/lit8 v10, v10, 0x1

    .line 427
    .line 428
    if-ne v10, v6, :cond_1d

    .line 429
    .line 430
    move-object v1, v8

    .line 431
    goto :goto_11

    .line 432
    :cond_1d
    if-nez v2, :cond_1e

    .line 433
    .line 434
    new-instance v2, Landroidx/compose/runtime/collection/b;

    .line 435
    .line 436
    new-array v11, v3, [Landroidx/compose/ui/f$c;

    .line 437
    .line 438
    invoke-direct {v2, v11, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 439
    .line 440
    .line 441
    :cond_1e
    if-eqz v1, :cond_1f

    .line 442
    .line 443
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-object v1, v5

    .line 447
    :cond_1f
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    :cond_20
    :goto_11
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    goto :goto_10

    .line 455
    :cond_21
    if-ne v10, v6, :cond_22

    .line 456
    .line 457
    goto :goto_f

    .line 458
    :cond_22
    invoke-static {v2}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    goto :goto_f

    .line 463
    :cond_23
    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    move-object v2, v5

    .line 468
    :goto_12
    if-eqz v1, :cond_2b

    .line 469
    .line 470
    instance-of v8, v1, Lf0/a;

    .line 471
    .line 472
    if-eqz v8, :cond_24

    .line 473
    .line 474
    check-cast v1, Lf0/a;

    .line 475
    .line 476
    invoke-interface {v1, p1}, Lf0/a;->W0(Lf0/b;)Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    if-eqz v1, :cond_2a

    .line 481
    .line 482
    return v6

    .line 483
    :cond_24
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->e1()I

    .line 484
    .line 485
    .line 486
    move-result v8

    .line 487
    and-int/2addr v8, v0

    .line 488
    if-eqz v8, :cond_2a

    .line 489
    .line 490
    instance-of v8, v1, Landroidx/compose/ui/node/i;

    .line 491
    .line 492
    if-eqz v8, :cond_2a

    .line 493
    .line 494
    move-object v8, v1

    .line 495
    check-cast v8, Landroidx/compose/ui/node/i;

    .line 496
    .line 497
    invoke-virtual {v8}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 498
    .line 499
    .line 500
    move-result-object v8

    .line 501
    move v9, v4

    .line 502
    :goto_13
    if-eqz v8, :cond_29

    .line 503
    .line 504
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->e1()I

    .line 505
    .line 506
    .line 507
    move-result v10

    .line 508
    and-int/2addr v10, v0

    .line 509
    if-eqz v10, :cond_28

    .line 510
    .line 511
    add-int/lit8 v9, v9, 0x1

    .line 512
    .line 513
    if-ne v9, v6, :cond_25

    .line 514
    .line 515
    move-object v1, v8

    .line 516
    goto :goto_14

    .line 517
    :cond_25
    if-nez v2, :cond_26

    .line 518
    .line 519
    new-instance v2, Landroidx/compose/runtime/collection/b;

    .line 520
    .line 521
    new-array v10, v3, [Landroidx/compose/ui/f$c;

    .line 522
    .line 523
    invoke-direct {v2, v10, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 524
    .line 525
    .line 526
    :cond_26
    if-eqz v1, :cond_27

    .line 527
    .line 528
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-object v1, v5

    .line 532
    :cond_27
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    :cond_28
    :goto_14
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 536
    .line 537
    .line 538
    move-result-object v8

    .line 539
    goto :goto_13

    .line 540
    :cond_29
    if-ne v9, v6, :cond_2a

    .line 541
    .line 542
    goto :goto_12

    .line 543
    :cond_2a
    invoke-static {v2}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    goto :goto_12

    .line 548
    :cond_2b
    if-eqz v7, :cond_2e

    .line 549
    .line 550
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    move v1, v4

    .line 555
    :goto_15
    if-ge v1, v0, :cond_2e

    .line 556
    .line 557
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    check-cast v2, Lf0/a;

    .line 562
    .line 563
    invoke-interface {v2, p1}, Lf0/a;->W0(Lf0/b;)Z

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    if-eqz v2, :cond_2c

    .line 568
    .line 569
    return v6

    .line 570
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    .line 571
    .line 572
    goto :goto_15

    .line 573
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 574
    .line 575
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    throw p1

    .line 579
    :cond_2e
    return v4

    .line 580
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 581
    .line 582
    const-string v0, "Dispatching rotary event while focus system is invalidated."

    .line 583
    .line 584
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    throw p1
.end method

.method public g(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->g(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h()Landroidx/compose/ui/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->i:Landroidx/compose/ui/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusInvalidationManager;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_43

    .line 13
    .line 14
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->t(Landroid/view/KeyEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    return v4

    .line 22
    :cond_0
    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 23
    .line 24
    invoke-static {v3}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v5, "visitAncestors called on an unattached node"

    .line 29
    .line 30
    const/16 v6, 0x2000

    .line 31
    .line 32
    const/16 v7, 0x10

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-direct {v0, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->s(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/f$c;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    if-nez v9, :cond_1b

    .line 42
    .line 43
    :cond_1
    if-eqz v3, :cond_e

    .line 44
    .line 45
    invoke-static {v6}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    invoke-interface {v3}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->j1()Z

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    if-eqz v10, :cond_d

    .line 58
    .line 59
    invoke-interface {v3}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-static {v3}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :goto_0
    if-eqz v3, :cond_c

    .line 68
    .line 69
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    invoke-virtual {v11}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->Z0()I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    and-int/2addr v11, v9

    .line 82
    if-eqz v11, :cond_a

    .line 83
    .line 84
    :goto_1
    if-eqz v10, :cond_a

    .line 85
    .line 86
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->e1()I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    and-int/2addr v11, v9

    .line 91
    if-eqz v11, :cond_9

    .line 92
    .line 93
    move-object v12, v8

    .line 94
    move-object v11, v10

    .line 95
    :goto_2
    if-eqz v11, :cond_9

    .line 96
    .line 97
    instance-of v13, v11, Ld0/e;

    .line 98
    .line 99
    if-eqz v13, :cond_2

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_2
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->e1()I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    and-int/2addr v13, v9

    .line 107
    if-eqz v13, :cond_8

    .line 108
    .line 109
    instance-of v13, v11, Landroidx/compose/ui/node/i;

    .line 110
    .line 111
    if-eqz v13, :cond_8

    .line 112
    .line 113
    move-object v13, v11

    .line 114
    check-cast v13, Landroidx/compose/ui/node/i;

    .line 115
    .line 116
    invoke-virtual {v13}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    move v14, v4

    .line 121
    :goto_3
    if-eqz v13, :cond_7

    .line 122
    .line 123
    invoke-virtual {v13}, Landroidx/compose/ui/f$c;->e1()I

    .line 124
    .line 125
    .line 126
    move-result v15

    .line 127
    and-int/2addr v15, v9

    .line 128
    if-eqz v15, :cond_6

    .line 129
    .line 130
    add-int/2addr v14, v2

    .line 131
    if-ne v14, v2, :cond_3

    .line 132
    .line 133
    move-object v11, v13

    .line 134
    goto :goto_4

    .line 135
    :cond_3
    if-nez v12, :cond_4

    .line 136
    .line 137
    new-instance v12, Landroidx/compose/runtime/collection/b;

    .line 138
    .line 139
    new-array v15, v7, [Landroidx/compose/ui/f$c;

    .line 140
    .line 141
    invoke-direct {v12, v15, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 142
    .line 143
    .line 144
    :cond_4
    if-eqz v11, :cond_5

    .line 145
    .line 146
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-object v11, v8

    .line 150
    :cond_5
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_4
    invoke-virtual {v13}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    goto :goto_3

    .line 158
    :cond_7
    if-ne v14, v2, :cond_8

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_8
    invoke-static {v12}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    goto :goto_2

    .line 166
    :cond_9
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    goto :goto_1

    .line 171
    :cond_a
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    if-eqz v3, :cond_b

    .line 176
    .line 177
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    if-eqz v10, :cond_b

    .line 182
    .line 183
    invoke-virtual {v10}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    goto :goto_0

    .line 188
    :cond_b
    move-object v10, v8

    .line 189
    goto :goto_0

    .line 190
    :cond_c
    move-object v11, v8

    .line 191
    :goto_5
    check-cast v11, Ld0/e;

    .line 192
    .line 193
    if-eqz v11, :cond_e

    .line 194
    .line 195
    invoke-interface {v11}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    goto/16 :goto_c

    .line 200
    .line 201
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 202
    .line 203
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v1

    .line 207
    :cond_e
    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 208
    .line 209
    invoke-static {v6}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    invoke-interface {v3}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->j1()Z

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    if-eqz v10, :cond_42

    .line 222
    .line 223
    invoke-interface {v3}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-static {v3}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    :goto_6
    if-eqz v3, :cond_19

    .line 236
    .line 237
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    invoke-virtual {v11}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->Z0()I

    .line 246
    .line 247
    .line 248
    move-result v11

    .line 249
    and-int/2addr v11, v9

    .line 250
    if-eqz v11, :cond_17

    .line 251
    .line 252
    :goto_7
    if-eqz v10, :cond_17

    .line 253
    .line 254
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->e1()I

    .line 255
    .line 256
    .line 257
    move-result v11

    .line 258
    and-int/2addr v11, v9

    .line 259
    if-eqz v11, :cond_16

    .line 260
    .line 261
    move-object v12, v8

    .line 262
    move-object v11, v10

    .line 263
    :goto_8
    if-eqz v11, :cond_16

    .line 264
    .line 265
    instance-of v13, v11, Ld0/e;

    .line 266
    .line 267
    if-eqz v13, :cond_f

    .line 268
    .line 269
    goto :goto_b

    .line 270
    :cond_f
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->e1()I

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    and-int/2addr v13, v9

    .line 275
    if-eqz v13, :cond_15

    .line 276
    .line 277
    instance-of v13, v11, Landroidx/compose/ui/node/i;

    .line 278
    .line 279
    if-eqz v13, :cond_15

    .line 280
    .line 281
    move-object v13, v11

    .line 282
    check-cast v13, Landroidx/compose/ui/node/i;

    .line 283
    .line 284
    invoke-virtual {v13}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 285
    .line 286
    .line 287
    move-result-object v13

    .line 288
    move v14, v4

    .line 289
    :goto_9
    if-eqz v13, :cond_14

    .line 290
    .line 291
    invoke-virtual {v13}, Landroidx/compose/ui/f$c;->e1()I

    .line 292
    .line 293
    .line 294
    move-result v15

    .line 295
    and-int/2addr v15, v9

    .line 296
    if-eqz v15, :cond_13

    .line 297
    .line 298
    add-int/2addr v14, v2

    .line 299
    if-ne v14, v2, :cond_10

    .line 300
    .line 301
    move-object v11, v13

    .line 302
    goto :goto_a

    .line 303
    :cond_10
    if-nez v12, :cond_11

    .line 304
    .line 305
    new-instance v12, Landroidx/compose/runtime/collection/b;

    .line 306
    .line 307
    new-array v15, v7, [Landroidx/compose/ui/f$c;

    .line 308
    .line 309
    invoke-direct {v12, v15, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 310
    .line 311
    .line 312
    :cond_11
    if-eqz v11, :cond_12

    .line 313
    .line 314
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-object v11, v8

    .line 318
    :cond_12
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    :cond_13
    :goto_a
    invoke-virtual {v13}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 322
    .line 323
    .line 324
    move-result-object v13

    .line 325
    goto :goto_9

    .line 326
    :cond_14
    if-ne v14, v2, :cond_15

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_15
    invoke-static {v12}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 330
    .line 331
    .line 332
    move-result-object v11

    .line 333
    goto :goto_8

    .line 334
    :cond_16
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    goto :goto_7

    .line 339
    :cond_17
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    if-eqz v3, :cond_18

    .line 344
    .line 345
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    if-eqz v10, :cond_18

    .line 350
    .line 351
    invoke-virtual {v10}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 352
    .line 353
    .line 354
    move-result-object v10

    .line 355
    goto :goto_6

    .line 356
    :cond_18
    move-object v10, v8

    .line 357
    goto :goto_6

    .line 358
    :cond_19
    move-object v11, v8

    .line 359
    :goto_b
    check-cast v11, Ld0/e;

    .line 360
    .line 361
    if-eqz v11, :cond_1a

    .line 362
    .line 363
    invoke-interface {v11}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    goto :goto_c

    .line 368
    :cond_1a
    move-object v9, v8

    .line 369
    :cond_1b
    :goto_c
    if-eqz v9, :cond_41

    .line 370
    .line 371
    invoke-static {v6}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->j1()Z

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    if-eqz v6, :cond_40

    .line 384
    .line 385
    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-static {v9}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    move-object v10, v8

    .line 398
    :goto_d
    if-eqz v6, :cond_27

    .line 399
    .line 400
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 401
    .line 402
    .line 403
    move-result-object v11

    .line 404
    invoke-virtual {v11}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    .line 405
    .line 406
    .line 407
    move-result-object v11

    .line 408
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->Z0()I

    .line 409
    .line 410
    .line 411
    move-result v11

    .line 412
    and-int/2addr v11, v3

    .line 413
    if-eqz v11, :cond_25

    .line 414
    .line 415
    :goto_e
    if-eqz v5, :cond_25

    .line 416
    .line 417
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->e1()I

    .line 418
    .line 419
    .line 420
    move-result v11

    .line 421
    and-int/2addr v11, v3

    .line 422
    if-eqz v11, :cond_24

    .line 423
    .line 424
    move-object v11, v5

    .line 425
    move-object v12, v8

    .line 426
    :goto_f
    if-eqz v11, :cond_24

    .line 427
    .line 428
    instance-of v13, v11, Ld0/e;

    .line 429
    .line 430
    if-eqz v13, :cond_1d

    .line 431
    .line 432
    if-nez v10, :cond_1c

    .line 433
    .line 434
    new-instance v10, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .line 438
    .line 439
    :cond_1c
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    goto :goto_12

    .line 443
    :cond_1d
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->e1()I

    .line 444
    .line 445
    .line 446
    move-result v13

    .line 447
    and-int/2addr v13, v3

    .line 448
    if-eqz v13, :cond_23

    .line 449
    .line 450
    instance-of v13, v11, Landroidx/compose/ui/node/i;

    .line 451
    .line 452
    if-eqz v13, :cond_23

    .line 453
    .line 454
    move-object v13, v11

    .line 455
    check-cast v13, Landroidx/compose/ui/node/i;

    .line 456
    .line 457
    invoke-virtual {v13}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 458
    .line 459
    .line 460
    move-result-object v13

    .line 461
    move v14, v4

    .line 462
    :goto_10
    if-eqz v13, :cond_22

    .line 463
    .line 464
    invoke-virtual {v13}, Landroidx/compose/ui/f$c;->e1()I

    .line 465
    .line 466
    .line 467
    move-result v15

    .line 468
    and-int/2addr v15, v3

    .line 469
    if-eqz v15, :cond_21

    .line 470
    .line 471
    add-int/2addr v14, v2

    .line 472
    if-ne v14, v2, :cond_1e

    .line 473
    .line 474
    move-object v11, v13

    .line 475
    goto :goto_11

    .line 476
    :cond_1e
    if-nez v12, :cond_1f

    .line 477
    .line 478
    new-instance v12, Landroidx/compose/runtime/collection/b;

    .line 479
    .line 480
    new-array v15, v7, [Landroidx/compose/ui/f$c;

    .line 481
    .line 482
    invoke-direct {v12, v15, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 483
    .line 484
    .line 485
    :cond_1f
    if-eqz v11, :cond_20

    .line 486
    .line 487
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-object v11, v8

    .line 491
    :cond_20
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    :cond_21
    :goto_11
    invoke-virtual {v13}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 495
    .line 496
    .line 497
    move-result-object v13

    .line 498
    goto :goto_10

    .line 499
    :cond_22
    if-ne v14, v2, :cond_23

    .line 500
    .line 501
    goto :goto_f

    .line 502
    :cond_23
    :goto_12
    invoke-static {v12}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 503
    .line 504
    .line 505
    move-result-object v11

    .line 506
    goto :goto_f

    .line 507
    :cond_24
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->g1()Landroidx/compose/ui/f$c;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    goto :goto_e

    .line 512
    :cond_25
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    if-eqz v6, :cond_26

    .line 517
    .line 518
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    if-eqz v5, :cond_26

    .line 523
    .line 524
    invoke-virtual {v5}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    .line 525
    .line 526
    .line 527
    move-result-object v5

    .line 528
    goto/16 :goto_d

    .line 529
    .line 530
    :cond_26
    move-object v5, v8

    .line 531
    goto/16 :goto_d

    .line 532
    .line 533
    :cond_27
    if-eqz v10, :cond_2b

    .line 534
    .line 535
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    add-int/lit8 v5, v5, -0x1

    .line 540
    .line 541
    if-ltz v5, :cond_2a

    .line 542
    .line 543
    :goto_13
    add-int/lit8 v6, v5, -0x1

    .line 544
    .line 545
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    check-cast v5, Ld0/e;

    .line 550
    .line 551
    invoke-interface {v5, v1}, Ld0/e;->l0(Landroid/view/KeyEvent;)Z

    .line 552
    .line 553
    .line 554
    move-result v5

    .line 555
    if-eqz v5, :cond_28

    .line 556
    .line 557
    return v2

    .line 558
    :cond_28
    if-gez v6, :cond_29

    .line 559
    .line 560
    goto :goto_14

    .line 561
    :cond_29
    move v5, v6

    .line 562
    goto :goto_13

    .line 563
    :cond_2a
    :goto_14
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 564
    .line 565
    :cond_2b
    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 566
    .line 567
    .line 568
    move-result-object v5

    .line 569
    move-object v6, v8

    .line 570
    :goto_15
    if-eqz v5, :cond_33

    .line 571
    .line 572
    instance-of v11, v5, Ld0/e;

    .line 573
    .line 574
    if-eqz v11, :cond_2c

    .line 575
    .line 576
    check-cast v5, Ld0/e;

    .line 577
    .line 578
    invoke-interface {v5, v1}, Ld0/e;->l0(Landroid/view/KeyEvent;)Z

    .line 579
    .line 580
    .line 581
    move-result v5

    .line 582
    if-eqz v5, :cond_32

    .line 583
    .line 584
    return v2

    .line 585
    :cond_2c
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->e1()I

    .line 586
    .line 587
    .line 588
    move-result v11

    .line 589
    and-int/2addr v11, v3

    .line 590
    if-eqz v11, :cond_32

    .line 591
    .line 592
    instance-of v11, v5, Landroidx/compose/ui/node/i;

    .line 593
    .line 594
    if-eqz v11, :cond_32

    .line 595
    .line 596
    move-object v11, v5

    .line 597
    check-cast v11, Landroidx/compose/ui/node/i;

    .line 598
    .line 599
    invoke-virtual {v11}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 600
    .line 601
    .line 602
    move-result-object v11

    .line 603
    move v12, v4

    .line 604
    :goto_16
    if-eqz v11, :cond_31

    .line 605
    .line 606
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->e1()I

    .line 607
    .line 608
    .line 609
    move-result v13

    .line 610
    and-int/2addr v13, v3

    .line 611
    if-eqz v13, :cond_30

    .line 612
    .line 613
    add-int/2addr v12, v2

    .line 614
    if-ne v12, v2, :cond_2d

    .line 615
    .line 616
    move-object v5, v11

    .line 617
    goto :goto_17

    .line 618
    :cond_2d
    if-nez v6, :cond_2e

    .line 619
    .line 620
    new-instance v6, Landroidx/compose/runtime/collection/b;

    .line 621
    .line 622
    new-array v13, v7, [Landroidx/compose/ui/f$c;

    .line 623
    .line 624
    invoke-direct {v6, v13, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 625
    .line 626
    .line 627
    :cond_2e
    if-eqz v5, :cond_2f

    .line 628
    .line 629
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-object v5, v8

    .line 633
    :cond_2f
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    :cond_30
    :goto_17
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 637
    .line 638
    .line 639
    move-result-object v11

    .line 640
    goto :goto_16

    .line 641
    :cond_31
    if-ne v12, v2, :cond_32

    .line 642
    .line 643
    goto :goto_15

    .line 644
    :cond_32
    invoke-static {v6}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 645
    .line 646
    .line 647
    move-result-object v5

    .line 648
    goto :goto_15

    .line 649
    :cond_33
    invoke-interface/range {p2 .. p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v5

    .line 653
    check-cast v5, Ljava/lang/Boolean;

    .line 654
    .line 655
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 656
    .line 657
    .line 658
    move-result v5

    .line 659
    if-eqz v5, :cond_34

    .line 660
    .line 661
    return v2

    .line 662
    :cond_34
    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 663
    .line 664
    .line 665
    move-result-object v5

    .line 666
    move-object v6, v8

    .line 667
    :goto_18
    if-eqz v5, :cond_3c

    .line 668
    .line 669
    instance-of v9, v5, Ld0/e;

    .line 670
    .line 671
    if-eqz v9, :cond_35

    .line 672
    .line 673
    check-cast v5, Ld0/e;

    .line 674
    .line 675
    invoke-interface {v5, v1}, Ld0/e;->s0(Landroid/view/KeyEvent;)Z

    .line 676
    .line 677
    .line 678
    move-result v5

    .line 679
    if-eqz v5, :cond_3b

    .line 680
    .line 681
    return v2

    .line 682
    :cond_35
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->e1()I

    .line 683
    .line 684
    .line 685
    move-result v9

    .line 686
    and-int/2addr v9, v3

    .line 687
    if-eqz v9, :cond_3b

    .line 688
    .line 689
    instance-of v9, v5, Landroidx/compose/ui/node/i;

    .line 690
    .line 691
    if-eqz v9, :cond_3b

    .line 692
    .line 693
    move-object v9, v5

    .line 694
    check-cast v9, Landroidx/compose/ui/node/i;

    .line 695
    .line 696
    invoke-virtual {v9}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 697
    .line 698
    .line 699
    move-result-object v9

    .line 700
    move v11, v4

    .line 701
    :goto_19
    if-eqz v9, :cond_3a

    .line 702
    .line 703
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->e1()I

    .line 704
    .line 705
    .line 706
    move-result v12

    .line 707
    and-int/2addr v12, v3

    .line 708
    if-eqz v12, :cond_39

    .line 709
    .line 710
    add-int/2addr v11, v2

    .line 711
    if-ne v11, v2, :cond_36

    .line 712
    .line 713
    move-object v5, v9

    .line 714
    goto :goto_1a

    .line 715
    :cond_36
    if-nez v6, :cond_37

    .line 716
    .line 717
    new-instance v6, Landroidx/compose/runtime/collection/b;

    .line 718
    .line 719
    new-array v12, v7, [Landroidx/compose/ui/f$c;

    .line 720
    .line 721
    invoke-direct {v6, v12, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 722
    .line 723
    .line 724
    :cond_37
    if-eqz v5, :cond_38

    .line 725
    .line 726
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    move-object v5, v8

    .line 730
    :cond_38
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    :cond_39
    :goto_1a
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 734
    .line 735
    .line 736
    move-result-object v9

    .line 737
    goto :goto_19

    .line 738
    :cond_3a
    if-ne v11, v2, :cond_3b

    .line 739
    .line 740
    goto :goto_18

    .line 741
    :cond_3b
    invoke-static {v6}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 742
    .line 743
    .line 744
    move-result-object v5

    .line 745
    goto :goto_18

    .line 746
    :cond_3c
    if-eqz v10, :cond_3f

    .line 747
    .line 748
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 749
    .line 750
    .line 751
    move-result v3

    .line 752
    move v5, v4

    .line 753
    :goto_1b
    if-ge v5, v3, :cond_3e

    .line 754
    .line 755
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v6

    .line 759
    check-cast v6, Ld0/e;

    .line 760
    .line 761
    invoke-interface {v6, v1}, Ld0/e;->s0(Landroid/view/KeyEvent;)Z

    .line 762
    .line 763
    .line 764
    move-result v6

    .line 765
    if-eqz v6, :cond_3d

    .line 766
    .line 767
    return v2

    .line 768
    :cond_3d
    add-int/2addr v5, v2

    .line 769
    goto :goto_1b

    .line 770
    :cond_3e
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 771
    .line 772
    :cond_3f
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 773
    .line 774
    goto :goto_1c

    .line 775
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 776
    .line 777
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    throw v1

    .line 781
    :cond_41
    :goto_1c
    return v4

    .line 782
    :cond_42
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 783
    .line 784
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    throw v1

    .line 788
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 789
    .line 790
    const-string v2, "Dispatching key event while focus system is invalidated."

    .line 791
    .line 792
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    throw v1
.end method

.method public j(ZZZI)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->c()Landroidx/compose/ui/focus/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/focus/FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1;->INSTANCE:Landroidx/compose/ui/focus/FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1;

    .line 6
    .line 7
    :try_start_0
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->e(Landroidx/compose/ui/focus/v;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->b(Landroidx/compose/ui/focus/v;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    :goto_0
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->a(Landroidx/compose/ui/focus/v;)V

    .line 20
    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->d(Landroidx/compose/ui/focus/v;)Landroidx/compose/runtime/collection/b;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    if-nez p1, :cond_3

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 34
    .line 35
    invoke-static {v1, p4}, Landroidx/compose/ui/focus/FocusTransactionsKt;->e(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    sget-object v1, Landroidx/compose/ui/focus/FocusOwnerImpl$a;->a:[I

    .line 40
    .line 41
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result p4

    .line 45
    aget p4, v1, p4

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    if-eq p4, v1, :cond_2

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    if-eq p4, v1, :cond_2

    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    if-eq p4, v1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 p1, 0x0

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    :goto_1
    iget-object p4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 60
    .line 61
    invoke-static {p4, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    .line 62
    .line 63
    .line 64
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_2
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->c(Landroidx/compose/ui/focus/v;)V

    .line 66
    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    if-eqz p3, :cond_4

    .line 71
    .line 72
    iget-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Lkotlin/jvm/functions/Function0;

    .line 73
    .line 74
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_4
    return p1

    .line 78
    :goto_3
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->c(Landroidx/compose/ui/focus/v;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public k()Landroidx/compose/ui/focus/r;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->J1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public l(Landroidx/compose/ui/focus/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->f(Landroidx/compose/ui/focus/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m()Ly/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/focus/w;->d(Landroidx/compose/ui/focus/FocusTargetNode;)Ly/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public n()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->c()Landroidx/compose/ui/focus/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->e(Landroidx/compose/ui/focus/v;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 13
    .line 14
    invoke-static {v0, v2, v2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->a(Landroidx/compose/ui/focus/v;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 22
    .line 23
    invoke-static {v1, v2, v2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->c(Landroidx/compose/ui/focus/v;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->c(Landroidx/compose/ui/focus/v;)V

    .line 32
    .line 33
    .line 34
    throw v1
.end method

.method public o(Z)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, p1, v1, v1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->j(ZZZI)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final q()Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 2
    .line 3
    return-object v0
.end method
