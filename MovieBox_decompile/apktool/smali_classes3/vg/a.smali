.class public final Lvg/a;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvg/a$a;,
        Lvg/a$b;
    }
.end annotation


# static fields
.field public static final f:Lvg/a$a;


# instance fields
.field private a:Lvg/a$b;

.field private b:I

.field private c:I

.field private d:Landroidx/recyclerview/widget/RecyclerView;

.field private final e:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lvg/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lvg/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lvg/a;->f:Lvg/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lvg/a;->b:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lvg/a;->c:I

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lvg/a;->e:Landroid/util/SparseArray;

    .line 17
    .line 18
    return-void
.end method

.method private final e([I[I)[I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    aget v0, p2, v0

    .line 5
    .line 6
    array-length v2, p1

    .line 7
    const/4 v3, 0x1

    .line 8
    move v4, v3

    .line 9
    :goto_0
    if-ge v4, v2, :cond_1

    .line 10
    .line 11
    aget v5, p1, v4

    .line 12
    .line 13
    if-le v1, v5, :cond_0

    .line 14
    .line 15
    move v1, v5

    .line 16
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    array-length p1, p2

    .line 20
    :goto_1
    if-ge v3, p1, :cond_3

    .line 21
    .line 22
    aget v2, p2, v3

    .line 23
    .line 24
    if-ge v0, v2, :cond_2

    .line 25
    .line 26
    move v0, v2

    .line 27
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    filled-new-array {v1, v0}, [I

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method private final f(Landroidx/recyclerview/widget/GridLayoutManager;)[I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    filled-new-array {v0, p1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private final g(Landroidx/recyclerview/widget/LinearLayoutManager;)[I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    filled-new-array {v0, p1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private final h(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)[I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D([I)[I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G([I)[I

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0, v1}, Lvg/a;->e([I[I)[I

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private final i()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lvg/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private final j()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lvg/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    if-eqz v1, :cond_a

    .line 5
    .line 6
    if-eqz v1, :cond_a

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_a

    .line 13
    .line 14
    iget-object v1, p0, Lvg/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lvg/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    new-instance v2, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto/16 :goto_7

    .line 42
    .line 43
    :cond_1
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    new-array v1, v1, [I

    .line 47
    .line 48
    iget-object v2, p0, Lvg/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_5

    .line 60
    :cond_2
    move-object v2, v3

    .line 61
    :goto_0
    instance-of v4, v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 62
    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    move-object v1, v2

    .line 66
    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 67
    .line 68
    invoke-direct {p0, v1}, Lvg/a;->f(Landroidx/recyclerview/widget/GridLayoutManager;)[I

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    instance-of v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 74
    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    move-object v1, v2

    .line 78
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 79
    .line 80
    invoke-direct {p0, v1}, Lvg/a;->g(Landroidx/recyclerview/widget/LinearLayoutManager;)[I

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    instance-of v4, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 86
    .line 87
    if-eqz v4, :cond_5

    .line 88
    .line 89
    move-object v1, v2

    .line 90
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 91
    .line 92
    invoke-direct {p0, v1}, Lvg/a;->h(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)[I

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :cond_5
    :goto_1
    const/4 v4, 0x0

    .line 97
    aget v4, v1, v4

    .line 98
    .line 99
    aget v1, v1, v0

    .line 100
    .line 101
    if-gt v4, v1, :cond_8

    .line 102
    .line 103
    :goto_2
    iget-object v5, p0, Lvg/a;->a:Lvg/a$b;

    .line 104
    .line 105
    if-eqz v5, :cond_6

    .line 106
    .line 107
    invoke-interface {v5}, Lvg/a$b;->a()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-ne v4, v5, :cond_6

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_6
    if-eqz v2, :cond_7

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$m;->findViewByPosition(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    goto :goto_3

    .line 121
    :cond_7
    move-object v5, v3

    .line 122
    :goto_3
    invoke-direct {p0, v5, v4}, Lvg/a;->m(Landroid/view/View;I)V

    .line 123
    .line 124
    .line 125
    :goto_4
    if-eq v4, v1, :cond_8

    .line 126
    .line 127
    add-int/2addr v4, v0

    .line 128
    goto :goto_2

    .line 129
    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    goto :goto_6

    .line 136
    :goto_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 137
    .line 138
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-nez v0, :cond_9

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_9
    invoke-direct {p0}, Lvg/a;->i()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v3, "RecyclerViewExposeUtil --> handleCurrentVisibleItems() --> "

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :cond_a
    :goto_7
    return-void
.end method

.method private final m(Landroid/view/View;I)V
    .locals 8

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    int-to-double v2, v2

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-double v4, v0

    .line 47
    mul-double/2addr v2, v4

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-double v4, v0

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    int-to-double v6, p1

    .line 58
    mul-double/2addr v4, v6

    .line 59
    iget p1, p0, Lvg/a;->b:I

    .line 60
    .line 61
    int-to-double v6, p1

    .line 62
    mul-double/2addr v4, v6

    .line 63
    const/16 p1, 0x64

    .line 64
    .line 65
    int-to-double v6, p1

    .line 66
    div-double/2addr v4, v6

    .line 67
    cmpl-double p1, v2, v4

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    const/4 v2, 0x1

    .line 71
    if-lez p1, :cond_1

    .line 72
    .line 73
    move p1, v2

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move p1, v0

    .line 76
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v4, "isItemViewVisibleInLogic = "

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    iget-object p1, p0, Lvg/a;->e:Landroid/util/SparseArray;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    iget-object p1, p0, Lvg/a;->e:Landroid/util/SparseArray;

    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lvg/a;->a:Lvg/a$b;

    .line 116
    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    invoke-interface {p1, v2, p2}, Lvg/a$b;->onItemViewVisible(ZI)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    iget-object p1, p0, Lvg/a;->a:Lvg/a$b;

    .line 124
    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    invoke-interface {p1, v0, p2}, Lvg/a$b;->onItemViewVisible(ZI)V

    .line 128
    .line 129
    .line 130
    :cond_4
    iget p1, p0, Lvg/a;->c:I

    .line 131
    .line 132
    const/4 v0, 0x2

    .line 133
    if-ne p1, v0, :cond_5

    .line 134
    .line 135
    iget-object p1, p0, Lvg/a;->e:Landroid/util/SparseArray;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvg/a;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvg/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lvg/a;->a:Lvg/a$b;

    .line 13
    .line 14
    iput-object v0, p0, Lvg/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    return-void
.end method

.method public final k()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvg/a;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lvg/a;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView;Lvg/a$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lvg/a;->a:Lvg/a$b;

    .line 2
    .line 3
    iput-object p1, p0, Lvg/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lvg/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lvg/a;->j()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
