.class public abstract Landroidx/compose/runtime/k;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;

.field private static final e:Ljava/lang/Object;

.field private static final f:Ljava/lang/Object;

.field private static final g:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/l1;

    .line 2
    .line 3
    const-string v1, "provider"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/runtime/l1;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/k;->a:Ljava/lang/Object;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/runtime/l1;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/runtime/l1;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/runtime/k;->b:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/runtime/l1;

    .line 18
    .line 19
    const-string v1, "compositionLocalMap"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroidx/compose/runtime/l1;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/compose/runtime/k;->c:Ljava/lang/Object;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/runtime/l1;

    .line 27
    .line 28
    const-string v1, "providerValues"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Landroidx/compose/runtime/l1;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Landroidx/compose/runtime/k;->d:Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v0, Landroidx/compose/runtime/l1;

    .line 36
    .line 37
    const-string v1, "providers"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroidx/compose/runtime/l1;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Landroidx/compose/runtime/k;->e:Ljava/lang/Object;

    .line 43
    .line 44
    new-instance v0, Landroidx/compose/runtime/l1;

    .line 45
    .line 46
    const-string v1, "reference"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Landroidx/compose/runtime/l1;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Landroidx/compose/runtime/k;->f:Ljava/lang/Object;

    .line 52
    .line 53
    new-instance v0, Landroidx/compose/runtime/j;

    .line 54
    .line 55
    invoke-direct {v0}, Landroidx/compose/runtime/j;-><init>()V

    .line 56
    .line 57
    .line 58
    sput-object v0, Landroidx/compose/runtime/k;->g:Ljava/util/Comparator;

    .line 59
    .line 60
    return-void
.end method

.method private static final A(Landroidx/compose/runtime/q0;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/q0;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/runtime/p0;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/q0;->a()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Landroidx/compose/runtime/q0;->d()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/q0;->a()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    return-object v0
.end method

.method public static final B()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/k;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final C()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/k;->e:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final D()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/k;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final E(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->w(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gez v0, :cond_1

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    neg-int v0, v0

    .line 11
    instance-of v2, p3, Landroidx/compose/runtime/z;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p3, v1

    .line 17
    :goto_0
    new-instance v1, Landroidx/compose/runtime/o0;

    .line 18
    .line 19
    invoke-direct {v1, p2, p1, p3}, Landroidx/compose/runtime/o0;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroidx/compose/runtime/o0;

    .line 31
    .line 32
    instance-of p1, p3, Landroidx/compose/runtime/z;

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/runtime/o0;->a()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/o0;->e(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    instance-of p2, p1, Landroidx/collection/MutableScatterSet;

    .line 47
    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    check-cast p1, Landroidx/collection/MutableScatterSet;

    .line 51
    .line 52
    invoke-virtual {p1, p3}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p1, p3}, Landroidx/collection/w0;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableScatterSet;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/o0;->e(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/o0;->e(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void
.end method

.method public static final F(Landroidx/compose/runtime/i2;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/i2;->k()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/i2;->u()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v1, 0x1

    .line 10
    add-int/2addr p0, v1

    .line 11
    if-le v0, p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1
.end method

.method public static final G(Landroidx/compose/runtime/m2;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->a0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->c0()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v1, 0x1

    .line 10
    add-int/2addr p0, v1

    .line 11
    if-le v0, p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1
.end method

.method public static final H()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method private static final I(I)Landroidx/collection/n0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/collection/n0;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/runtime/h1;->b(Landroidx/collection/n0;)Landroidx/collection/n0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final J(Landroidx/compose/runtime/i2;III)I
    .locals 4

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    if-eq p1, p3, :cond_8

    .line 5
    .line 6
    if-ne p2, p3, :cond_1

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/i2;->P(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, p2, :cond_2

    .line 14
    .line 15
    return p2

    .line 16
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->P(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, p1, :cond_3

    .line 21
    .line 22
    return p1

    .line 23
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/i2;->P(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->P(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne v0, v1, :cond_4

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/i2;->P(I)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_4
    invoke-static {p0, p1, p3}, Landroidx/compose/runtime/k;->u(Landroidx/compose/runtime/i2;II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {p0, p2, p3}, Landroidx/compose/runtime/k;->u(Landroidx/compose/runtime/i2;II)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    sub-int v1, v0, p3

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    move v3, v2

    .line 50
    :goto_0
    if-ge v3, v1, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/i2;->P(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    sub-int/2addr p3, v0

    .line 60
    :goto_1
    if-ge v2, p3, :cond_6

    .line 61
    .line 62
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->P(I)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_6
    :goto_2
    if-eq p1, p2, :cond_7

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/i2;->P(I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->P(I)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    goto :goto_2

    .line 80
    :cond_7
    return p1

    .line 81
    :cond_8
    :goto_3
    return p3
.end method

.method public static final K(Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->a0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, v0}, Landroidx/compose/runtime/m2;->p(Landroidx/compose/runtime/m2;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p0}, Landroidx/compose/runtime/m2;->i(Landroidx/compose/runtime/m2;)[I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/m2;->c(Landroidx/compose/runtime/m2;[II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {p0}, Landroidx/compose/runtime/m2;->i(Landroidx/compose/runtime/m2;)[I

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->a0()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->a0()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/m2;->k0(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    add-int/2addr v2, v3

    .line 34
    invoke-static {p0, v2}, Landroidx/compose/runtime/m2;->p(Landroidx/compose/runtime/m2;I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {p0, v1, v2}, Landroidx/compose/runtime/m2;->c(Landroidx/compose/runtime/m2;[II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_0
    if-ge v0, v1, :cond_4

    .line 43
    .line 44
    invoke-static {p0}, Landroidx/compose/runtime/m2;->k(Landroidx/compose/runtime/m2;)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {p0, v0}, Landroidx/compose/runtime/m2;->d(Landroidx/compose/runtime/m2;I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    aget-object v2, v2, v3

    .line 53
    .line 54
    instance-of v3, v2, Landroidx/compose/runtime/h;

    .line 55
    .line 56
    const/4 v4, -0x1

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->e0()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    sub-int/2addr v3, v0

    .line 64
    move-object v5, v2

    .line 65
    check-cast v5, Landroidx/compose/runtime/h;

    .line 66
    .line 67
    invoke-interface {p1, v5, v3, v4, v4}, Landroidx/compose/runtime/a2;->b(Landroidx/compose/runtime/h;III)V

    .line 68
    .line 69
    .line 70
    :cond_0
    instance-of v3, v2, Landroidx/compose/runtime/c2;

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->e0()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    sub-int/2addr v3, v0

    .line 79
    move-object v5, v2

    .line 80
    check-cast v5, Landroidx/compose/runtime/c2;

    .line 81
    .line 82
    invoke-virtual {v5}, Landroidx/compose/runtime/c2;->a()Landroidx/compose/runtime/c;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    if-eqz v6, :cond_1

    .line 87
    .line 88
    invoke-virtual {v6}, Landroidx/compose/runtime/c;->b()Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_1

    .line 93
    .line 94
    invoke-virtual {p0, v6}, Landroidx/compose/runtime/m2;->F(Landroidx/compose/runtime/c;)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->e0()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/m2;->b1(I)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    sub-int/2addr v6, v7

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    move v6, v4

    .line 109
    :goto_1
    invoke-virtual {v5}, Landroidx/compose/runtime/c2;->b()Landroidx/compose/runtime/b2;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-interface {p1, v5, v3, v4, v6}, Landroidx/compose/runtime/a2;->e(Landroidx/compose/runtime/b2;III)V

    .line 114
    .line 115
    .line 116
    :cond_2
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 117
    .line 118
    if-eqz v3, :cond_3

    .line 119
    .line 120
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 121
    .line 122
    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->x()V

    .line 123
    .line 124
    .line 125
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->L0()Z

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method private static final L(Landroidx/compose/runtime/m2;IILjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/runtime/m2;->R0(IILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-ne p3, p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    if-nez p0, :cond_1

    .line 17
    .line 18
    const-string p0, "Slot table is out of sync"

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private static final M(Ljava/util/List;I)Landroidx/compose/runtime/o0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->w(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/compose/runtime/o0;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method private static final N(Ljava/util/List;II)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->v(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/compose/runtime/o0;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/o0;->b()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge v0, p2, :cond_0

    .line 22
    .line 23
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public static final O(Z)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "Check failed"

    .line 4
    .line 5
    invoke-static {p0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final P()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final Q(IIILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/o0;Landroidx/compose/runtime/o0;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->b(Landroidx/compose/runtime/o0;Landroidx/compose/runtime/o0;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final b(Landroidx/compose/runtime/o0;Landroidx/compose/runtime/o0;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/o0;->b()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroidx/compose/runtime/o0;->b()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static final synthetic c(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/k;->n(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d(Z)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/k;->o(Z)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic e(Landroidx/compose/runtime/j2;Landroidx/compose/runtime/c;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->p(Landroidx/compose/runtime/j2;Landroidx/compose/runtime/c;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Ljava/util/List;II)Landroidx/compose/runtime/o0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/k;->x(Ljava/util/List;II)Landroidx/compose/runtime/o0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/k;->g:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h(Landroidx/compose/runtime/q0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/k;->A(Landroidx/compose/runtime/q0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/k;->E(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(I)Landroidx/collection/n0;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/k;->I(I)Landroidx/collection/n0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Landroidx/compose/runtime/i2;III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/k;->J(Landroidx/compose/runtime/i2;III)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic l(Ljava/util/List;I)Landroidx/compose/runtime/o0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->M(Ljava/util/List;I)Landroidx/compose/runtime/o0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Ljava/util/List;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/k;->N(Ljava/util/List;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final n(I)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method

.method private static final o(Z)I
    .locals 0

    .line 1
    return p0
.end method

.method private static final p(Landroidx/compose/runtime/j2;Landroidx/compose/runtime/c;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/runtime/j2;->w()Landroidx/compose/runtime/i2;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/j2;->c(Landroidx/compose/runtime/c;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {v1, v0, p0}, Landroidx/compose/runtime/k;->q(Landroidx/compose/runtime/i2;Ljava/util/List;I)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/runtime/i2;->d()V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-virtual {v1}, Landroidx/compose/runtime/i2;->d()V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method private static final q(Landroidx/compose/runtime/i2;Ljava/util/List;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->J(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->L(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->E(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr p2, v1

    .line 22
    :goto_0
    if-ge v0, p2, :cond_1

    .line 23
    .line 24
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/k;->q(Landroidx/compose/runtime/i2;Ljava/util/List;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/i2;->E(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v0, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    return-void
.end method

.method public static final r(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, "). Please report to Google or use https://goo.gle/compose-feedback"

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public static final s(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, "). Please report to Google or use https://goo.gle/compose-feedback"

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public static final t(Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->a0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->b0()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    :goto_0
    if-ge v0, v1, :cond_5

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/m2;->A0(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    instance-of v3, v2, Landroidx/compose/runtime/h;

    .line 16
    .line 17
    const/4 v4, -0x1

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->e0()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/m2;->d1(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    sub-int/2addr v3, v5

    .line 29
    check-cast v2, Landroidx/compose/runtime/h;

    .line 30
    .line 31
    invoke-interface {p1, v2, v3, v4, v4}, Landroidx/compose/runtime/a2;->d(Landroidx/compose/runtime/h;III)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {p0, v0}, Landroidx/compose/runtime/m2;->p(Landroidx/compose/runtime/m2;I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {p0}, Landroidx/compose/runtime/m2;->i(Landroidx/compose/runtime/m2;)[I

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {p0, v3, v2}, Landroidx/compose/runtime/m2;->A(Landroidx/compose/runtime/m2;[II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {p0}, Landroidx/compose/runtime/m2;->i(Landroidx/compose/runtime/m2;)[I

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    add-int/lit8 v5, v0, 0x1

    .line 51
    .line 52
    invoke-static {p0, v5}, Landroidx/compose/runtime/m2;->p(Landroidx/compose/runtime/m2;I)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-static {p0, v3, v6}, Landroidx/compose/runtime/m2;->c(Landroidx/compose/runtime/m2;[II)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    move v6, v2

    .line 61
    :goto_1
    if-ge v6, v3, :cond_4

    .line 62
    .line 63
    sub-int v7, v6, v2

    .line 64
    .line 65
    invoke-static {p0}, Landroidx/compose/runtime/m2;->k(Landroidx/compose/runtime/m2;)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-static {p0, v6}, Landroidx/compose/runtime/m2;->d(Landroidx/compose/runtime/m2;I)I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    aget-object v8, v8, v9

    .line 74
    .line 75
    instance-of v9, v8, Landroidx/compose/runtime/c2;

    .line 76
    .line 77
    if-eqz v9, :cond_2

    .line 78
    .line 79
    move-object v9, v8

    .line 80
    check-cast v9, Landroidx/compose/runtime/c2;

    .line 81
    .line 82
    invoke-virtual {v9}, Landroidx/compose/runtime/c2;->b()Landroidx/compose/runtime/b2;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    instance-of v11, v10, Landroidx/compose/runtime/e2;

    .line 87
    .line 88
    if-nez v11, :cond_3

    .line 89
    .line 90
    invoke-static {p0, v0, v7, v8}, Landroidx/compose/runtime/k;->L(Landroidx/compose/runtime/m2;IILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->e0()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    sub-int/2addr v8, v7

    .line 98
    invoke-virtual {v9}, Landroidx/compose/runtime/c2;->a()Landroidx/compose/runtime/c;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    if-eqz v7, :cond_1

    .line 103
    .line 104
    invoke-virtual {v7}, Landroidx/compose/runtime/c;->b()Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_1

    .line 109
    .line 110
    invoke-virtual {p0, v7}, Landroidx/compose/runtime/m2;->F(Landroidx/compose/runtime/c;)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->e0()I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    invoke-virtual {p0, v7}, Landroidx/compose/runtime/m2;->b1(I)I

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    sub-int/2addr v9, v11

    .line 123
    goto :goto_2

    .line 124
    :cond_1
    move v7, v4

    .line 125
    move v9, v7

    .line 126
    :goto_2
    invoke-interface {p1, v10, v8, v7, v9}, Landroidx/compose/runtime/a2;->e(Landroidx/compose/runtime/b2;III)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_2
    instance-of v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 131
    .line 132
    if-eqz v9, :cond_3

    .line 133
    .line 134
    invoke-static {p0, v0, v7, v8}, Landroidx/compose/runtime/k;->L(Landroidx/compose/runtime/m2;IILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    check-cast v8, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 138
    .line 139
    invoke-virtual {v8}, Landroidx/compose/runtime/RecomposeScopeImpl;->x()V

    .line 140
    .line 141
    .line 142
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    move v0, v5

    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_5
    return-void
.end method

.method private static final u(Landroidx/compose/runtime/i2;II)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-lez p1, :cond_0

    .line 3
    .line 4
    if-eq p1, p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/i2;->P(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return v0
.end method

.method private static final v(Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->w(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-gez p0, :cond_0

    .line 6
    .line 7
    add-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    neg-int p0, p0

    .line 10
    :cond_0
    return p0
.end method

.method private static final w(Ljava/util/List;I)I
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-gt v1, v0, :cond_2

    .line 9
    .line 10
    add-int v2, v1, v0

    .line 11
    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroidx/compose/runtime/o0;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/compose/runtime/o0;->b()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-gez v3, :cond_0

    .line 29
    .line 30
    add-int/lit8 v1, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-lez v3, :cond_1

    .line 34
    .line 35
    add-int/lit8 v0, v2, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return v2

    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    neg-int p0, v1

    .line 42
    return p0
.end method

.method private static final x(Ljava/util/List;II)Landroidx/compose/runtime/o0;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->v(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroidx/compose/runtime/o0;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/runtime/o0;->b()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-ge p1, p2, :cond_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public static final y()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/k;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final z()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/k;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
