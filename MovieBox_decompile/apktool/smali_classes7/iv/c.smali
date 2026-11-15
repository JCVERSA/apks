.class public final Liv/c;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Landroid/widget/PopupWindow;

.field private b:Lcom/transsnet/downloader/adapter/u0$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Liv/c;ZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Liv/c;->d(Liv/c;ZLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Liv/c;ZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Liv/c;->e(Liv/c;ZLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c(Landroid/content/Context;Z)Landroid/view/View;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->popup_report_layout:I

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget v0, Lcom/transsion/usercenter/R$id;->menu_item1:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Liv/a;

    .line 19
    .line 20
    invoke-direct {v1, p0, p2}, Liv/a;-><init>(Liv/c;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    sget v0, Lcom/transsion/usercenter/R$id;->menu_item2:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    new-instance v1, Liv/b;

    .line 35
    .line 36
    invoke-direct {v1, p0, p2}, Liv/b;-><init>(Liv/c;Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    const/16 p2, 0x8

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    sget v1, Lcom/transsion/usercenter/R$string;->str_unblock:I

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    sget v1, Lcom/transsion/usercenter/R$string;->str_block:I

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-object p1
.end method

.method private static final d(Liv/c;ZLandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Liv/c;->b:Lcom/transsnet/downloader/adapter/u0$b;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {p2, v1, v1, v0, p1}, Lcom/transsnet/downloader/adapter/u0$b;->b(IIIZ)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Liv/c;->a:Landroid/widget/PopupWindow;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method private static final e(Liv/c;ZLandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Liv/c;->b:Lcom/transsnet/downloader/adapter/u0$b;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {p2, v1, v1, v0, p1}, Lcom/transsnet/downloader/adapter/u0$b;->b(IIIZ)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Liv/c;->a:Landroid/widget/PopupWindow;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method


# virtual methods
.method public final f(Lcom/transsnet/downloader/adapter/u0$b;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Liv/c;->b:Lcom/transsnet/downloader/adapter/u0$b;

    .line 7
    .line 8
    return-void
.end method

.method public final g(Landroid/view/View;Z)V
    .locals 4

    .line 1
    const-string v0, "anchorView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getContext(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Liv/c;->c(Landroid/content/Context;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance v0, Landroid/widget/PopupWindow;

    .line 20
    .line 21
    const/4 v1, -0x2

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v0, p2, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Liv/c;->a:Landroid/widget/PopupWindow;

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/transsnet/downloader/popup/q;->a:Lcom/transsnet/downloader/popup/q;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/transsnet/downloader/popup/q;->a(Landroid/view/View;Landroid/view/View;)[I

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 43
    .line 44
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v3, "getApp(...)"

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/high16 v3, 0x41800000    # 16.0f

    .line 54
    .line 55
    invoke-virtual {v0, v1, v3}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x0

    .line 60
    aget v3, p2, v1

    .line 61
    .line 62
    sub-int/2addr v3, v0

    .line 63
    aput v3, p2, v1

    .line 64
    .line 65
    aget v1, p2, v2

    .line 66
    .line 67
    sub-int/2addr v1, v0

    .line 68
    aput v1, p2, v2

    .line 69
    .line 70
    iget-object p2, p0, Liv/c;->a:Landroid/widget/PopupWindow;

    .line 71
    .line 72
    if-eqz p2, :cond_0

    .line 73
    .line 74
    const v0, 0x800033

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1, v0, v3, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method
