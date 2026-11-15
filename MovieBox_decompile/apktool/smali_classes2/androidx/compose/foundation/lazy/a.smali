.class final Landroidx/compose/foundation/lazy/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/foundation/lazy/r;


# instance fields
.field private final a:I

.field private b:I

.field private c:Landroidx/compose/foundation/lazy/layout/x$b;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/foundation/lazy/a;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/foundation/lazy/a;->a:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroidx/compose/foundation/lazy/a;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/foundation/lazy/layout/d0;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    .line 6
    add-int v2, p2, v1

    .line 7
    .line 8
    invoke-interface {p1, v2}, Landroidx/compose/foundation/lazy/layout/d0;->a(I)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public b(Landroidx/compose/foundation/lazy/p;FLandroidx/compose/foundation/lazy/l;)V
    .locals 3

    .line 1
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_5

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    cmpg-float v0, p2, v0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/compose/foundation/lazy/j;

    .line 33
    .line 34
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v2, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroidx/compose/foundation/lazy/j;

    .line 49
    .line 50
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    sub-int/2addr v2, v1

    .line 55
    :goto_1
    if-ltz v2, :cond_5

    .line 56
    .line 57
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->d()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ge v2, v1, :cond_5

    .line 62
    .line 63
    iget v1, p0, Landroidx/compose/foundation/lazy/a;->b:I

    .line 64
    .line 65
    if-eq v2, v1, :cond_3

    .line 66
    .line 67
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/a;->d:Z

    .line 68
    .line 69
    if-eq v1, v0, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/compose/foundation/lazy/a;->c:Landroidx/compose/foundation/lazy/layout/x$b;

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/x$b;->cancel()V

    .line 76
    .line 77
    .line 78
    :cond_2
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/a;->d:Z

    .line 79
    .line 80
    iput v2, p0, Landroidx/compose/foundation/lazy/a;->b:I

    .line 81
    .line 82
    invoke-interface {p1, v2}, Landroidx/compose/foundation/lazy/p;->a(I)Landroidx/compose/foundation/lazy/layout/x$b;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Landroidx/compose/foundation/lazy/a;->c:Landroidx/compose/foundation/lazy/layout/x$b;

    .line 87
    .line 88
    :cond_3
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroidx/compose/foundation/lazy/j;

    .line 99
    .line 100
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->f()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/j;->g()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/j;->getSize()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    add-int/2addr v1, p1

    .line 113
    add-int/2addr v1, v0

    .line 114
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->c()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    sub-int/2addr v1, p1

    .line 119
    int-to-float p1, v1

    .line 120
    neg-float p2, p2

    .line 121
    cmpg-float p1, p1, p2

    .line 122
    .line 123
    if-gez p1, :cond_5

    .line 124
    .line 125
    iget-object p1, p0, Landroidx/compose/foundation/lazy/a;->c:Landroidx/compose/foundation/lazy/layout/x$b;

    .line 126
    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/x$b;->a()V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Landroidx/compose/foundation/lazy/j;

    .line 142
    .line 143
    invoke-interface {p3}, Landroidx/compose/foundation/lazy/l;->g()I

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/j;->g()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    sub-int/2addr p3, p1

    .line 152
    int-to-float p1, p3

    .line 153
    cmpg-float p1, p1, p2

    .line 154
    .line 155
    if-gez p1, :cond_5

    .line 156
    .line 157
    iget-object p1, p0, Landroidx/compose/foundation/lazy/a;->c:Landroidx/compose/foundation/lazy/layout/x$b;

    .line 158
    .line 159
    if-eqz p1, :cond_5

    .line 160
    .line 161
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/x$b;->a()V

    .line 162
    .line 163
    .line 164
    :cond_5
    :goto_2
    return-void
.end method

.method public synthetic c()Landroidx/compose/foundation/lazy/layout/i0;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/lazy/q;->a(Landroidx/compose/foundation/lazy/r;)Landroidx/compose/foundation/lazy/layout/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Landroidx/compose/foundation/lazy/p;Landroidx/compose/foundation/lazy/l;)V
    .locals 1

    .line 1
    iget p1, p0, Landroidx/compose/foundation/lazy/a;->b:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/util/Collection;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/a;->d:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/compose/foundation/lazy/j;

    .line 31
    .line 32
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/l;->h()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroidx/compose/foundation/lazy/j;

    .line 48
    .line 49
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/j;->getIndex()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    add-int/lit8 p1, p1, -0x1

    .line 54
    .line 55
    :goto_0
    iget p2, p0, Landroidx/compose/foundation/lazy/a;->b:I

    .line 56
    .line 57
    if-eq p2, p1, :cond_2

    .line 58
    .line 59
    iput v0, p0, Landroidx/compose/foundation/lazy/a;->b:I

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/compose/foundation/lazy/a;->c:Landroidx/compose/foundation/lazy/layout/x$b;

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/x$b;->cancel()V

    .line 66
    .line 67
    .line 68
    :cond_1
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Landroidx/compose/foundation/lazy/a;->c:Landroidx/compose/foundation/lazy/layout/x$b;

    .line 70
    .line 71
    :cond_2
    return-void
.end method
