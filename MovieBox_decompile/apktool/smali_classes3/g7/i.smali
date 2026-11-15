.class public final Lg7/i;
.super Landroid/widget/PopupWindow;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg7/i$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:Lg7/i$a;

.field private f:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-boolean p3, p0, Lg7/i;->a:Z

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->layout_hs_popupwindow_confirm:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const-string v0, "inflate(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p3, p0, Lg7/i;->b:Landroid/view/View;

    const-string v0, "popupView"

    if-nez p3, :cond_0

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    move-object p3, v1

    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 7
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {p3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-direct {p0}, Lg7/i;->g()V

    .line 9
    new-instance p3, Lg7/f;

    invoke-direct {p3, p0, p1}, Lg7/f;-><init>(Lg7/i;Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 10
    iget-object p1, p0, Lg7/i;->b:Landroid/view/View;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    sget p3, Lcom/cloud/hisavana/sdk/R$id;->iv_pop_logo:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    iput-object p1, p0, Lg7/i;->f:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 11
    iget-object p1, p0, Lg7/i;->b:Landroid/view/View;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    sget p3, Lcom/cloud/hisavana/sdk/R$id;->tv_pop_name:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg7/i;->g:Landroid/widget/TextView;

    .line 12
    iget-object p1, p0, Lg7/i;->b:Landroid/view/View;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    sget p3, Lcom/cloud/hisavana/sdk/R$id;->tv_pop_size:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg7/i;->h:Landroid/widget/TextView;

    .line 13
    iget-object p1, p0, Lg7/i;->b:Landroid/view/View;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    sget p3, Lcom/cloud/hisavana/sdk/R$id;->iv_pop_close:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lg7/i;->i:Landroid/widget/ImageView;

    .line 14
    iget-object p1, p0, Lg7/i;->b:Landroid/view/View;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, p1

    :goto_0
    sget p1, Lcom/cloud/hisavana/sdk/R$id;->btn_pop_confirm:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 15
    new-instance p3, Lg7/g;

    invoke-direct {p3, p2, p0}, Lg7/g;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lg7/i;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_6
    iget-object p1, p0, Lg7/i;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    new-instance p2, Lg7/h;

    invoke-direct {p2, p0}, Lg7/h;-><init>(Lg7/i;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lg7/i;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    return-void
.end method

.method public static synthetic a(Lg7/i;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lg7/i;->d(Lg7/i;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lg7/i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lg7/i;->f(Lg7/i;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lg7/i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lg7/i;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lg7/i;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lg7/i;Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$context"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lg7/i;->e:Lg7/i$a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lg7/i$a;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v1, 0x1e

    .line 21
    .line 22
    if-le v0, v1, :cond_2

    .line 23
    .line 24
    iget-boolean v0, p0, Lg7/i;->a:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    instance-of v0, p1, Landroid/app/Activity;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    check-cast p1, Landroid/app/Activity;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-eqz p1, :cond_2

    .line 37
    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0}, Lg7/i;->i(Landroid/app/Activity;F)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method private static final e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lg7/i;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p1, Lg7/i;->e:Lg7/i$a;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0, p2}, Lg7/i$a;->onClick(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private static final f(Lg7/i;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catchall_0
    return-void
.end method

.method private final g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lg7/i;->c:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lg7/i;->d:I

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final h(Lg7/i$a;)V
    .locals 1

    .line 1
    const-string v0, "popwindowEventListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lg7/i;->e:Lg7/i$a;

    .line 7
    .line 8
    return-void
.end method

.method public final i(Landroid/app/Activity;F)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :catchall_0
    return-void
.end method

.method public final j(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;II)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "anchor"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->a0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Lg7/i;->c:I

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Lg7/i;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    .line 27
    :cond_0
    :try_start_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v0, 0x1e

    .line 30
    .line 31
    if-le p2, v0, :cond_2

    .line 32
    .line 33
    iget-boolean p2, p0, Lg7/i;->a:Z

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    instance-of p2, p1, Landroid/app/Activity;

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    check-cast p1, Landroid/app/Activity;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    :goto_0
    if-eqz p1, :cond_2

    .line 46
    .line 47
    const/high16 p2, 0x3f000000    # 0.5f

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lg7/i;->i(Landroid/app/Activity;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    :catchall_0
    :cond_2
    :try_start_2
    iget p1, p0, Lg7/i;->c:I

    .line 53
    .line 54
    div-int/lit8 p1, p1, 0x2

    .line 55
    .line 56
    sub-int/2addr p4, p1

    .line 57
    iget p1, p0, Lg7/i;->d:I

    .line 58
    .line 59
    sub-int/2addr p5, p1

    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p3, p1, p4, p5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    .line 63
    .line 64
    :catchall_1
    :cond_3
    return-void
.end method

.method public final k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x4

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lg7/i;->f:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 16
    .line 17
    invoke-static {v1, p1, v0, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v1, v0

    .line 35
    :goto_0
    if-nez v1, :cond_2

    .line 36
    .line 37
    const-string v1, ""

    .line 38
    .line 39
    :cond_2
    iget-object v2, p0, Lg7/i;->f:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-static {v1, p1, v3, v0, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    if-eqz p1, :cond_7

    .line 46
    .line 47
    :try_start_0
    iget-object v1, p0, Lg7/i;->g:Landroid/widget/TextView;

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    move-object v2, v0

    .line 64
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :goto_3
    iget-object v1, p0, Lg7/i;->h:Landroid/widget/TextView;

    .line 68
    .line 69
    if-nez v1, :cond_5

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_5
    sget-object v2, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getSourceSize()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :cond_6
    invoke-virtual {v2, v0}, Lcom/cloud/hisavana/sdk/common/util/r;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    :catchall_0
    :cond_7
    :goto_4
    return-void
.end method
