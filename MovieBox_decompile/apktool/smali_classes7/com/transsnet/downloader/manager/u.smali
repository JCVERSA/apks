.class public final Lcom/transsnet/downloader/manager/u;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/manager/u$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsnet/downloader/manager/u$a;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/manager/u$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/manager/u$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/manager/u;->c:Lcom/transsnet/downloader/manager/u$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsnet/downloader/manager/u;->a:Z

    .line 6
    .line 7
    sget-object v0, Lci/b;->a:Lci/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lci/b;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/transsnet/downloader/manager/u;->a:Z

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/manager/u;->g(Landroid/view/View;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/manager/u;->f(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Lcom/transsnet/downloader/R$layout;->layout_downloading_play_guide:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "inflate(...)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method private final e(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 5

    .line 1
    const/high16 v0, 0x42d40000    # 106.0f

    .line 2
    .line 3
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x41800000    # 16.0f

    .line 8
    .line 9
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    .line 18
    .line 19
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p2, Landroid/app/Activity;

    .line 23
    .line 24
    invoke-direct {p0, p2}, Lcom/transsnet/downloader/manager/u;->c(Landroid/content/Context;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    .line 30
    const/high16 v3, 0x43660000    # 230.0f

    .line 31
    .line 32
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, -0x2

    .line 37
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 38
    .line 39
    .line 40
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/transsnet/downloader/manager/s;

    .line 49
    .line 50
    invoke-direct {p1, p2}, Lcom/transsnet/downloader/manager/s;-><init>(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v0, 0xbb8

    .line 54
    .line 55
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/transsnet/downloader/manager/t;

    .line 59
    .line 60
    invoke-direct {p1, p2}, Lcom/transsnet/downloader/manager/t;-><init>(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/transsnet/downloader/manager/u;->a:Z

    .line 68
    .line 69
    sget-object p1, Lci/b;->a:Lci/b;

    .line 70
    .line 71
    invoke-virtual {p1}, Lci/b;->d()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private static final f(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private static final g(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Landroid/widget/FrameLayout;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;J)V
    .locals 0

    .line 1
    const-string p3, "fragmentRootView"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "holder"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p3, p0, Lcom/transsnet/downloader/manager/u;->a:Z

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean p3, p0, Lcom/transsnet/downloader/manager/u;->b:Z

    .line 17
    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    sget p3, Lcom/transsnet/downloader/R$id;->iv_cover:I

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-static {p2}, Luf/c;->i(Landroid/view/View;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-nez p3, :cond_3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    const/4 p3, 0x1

    .line 38
    iput-boolean p3, p0, Lcom/transsnet/downloader/manager/u;->b:Z

    .line 39
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/manager/u;->e(Landroid/widget/FrameLayout;Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
