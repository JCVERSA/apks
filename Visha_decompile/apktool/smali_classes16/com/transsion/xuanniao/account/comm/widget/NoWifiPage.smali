.class public Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$b;
    }
.end annotation


# instance fields
.field public OppO00p:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$b;

.field public OppO0O0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO00p()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO00p()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO00p()V

    return-void
.end method


# virtual methods
.method public final OppO00p()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3
    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_no_wifi_page:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    sget v0, Lcom/transsion/xuanniao/account/R$id;->reLoading:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$a;-><init>(Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget v0, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    .line 6
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    return-void
.end method

.method public OppO00p(Landroid/app/Activity;)V
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO0O0:Z

    if-eqz v0, :cond_0

    const v0, 0x1020002

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO0O0:Z

    :cond_0
    return-void
.end method

.method public OppO0O0(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO0O0:Z

    if-nez v0, :cond_0

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO0O0:Z

    :cond_0
    return-void
.end method

.method public setReload(Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO00p:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$b;

    return-void
.end method
