.class final Landroidx/compose/runtime/o$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/runtime/a2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private e:Landroidx/collection/MutableScatterSet;

.field private final f:Ljava/util/List;

.field private final g:Landroidx/collection/d0;

.field private final h:Landroidx/collection/d0;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/o$a;->a:Ljava/util/Set;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/runtime/o$a;->b:Ljava/util/List;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/runtime/o$a;->c:Ljava/util/List;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/compose/runtime/o$a;->d:Ljava/util/List;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroidx/compose/runtime/o$a;->f:Ljava/util/List;

    .line 33
    .line 34
    new-instance p1, Landroidx/collection/d0;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x1

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/d0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroidx/compose/runtime/o$a;->g:Landroidx/collection/d0;

    .line 43
    .line 44
    new-instance p1, Landroidx/collection/d0;

    .line 45
    .line 46
    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/d0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Landroidx/compose/runtime/o$a;->h:Landroidx/collection/d0;

    .line 50
    .line 51
    return-void
.end method

.method private final i(I)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Landroidx/compose/runtime/o$a;->f:Ljava/util/List;

    .line 4
    .line 5
    check-cast v2, Ljava/util/Collection;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_7

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v0

    .line 15
    move-object v4, v2

    .line 16
    move-object v5, v4

    .line 17
    move-object v6, v5

    .line 18
    :goto_0
    iget-object v7, p0, Landroidx/compose/runtime/o$a;->h:Landroidx/collection/d0;

    .line 19
    .line 20
    invoke-virtual {v7}, Landroidx/collection/m;->b()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    const-string v8, "null cannot be cast to non-null type androidx.collection.MutableIntList"

    .line 25
    .line 26
    if-ge v3, v7, :cond_2

    .line 27
    .line 28
    iget-object v7, p0, Landroidx/compose/runtime/o$a;->h:Landroidx/collection/d0;

    .line 29
    .line 30
    invoke-virtual {v7, v3}, Landroidx/collection/m;->a(I)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-gt p1, v7, :cond_1

    .line 35
    .line 36
    iget-object v7, p0, Landroidx/compose/runtime/o$a;->f:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    iget-object v9, p0, Landroidx/compose/runtime/o$a;->h:Landroidx/collection/d0;

    .line 43
    .line 44
    invoke-virtual {v9, v3}, Landroidx/collection/d0;->i(I)I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    iget-object v10, p0, Landroidx/compose/runtime/o$a;->g:Landroidx/collection/d0;

    .line 49
    .line 50
    invoke-virtual {v10, v3}, Landroidx/collection/d0;->i(I)I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    new-array v4, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v7, v4, v0

    .line 59
    .line 60
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    new-instance v6, Landroidx/collection/d0;

    .line 65
    .line 66
    invoke-direct {v6, v0, v1, v2}, Landroidx/collection/d0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v9}, Landroidx/collection/d0;->e(I)Z

    .line 70
    .line 71
    .line 72
    new-instance v5, Landroidx/collection/d0;

    .line 73
    .line 74
    invoke-direct {v5, v0, v1, v2}, Landroidx/collection/d0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v10}, Landroidx/collection/d0;->e(I)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v9}, Landroidx/collection/d0;->e(I)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v10}, Landroidx/collection/d0;->e(I)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    add-int/2addr v3, v1

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    if-eqz v4, :cond_7

    .line 100
    .line 101
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    sub-int/2addr p1, v1

    .line 112
    :goto_1
    if-ge v0, p1, :cond_6

    .line 113
    .line 114
    add-int/lit8 v2, v0, 0x1

    .line 115
    .line 116
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    move v7, v2

    .line 121
    :goto_2
    if-ge v7, v3, :cond_5

    .line 122
    .line 123
    invoke-virtual {v6, v0}, Landroidx/collection/m;->a(I)I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    invoke-virtual {v6, v7}, Landroidx/collection/m;->a(I)I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-lt v8, v9, :cond_3

    .line 132
    .line 133
    if-ne v9, v8, :cond_4

    .line 134
    .line 135
    invoke-virtual {v5, v0}, Landroidx/collection/m;->a(I)I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    invoke-virtual {v5, v7}, Landroidx/collection/m;->a(I)I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-ge v8, v9, :cond_4

    .line 144
    .line 145
    :cond_3
    invoke-static {v4, v0, v7}, Landroidx/compose/runtime/p;->e(Ljava/util/List;II)V

    .line 146
    .line 147
    .line 148
    invoke-static {v5, v0, v7}, Landroidx/compose/runtime/p;->d(Landroidx/collection/d0;II)V

    .line 149
    .line 150
    .line 151
    invoke-static {v6, v0, v7}, Landroidx/compose/runtime/p;->d(Landroidx/collection/d0;II)V

    .line 152
    .line 153
    .line 154
    :cond_4
    add-int/2addr v7, v1

    .line 155
    goto :goto_2

    .line 156
    :cond_5
    move v0, v2

    .line 157
    goto :goto_1

    .line 158
    :cond_6
    iget-object p1, p0, Landroidx/compose/runtime/o$a;->c:Ljava/util/List;

    .line 159
    .line 160
    check-cast v4, Ljava/util/Collection;

    .line 161
    .line 162
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    .line 164
    .line 165
    :cond_7
    return-void
.end method

.method private final j(Ljava/lang/Object;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/compose/runtime/o$a;->i(I)V

    .line 2
    .line 3
    .line 4
    if-ltz p4, :cond_0

    .line 5
    .line 6
    if-ge p4, p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/compose/runtime/o$a;->f:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/compose/runtime/o$a;->g:Landroidx/collection/d0;

    .line 14
    .line 15
    invoke-virtual {p1, p3}, Landroidx/collection/d0;->e(I)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/compose/runtime/o$a;->h:Landroidx/collection/d0;

    .line 19
    .line 20
    invoke-virtual {p1, p4}, Landroidx/collection/d0;->e(I)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p2, p0, Landroidx/compose/runtime/o$a;->c:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o$a;->d:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Landroidx/compose/runtime/h;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o$a;->e:Landroidx/collection/MutableScatterSet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/collection/w0;->a()Landroidx/collection/MutableScatterSet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/o$a;->e:Landroidx/collection/MutableScatterSet;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->w(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/o$a;->j(Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public c(Landroidx/compose/runtime/b2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o$a;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Landroidx/compose/runtime/h;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/o$a;->j(Ljava/lang/Object;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e(Landroidx/compose/runtime/b2;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/o$a;->j(Ljava/lang/Object;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o$a;->a:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "Compose:abandons"

    .line 12
    .line 13
    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/o$a;->a:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/compose/runtime/b2;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Landroidx/compose/runtime/b2;->onAbandoned()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :goto_1
    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_1
    :goto_2
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/high16 v1, -0x80000000

    .line 3
    .line 4
    invoke-direct {p0, v1}, Landroidx/compose/runtime/o$a;->i(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/o$a;->c:Ljava/util/List;

    .line 8
    .line 9
    check-cast v1, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_4

    .line 16
    .line 17
    const-string v1, "Compose:onForgotten"

    .line 18
    .line 19
    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/o$a;->e:Landroidx/collection/MutableScatterSet;

    .line 26
    .line 27
    iget-object v3, p0, Landroidx/compose/runtime/o$a;->c:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    add-int/lit8 v3, v3, -0x1

    .line 34
    .line 35
    :goto_0
    if-ge v0, v3, :cond_3

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/compose/runtime/o$a;->c:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    instance-of v5, v4, Landroidx/compose/runtime/b2;

    .line 44
    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    iget-object v5, p0, Landroidx/compose/runtime/o$a;->a:Ljava/util/Set;

    .line 48
    .line 49
    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-object v5, v4

    .line 53
    check-cast v5, Landroidx/compose/runtime/b2;

    .line 54
    .line 55
    invoke-interface {v5}, Landroidx/compose/runtime/b2;->onForgotten()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_3

    .line 61
    :cond_0
    :goto_1
    instance-of v5, v4, Landroidx/compose/runtime/h;

    .line 62
    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    check-cast v4, Landroidx/compose/runtime/h;

    .line 74
    .line 75
    invoke-interface {v4}, Landroidx/compose/runtime/h;->onRelease()V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    check-cast v4, Landroidx/compose/runtime/h;

    .line 80
    .line 81
    invoke-interface {v4}, Landroidx/compose/runtime/h;->onDeactivate()V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_2
    add-int/2addr v3, v0

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    sget-object v0, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :goto_3
    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_4
    :goto_4
    iget-object v0, p0, Landroidx/compose/runtime/o$a;->b:Ljava/util/List;

    .line 101
    .line 102
    check-cast v0, Ljava/util/Collection;

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_6

    .line 109
    .line 110
    const-string v0, "Compose:onRemembered"

    .line 111
    .line 112
    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :try_start_1
    iget-object v1, p0, Landroidx/compose/runtime/o$a;->b:Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    const/4 v3, 0x0

    .line 125
    :goto_5
    if-ge v3, v2, :cond_5

    .line 126
    .line 127
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Landroidx/compose/runtime/b2;

    .line 132
    .line 133
    iget-object v5, p0, Landroidx/compose/runtime/o$a;->a:Ljava/util/Set;

    .line 134
    .line 135
    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    invoke-interface {v4}, Landroidx/compose/runtime/b2;->onRemembered()V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :catchall_1
    move-exception v1

    .line 145
    goto :goto_6

    .line 146
    :cond_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    .line 148
    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 149
    .line 150
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_7

    .line 154
    :goto_6
    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 155
    .line 156
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    throw v1

    .line 160
    :cond_6
    :goto_7
    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/o$a;->d:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "Compose:sideeffects"

    .line 12
    .line 13
    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/e3;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/o$a;->d:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_0
    if-ge v3, v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 33
    .line 34
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/o$a;->d:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    sget-object v1, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :goto_1
    sget-object v2, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/e3;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :cond_1
    :goto_2
    return-void
.end method
