.class public abstract Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Lf4/a;",
        ">",
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\'\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H$\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0011H$\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u0008\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0005\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;",
        "Lf4/a;",
        "VB",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "<init>",
        "()V",
        "",
        "p0",
        "",
        "alpha",
        "r0",
        "(F)V",
        "",
        "color",
        "fraction",
        "k0",
        "(IF)I",
        "Landroid/view/View;",
        "n0",
        "()Landroid/view/View;",
        "o0",
        "m0",
        "()I",
        "l0",
        "initViewData",
        "RewardsCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/baseui/fragment/PageStatusFragment;->$stable:I

    .line 2
    .line 3
    sput v0, Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;->a:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;->q0(Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;Landroid/view/View;IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k0(IF)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    int-to-float p1, p1

    .line 18
    mul-float/2addr p1, p2

    .line 19
    float-to-int p1, p1

    .line 20
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method private final p0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;->o0()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/transsion/rewardscenter/ui/m;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/transsion/rewardscenter/ui/m;-><init>(Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private static final q0(Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;->n0()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p2, 0x1

    .line 13
    if-ge p1, p2, :cond_1

    .line 14
    .line 15
    const/high16 p1, 0x42400000    # 48.0f

    .line 16
    .line 17
    invoke-static {p1}, Lcom/transsion/core/utils/e;->a(F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :cond_1
    int-to-float p2, p3

    .line 22
    const/high16 p3, 0x3f800000    # 1.0f

    .line 23
    .line 24
    mul-float/2addr p2, p3

    .line 25
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p1, p1

    .line 30
    div-float/2addr p2, p1

    .line 31
    invoke-direct {p0, p2}, Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;->r0(F)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final r0(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;->n0()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;->m0()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    .line 28
    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->g(FF)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-direct {p0, v1, p1}, Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;->k0(IF)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public initViewData()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;->l0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;->p0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected final l0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;->n0()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Luf/c;->e(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v1, v0, Lcom/transsion/baseui/activity/BaseNewActivity;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/transsion/baseui/activity/BaseNewActivity;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseNewActivity;->t0()V

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected m0()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/rewardscenter/R$color;->rewards_center_title:I

    .line 2
    .line 3
    return v0
.end method

.method protected abstract n0()Landroid/view/View;
.end method

.method protected abstract o0()Landroid/view/View;
.end method
