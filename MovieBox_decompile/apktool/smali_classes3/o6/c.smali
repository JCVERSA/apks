.class public final Lo6/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field private final b:Lo6/d;

.field private final c:Landroidx/recyclerview/widget/j;

.field private d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/util/List;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lo6/d;)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

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
    iput-object p1, p0, Lo6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 15
    .line 16
    iput-object p2, p0, Lo6/c;->b:Lo6/d;

    .line 17
    .line 18
    new-instance v0, Lo6/e;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lo6/e;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lo6/c;->c:Landroidx/recyclerview/widget/j;

    .line 24
    .line 25
    new-instance p1, Lo6/c$a;

    .line 26
    .line 27
    invoke-direct {p1}, Lo6/c$a;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lo6/c;->e:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    invoke-virtual {p2}, Lo6/d;->c()Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object p1, p2

    .line 40
    :goto_0
    iput-object p1, p0, Lo6/c;->d:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lo6/c;->f:Ljava/util/List;

    .line 48
    .line 49
    return-void
.end method

.method public static synthetic a(Lo6/c;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lo6/c;->g(Lo6/c;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lo6/c;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lo6/c;->h(Lo6/c;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lo6/c;)Lo6/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lo6/c;->b:Lo6/d;

    .line 2
    .line 3
    return-object p0
.end method

.method private final d(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lo6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Q0(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lo6/c;->c:Landroidx/recyclerview/widget/j;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/DiffUtil$d;->b(Landroidx/recyclerview/widget/j;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0, p3}, Lo6/c;->e(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final e(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo6/c;->f:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lo6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    throw p1
.end method

.method private static final g(Lo6/c;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 7

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$oldList"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lo6/c$b;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p0}, Lo6/c$b;-><init>(Ljava/util/List;Ljava/util/List;Lo6/c;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->b(Landroidx/recyclerview/widget/DiffUtil$a;)Landroidx/recyclerview/widget/DiffUtil$d;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const-string p1, "@JvmOverloads\n    fun su\u2026        }\n        }\n    }"

    .line 21
    .line 22
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lo6/c;->d:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    new-instance v0, Lo6/b;

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    move-object v2, p0

    .line 31
    move v3, p3

    .line 32
    move-object v4, p2

    .line 33
    move-object v6, p4

    .line 34
    invoke-direct/range {v1 .. v6}, Lo6/b;-><init>(Lo6/c;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static final h(Lo6/c;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$result"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lo6/c;->g:I

    .line 12
    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p2, p3, p4}, Lo6/c;->d(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public final f(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    iget v0, p0, Lo6/c;->g:I

    .line 2
    .line 3
    add-int/lit8 v5, v0, 0x1

    .line 4
    .line 5
    iput v5, p0, Lo6/c;->g:I

    .line 6
    .line 7
    iget-object v0, p0, Lo6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lo6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v0, 0x0

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lo6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object v1, p0, Lo6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Q0(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lo6/c;->c:Landroidx/recyclerview/widget/j;

    .line 51
    .line 52
    invoke-interface {v1, v0, p1}, Landroidx/recyclerview/widget/j;->onRemoved(II)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v3, p2}, Lo6/c;->e(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    iget-object v1, p0, Lo6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    iget-object v1, p0, Lo6/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Q0(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lo6/c;->c:Landroidx/recyclerview/widget/j;

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-interface {v1, v0, p1}, Landroidx/recyclerview/widget/j;->onInserted(II)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v3, p2}, Lo6/c;->e(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    iget-object v0, p0, Lo6/c;->b:Lo6/d;

    .line 90
    .line 91
    invoke-virtual {v0}, Lo6/d;->a()Ljava/util/concurrent/Executor;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v7, Lo6/a;

    .line 96
    .line 97
    move-object v1, v7

    .line 98
    move-object v2, p0

    .line 99
    move-object v4, p1

    .line 100
    move-object v6, p2

    .line 101
    invoke-direct/range {v1 .. v6}, Lo6/a;-><init>(Lo6/c;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
