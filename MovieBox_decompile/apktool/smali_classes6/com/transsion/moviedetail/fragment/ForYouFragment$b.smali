.class final Lcom/transsion/moviedetail/fragment/ForYouFragment$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetail/fragment/ForYouFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:Lkotlin/jvm/functions/Function2;

.field private final c:Landroid/util/SparseArray;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/List;

.field private h:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->b:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    new-instance p1, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->d:I

    .line 27
    .line 28
    iput p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->e:I

    .line 29
    .line 30
    const/4 p1, 0x3

    .line 31
    iput p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->f:I

    .line 32
    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "emptyList(...)"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->g:Ljava/util/List;

    .line 43
    .line 44
    const/high16 p1, 0x42200000    # 40.0f

    .line 45
    .line 46
    invoke-static {p1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->h:I

    .line 51
    .line 52
    return-void
.end method

.method private final b(I)V
    .locals 7

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "reportItemView line:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const-string v1, "Foryou"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v0 .. v5}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Long;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .line 48
    cmp-long v2, v0, v2

    .line 49
    .line 50
    if-lez v2, :cond_0

    .line 51
    .line 52
    iget v2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->f:I

    .line 53
    .line 54
    mul-int v3, v2, p1

    .line 55
    .line 56
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    mul-int/2addr v2, p1

    .line 59
    :goto_0
    if-ge v3, v2, :cond_0

    .line 60
    .line 61
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->b:Lkotlin/jvm/functions/Function2;

    .line 62
    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    sub-long/2addr v5, v0

    .line 72
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-interface {p1, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/util/k;->a(Landroid/util/SparseArray;)Lkotlin/collections/IntIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {p0, v1}, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->b(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->d:I

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->e:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->d(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d(II)V
    .locals 6

    .line 1
    if-ltz p1, :cond_5

    .line 2
    .line 3
    if-gez p2, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->d:I

    .line 8
    .line 9
    iput p2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->e:I

    .line 10
    .line 11
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "scrollWithLine startLine:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ", endLine:"

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    filled-new-array {p1}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v4, 0x4

    .line 43
    const/4 v5, 0x0

    .line 44
    const-string v1, "Foryou"

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-static/range {v0 .. v5}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-static {p2}, Landroidx/core/util/k;->a(Landroid/util/SparseArray;)Lkotlin/collections/IntIterator;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iget v1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->d:I

    .line 78
    .line 79
    iget v2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->e:I

    .line 80
    .line 81
    if-ge v0, v2, :cond_1

    .line 82
    .line 83
    if-gt v1, v0, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->b(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_3

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Ljava/lang/Number;

    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    .line 118
    .line 119
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    iget p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->d:I

    .line 124
    .line 125
    iget p2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->e:I

    .line 126
    .line 127
    :goto_2
    if-ge p1, p2, :cond_5

    .line 128
    .line 129
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Ljava/lang/Long;

    .line 136
    .line 137
    if-nez v0, :cond_4

    .line 138
    .line 139
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    .line 140
    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 142
    .line 143
    .line 144
    move-result-wide v1

    .line 145
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    :goto_3
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->a()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "emptyList(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->g:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method
