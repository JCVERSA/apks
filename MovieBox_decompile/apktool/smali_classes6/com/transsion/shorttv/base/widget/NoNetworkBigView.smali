.class public final Lcom/transsion/shorttv/base/widget/NoNetworkBigView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000cB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\n\u0010\rB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001b\u0010\u001a\u001a\u00020\u00102\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001b\u0010\u001d\u001a\u00020\u00102\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0018\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ\r\u0010\u001e\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/shorttv/base/widget/NoNetworkBigView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "",
        "isShowTitleLayout",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V",
        "(Landroid/content/Context;Z)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "marin",
        "",
        "setTopMargin",
        "(I)V",
        "visible",
        "",
        "title",
        "showTitle",
        "(ZLjava/lang/String;)V",
        "Lkotlin/Function0;",
        "retryListener",
        "retry",
        "(Lkotlin/jvm/functions/Function0;)V",
        "setting",
        "goToSetting",
        "onBackClick",
        "()V",
        "Lqr/r0;",
        "a",
        "Lqr/r0;",
        "binding",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lqr/r0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p0}, Lqr/r0;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lqr/r0;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;->a:Lqr/r0;

    .line 4
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    sget p2, Lcom/transsion/shorttv/R$color;->short_tv_bg_01:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    iget-object p2, p0, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;->a:Lqr/r0;

    if-eqz p2, :cond_1

    .line 7
    const-string p3, "tvTitle"

    const-string v0, "ivBack"

    if-eqz p4, :cond_0

    .line 8
    iget-object p4, p2, Lqr/r0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Lcr/b;->e(Landroid/view/View;)V

    .line 9
    iget-object p4, p2, Lqr/r0;->g:Lcom/transsion/shorttv/base/widget/TnTextView;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Lcr/b;->e(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p4, p2, Lqr/r0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Lcr/b;->b(Landroid/view/View;)V

    .line 11
    iget-object p4, p2, Lqr/r0;->g:Lcom/transsion/shorttv/base/widget/TnTextView;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Lcr/b;->b(Landroid/view/View;)V

    .line 12
    :goto_0
    iget-object p2, p2, Lqr/r0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p3, Lcom/transsion/shorttv/base/widget/i;

    invoke-direct {p3, p1}, Lcom/transsion/shorttv/base/widget/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method public static synthetic h(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;->l(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;->k(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;->m(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final k(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->v()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final l(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    instance-of p1, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final m(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic showTitle$default(Lcom/transsion/shorttv/base/widget/NoNetworkBigView;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;->showTitle(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final goToSetting(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "setting"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;->a:Lqr/r0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lqr/r0;->b:Lcom/transsion/shorttv/base/widget/TnTextView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/transsion/shorttv/base/widget/j;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Lcom/transsion/shorttv/base/widget/j;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onBackClick()V
    .locals 0

    .line 1
    return-void
.end method

.method public final retry(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "retryListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;->a:Lqr/r0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lqr/r0;->f:Lcom/transsion/shorttv/base/widget/TnTextView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/transsion/shorttv/base/widget/h;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Lcom/transsion/shorttv/base/widget/h;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final setTopMargin(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;->a:Lqr/r0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lqr/r0;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    instance-of v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 22
    .line 23
    :cond_1
    if-nez v1, :cond_2

    .line 24
    .line 25
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    const/4 v2, -0x1

    .line 29
    invoke-direct {v1, v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;->a:Lqr/r0;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget-object p1, p1, Lqr/r0;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    return-void
.end method

.method public final showTitle(ZLjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/NoNetworkBigView;->a:Lqr/r0;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v1, "tvTitle"

    .line 11
    .line 12
    const-string v2, "ivBack"

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, v0, Lqr/r0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 17
    .line 18
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcr/b;->e(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lqr/r0;->g:Lcom/transsion/shorttv/base/widget/TnTextView;

    .line 25
    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcr/b;->e(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, v0, Lqr/r0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 34
    .line 35
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcr/b;->b(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v0, Lqr/r0;->g:Lcom/transsion/shorttv/base/widget/TnTextView;

    .line 42
    .line 43
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcr/b;->b(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object p1, v0, Lqr/r0;->g:Lcom/transsion/shorttv/base/widget/TnTextView;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method
