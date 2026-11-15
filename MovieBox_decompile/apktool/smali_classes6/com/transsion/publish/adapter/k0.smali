.class public final Lcom/transsion/publish/adapter/k0;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# instance fields
.field private final a:Lkotlin/jvm/functions/Function1;

.field private b:Ljava/util/List;

.field private c:Landroid/widget/FrameLayout$LayoutParams;

.field private d:Ljava/util/List;

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "selectItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/publish/adapter/k0;->a:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput p1, p0, Lcom/transsion/publish/adapter/k0;->e:I

    .line 27
    .line 28
    const/high16 p1, 0x3200000

    .line 29
    .line 30
    iput p1, p0, Lcom/transsion/publish/adapter/k0;->f:I

    .line 31
    .line 32
    const p1, 0x124f80

    .line 33
    .line 34
    .line 35
    iput p1, p0, Lcom/transsion/publish/adapter/k0;->g:I

    .line 36
    .line 37
    const/16 p1, 0xbb8

    .line 38
    .line 39
    iput p1, p0, Lcom/transsion/publish/adapter/k0;->h:I

    .line 40
    .line 41
    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/high16 v0, 0x40400000    # 3.0f

    .line 46
    .line 47
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    mul-int/lit8 v0, v0, 0x5

    .line 52
    .line 53
    sub-int/2addr p1, v0

    .line 54
    div-int/lit8 p1, p1, 0x4

    .line 55
    .line 56
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    .line 58
    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/transsion/publish/adapter/k0;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    .line 63
    return-void
.end method

.method public static synthetic g(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsion/publish/adapter/k0;->q(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/publish/api/VsMediaInfo;Lcom/transsion/publish/adapter/k0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/k0;->t(Lcom/transsion/publish/api/VsMediaInfo;Lcom/transsion/publish/adapter/k0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/k0;->r(Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsion/publish/adapter/k0;->s(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final k(Lcom/transsion/publish/adapter/m0;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Lcom/transsion/publish/adapter/k0;->n()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/m0;->g()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget p2, Lcom/transsion/publish/R$string;->add_video_max_tips:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "getString(...)"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 34
    .line 35
    iget p2, p0, Lcom/transsion/publish/adapter/k0;->e:I

    .line 36
    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    new-array v1, v0, [Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    aput-object p2, v1, v2

    .line 45
    .line 46
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "format(...)"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private final l(Lcom/transsion/publish/api/VsMediaInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    add-int/lit8 v3, v1, 0x1

    .line 21
    .line 22
    if-gez v1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 25
    .line 26
    .line 27
    :cond_0
    check-cast v2, Lcom/transsion/publish/api/VsMediaInfo;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_1
    move v1, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string p1, "-1"

    .line 51
    .line 52
    return-object p1
.end method

.method private final n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/transsion/publish/adapter/k0;->e:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final q(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 9
    .line 10
    const-string p1, "Exceeded video length, 20 mins Max"

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 21
    .line 22
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget p2, Lcom/transsion/publish/R$string;->add_media_max_size_tips:I

    .line 31
    .line 32
    const/16 p3, 0x32

    .line 33
    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    const/4 p4, 0x1

    .line 39
    new-array p4, p4, [Ljava/lang/Object;

    .line 40
    .line 41
    const/4 p5, 0x0

    .line 42
    aput-object p3, p4, p5

    .line 43
    .line 44
    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_1
    if-eqz p2, :cond_2

    .line 55
    .line 56
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 57
    .line 58
    const-string p1, "video requires at least 3s"

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_2
    new-instance p0, Lcom/transsion/publish/adapter/j0;

    .line 67
    .line 68
    invoke-direct {p0, p4, p5}, Lcom/transsion/publish/adapter/j0;-><init>(Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p3, p4, p0}, Lcom/transsion/publish/adapter/k0;->k(Lcom/transsion/publish/adapter/m0;Lkotlin/jvm/functions/Function0;)V

    .line 72
    .line 73
    .line 74
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0
.end method

.method private static final r(Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/publish/ui/VideoPreviewActivity;->f:Lcom/transsion/publish/ui/VideoPreviewActivity$a;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "getContext(...)"

    .line 10
    .line 11
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {v0, p0, p1, v1}, Lcom/transsion/publish/ui/VideoPreviewActivity$a;->a(Landroid/content/Context;Lcom/transsion/publish/api/VsMediaInfo;I)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final s(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 9
    .line 10
    const-string p1, "Exceeded video length, 20 mins Max"

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 21
    .line 22
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget p2, Lcom/transsion/publish/R$string;->add_media_max_size_tips:I

    .line 31
    .line 32
    const/16 p3, 0x32

    .line 33
    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    const/4 p4, 0x1

    .line 39
    new-array p4, p4, [Ljava/lang/Object;

    .line 40
    .line 41
    const/4 p5, 0x0

    .line 42
    aput-object p3, p4, p5

    .line 43
    .line 44
    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_1
    if-eqz p2, :cond_2

    .line 55
    .line 56
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 57
    .line 58
    const-string p1, "video requires at least 3s"

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_2
    new-instance p0, Lcom/transsion/publish/adapter/i0;

    .line 67
    .line 68
    invoke-direct {p0, p5, p3}, Lcom/transsion/publish/adapter/i0;-><init>(Lcom/transsion/publish/api/VsMediaInfo;Lcom/transsion/publish/adapter/k0;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p3, p4, p0}, Lcom/transsion/publish/adapter/k0;->k(Lcom/transsion/publish/adapter/m0;Lkotlin/jvm/functions/Function0;)V

    .line 72
    .line 73
    .line 74
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0
.end method

.method private static final t(Lcom/transsion/publish/api/VsMediaInfo;Lcom/transsion/publish/adapter/k0;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/transsion/publish/adapter/k0;->z(Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p1, p0}, Lcom/transsion/publish/adapter/k0;->y(Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private final v(Landroid/widget/TextView;J)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const-wide/16 v3, 0x0

    .line 5
    .line 6
    cmp-long v3, p2, v3

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-wide/16 v3, 0x7d1

    .line 12
    .line 13
    cmp-long v3, v3, p2

    .line 14
    .line 15
    const-string v4, "%02d:%02d"

    .line 16
    .line 17
    const-string v5, "format(...)"

    .line 18
    .line 19
    if-gtz v3, :cond_1

    .line 20
    .line 21
    const-wide/16 v6, 0xbb8

    .line 22
    .line 23
    cmp-long v3, p2, v6

    .line 24
    .line 25
    if-gez v3, :cond_1

    .line 26
    .line 27
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    new-array v3, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p2, v3, v1

    .line 40
    .line 41
    aput-object p3, v3, v0

    .line 42
    .line 43
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-array p3, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    const-wide/16 v6, 0xfa1

    .line 72
    .line 73
    cmp-long v3, v6, p2

    .line 74
    .line 75
    if-gtz v3, :cond_2

    .line 76
    .line 77
    const-wide/16 v6, 0x1388

    .line 78
    .line 79
    cmp-long v3, p2, v6

    .line 80
    .line 81
    if-gez v3, :cond_2

    .line 82
    .line 83
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const/4 p3, 0x4

    .line 90
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    new-array v3, v2, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object p2, v3, v1

    .line 97
    .line 98
    aput-object p3, v3, v0

    .line 99
    .line 100
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-array p3, v1, [Ljava/lang/Object;

    .line 112
    .line 113
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_2
    long-to-float p2, p2

    .line 129
    const/16 p3, 0x3e8

    .line 130
    .line 131
    int-to-float p3, p3

    .line 132
    div-float/2addr p2, p3

    .line 133
    invoke-static {p2}, Lkotlin/math/MathKt;->d(F)I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    div-int/lit8 p3, p2, 0x3c

    .line 138
    .line 139
    rem-int/lit8 p2, p2, 0x3c

    .line 140
    .line 141
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 142
    .line 143
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    new-array v3, v2, [Ljava/lang/Object;

    .line 152
    .line 153
    aput-object p3, v3, v1

    .line 154
    .line 155
    aput-object p2, v3, v0

    .line 156
    .line 157
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-array p3, v1, [Ljava/lang/Object;

    .line 169
    .line 170
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method private final w(Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/transsion/publish/api/VsMediaInfo;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    move-object v1, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method private final y(Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/k0;->w(Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->a:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/VsMediaInfo;->setEnableSelect(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ltz p1, :cond_0

    .line 35
    .line 36
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/adapter/k0;->n()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method private final z(Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/adapter/k0;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/k0;->w(Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/publish/adapter/k0;->a:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v1}, Lcom/transsion/publish/api/VsMediaInfo;->setEnableSelect(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-ltz p1, :cond_0

    .line 34
    .line 35
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public final addData(Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    .line 13
    .line 14
    move-object v2, p1

    .line 15
    check-cast v2, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(Lcom/transsion/publish/adapter/m0;I)V
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const-string v0, "holder"

    .line 6
    .line 7
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v7, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    .line 11
    .line 12
    move/from16 v1, p2

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v9, v0

    .line 19
    check-cast v9, Lcom/transsion/publish/api/VsMediaInfo;

    .line 20
    .line 21
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 22
    .line 23
    iget-object v1, v7, Lcom/transsion/publish/adapter/k0;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->i()Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoDuration()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-direct {v7, v0, v1, v2}, Lcom/transsion/publish/adapter/k0;->v(Landroid/widget/TextView;J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getImagePath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-string v1, "getContext(...)"

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    new-instance v2, Ljava/io/File;

    .line 58
    .line 59
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v2, 0x0

    .line 64
    :goto_0
    if-eqz v2, :cond_2

    .line 65
    .line 66
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->f()Landroid/widget/ImageView;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget v1, Lcom/transsion/baseui/R$mipmap;->home_ic_default_res:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lni/f$b;->i(I)Lni/f$b;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->f()Landroid/widget/ImageView;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->f()Landroid/widget/ImageView;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getImagePath()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sget v1, Lcom/transsion/baseui/R$mipmap;->home_ic_default_res:I

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lni/f$b;->i(I)Lni/f$b;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->f()Landroid/widget/ImageView;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    :goto_1
    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoSize()J

    .line 148
    .line 149
    .line 150
    move-result-wide v0

    .line 151
    iget v2, v7, Lcom/transsion/publish/adapter/k0;->f:I

    .line 152
    .line 153
    int-to-long v2, v2

    .line 154
    cmp-long v0, v0, v2

    .line 155
    .line 156
    const/4 v1, 0x1

    .line 157
    const/4 v2, 0x0

    .line 158
    if-ltz v0, :cond_3

    .line 159
    .line 160
    move v10, v1

    .line 161
    goto :goto_2

    .line 162
    :cond_3
    move v10, v2

    .line 163
    :goto_2
    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoDuration()J

    .line 164
    .line 165
    .line 166
    move-result-wide v3

    .line 167
    iget v0, v7, Lcom/transsion/publish/adapter/k0;->g:I

    .line 168
    .line 169
    int-to-long v5, v0

    .line 170
    cmp-long v0, v3, v5

    .line 171
    .line 172
    if-ltz v0, :cond_4

    .line 173
    .line 174
    move v11, v1

    .line 175
    goto :goto_3

    .line 176
    :cond_4
    move v11, v2

    .line 177
    :goto_3
    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoDuration()J

    .line 178
    .line 179
    .line 180
    move-result-wide v3

    .line 181
    iget v0, v7, Lcom/transsion/publish/adapter/k0;->h:I

    .line 182
    .line 183
    int-to-long v5, v0

    .line 184
    cmp-long v0, v3, v5

    .line 185
    .line 186
    if-gez v0, :cond_5

    .line 187
    .line 188
    move v12, v1

    .line 189
    goto :goto_4

    .line 190
    :cond_5
    move v12, v2

    .line 191
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/transsion/publish/adapter/k0;->n()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    const-string v1, ""

    .line 196
    .line 197
    const/16 v3, 0x8

    .line 198
    .line 199
    if-eqz v0, :cond_7

    .line 200
    .line 201
    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_6

    .line 206
    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->g()Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-direct {v7, v9}, Lcom/transsion/publish/adapter/k0;->l(Lcom/transsion/publish/api/VsMediaInfo;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    sget v1, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->g()Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    sget v1, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 256
    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->g()Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_8

    .line 271
    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-direct {v7, v9}, Lcom/transsion/publish/adapter/k0;->l(Lcom/transsion/publish/api/VsMediaInfo;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    sget v1, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 290
    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    sget v1, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 307
    .line 308
    .line 309
    :goto_5
    if-nez v10, :cond_9

    .line 310
    .line 311
    if-nez v11, :cond_9

    .line 312
    .line 313
    if-eqz v12, :cond_a

    .line 314
    .line 315
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->g()Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .line 321
    .line 322
    :cond_a
    iget-object v13, v8, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 323
    .line 324
    const-string v0, "itemView"

    .line 325
    .line 326
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    new-instance v16, Lcom/transsion/publish/adapter/g0;

    .line 330
    .line 331
    move-object/from16 v0, v16

    .line 332
    .line 333
    move v1, v11

    .line 334
    move v2, v10

    .line 335
    move v3, v12

    .line 336
    move-object/from16 v4, p0

    .line 337
    .line 338
    move-object/from16 v5, p1

    .line 339
    .line 340
    move-object v6, v9

    .line 341
    invoke-direct/range {v0 .. v6}, Lcom/transsion/publish/adapter/g0;-><init>(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 342
    .line 343
    .line 344
    const/16 v17, 0x1

    .line 345
    .line 346
    const/16 v18, 0x0

    .line 347
    .line 348
    const-wide/16 v14, 0x0

    .line 349
    .line 350
    invoke-static/range {v13 .. v18}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->h()Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v13

    .line 357
    new-instance v14, Lcom/transsion/publish/adapter/h0;

    .line 358
    .line 359
    move-object v0, v14

    .line 360
    invoke-direct/range {v0 .. v6}, Lcom/transsion/publish/adapter/h0;-><init>(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 361
    .line 362
    .line 363
    const/4 v4, 0x1

    .line 364
    const/4 v5, 0x0

    .line 365
    const-wide/16 v1, 0x0

    .line 366
    .line 367
    move-object v0, v13

    .line 368
    move-object v3, v14

    .line 369
    invoke-static/range {v0 .. v5}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/publish/adapter/m0;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/k0;->o(Lcom/transsion/publish/adapter/m0;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/transsion/publish/adapter/m0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/publish/adapter/k0;->p(Lcom/transsion/publish/adapter/m0;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/k0;->u(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/m0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p(Lcom/transsion/publish/adapter/m0;ILjava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "payloads"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p3, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/transsion/publish/api/VsMediaInfo;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-direct {p0, p2}, Lcom/transsion/publish/adapter/k0;->l(Lcom/transsion/publish/api/VsMediaInfo;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget p2, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const-string p3, ""

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget p2, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;ILjava/util/List;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method public u(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/m0;
    .locals 1

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget p2, Lcom/transsion/publish/R$layout;->upload_select_video_item:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lcom/transsion/publish/adapter/m0;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/m0;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final x(Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 5

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v1, p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/transsion/publish/api/VsMediaInfo;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v2, v1}, Lcom/transsion/publish/api/VsMediaInfo;->setEnableSelect(Z)V

    .line 46
    .line 47
    .line 48
    move-object v1, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-direct {p0, v1}, Lcom/transsion/publish/adapter/k0;->y(Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-direct {p0, v1}, Lcom/transsion/publish/adapter/k0;->z(Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    iget-object p1, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
