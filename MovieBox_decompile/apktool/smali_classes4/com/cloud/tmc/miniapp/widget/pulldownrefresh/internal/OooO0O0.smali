.class public abstract Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;
.super Landroid/widget/RelativeLayout;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;


# instance fields
.field public OooO00o:Landroid/view/View;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

.field public OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;-><init>(Landroid/view/View;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO00o:Landroid/view/View;

    .line 4
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 5
    instance-of p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0O0;

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p1, :cond_0

    instance-of p1, p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object p1

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne p1, v1, :cond_0

    .line 6
    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0OO;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    instance-of v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object p1

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne p1, v1, :cond_1

    .line 8
    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I
    .locals 1
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public OooO00o(FII)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 11
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(FII)V

    :cond_0
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;II)V
    .locals 1
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;II)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO00o:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 7
    instance-of p3, p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    if-eqz p3, :cond_1

    .line 8
    check-cast p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    iget p2, p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;->OooO00o:I

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {p1, p0, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V
    .locals 1
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 15
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V

    :cond_0
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_4

    if-eq v0, p0, :cond_4

    .line 17
    instance-of v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0O0;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    if-eqz v1, :cond_1

    .line 18
    iget-boolean v0, p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFooter:Z

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->toHeader()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    move-result-object p2

    .line 20
    :cond_0
    iget-boolean v0, p3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isFooter:Z

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {p3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->toHeader()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    move-result-object p3

    goto :goto_0

    .line 22
    :cond_1
    instance-of v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0OO;

    if-eqz v1, :cond_3

    instance-of v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    if-eqz v0, :cond_3

    .line 23
    iget-boolean v0, p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->toFooter()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    move-result-object p2

    .line 25
    :cond_2
    iget-boolean v0, p3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->isHeader:Z

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {p3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->toFooter()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    move-result-object p3

    .line 27
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_4

    .line 28
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    :cond_4
    return-void
.end method

.method public OooO00o(ZFIII)V
    .locals 6

    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 13
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o(ZFIII)V

    :cond_0
    return-void
.end method

.method public OooO00o()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO00o(Z)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;->OooO00o(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V
    .locals 1
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->getView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-ne v0, p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v2

    .line 27
    :goto_0
    return v1

    .line 28
    :cond_1
    return v2

    .line 29
    :cond_2
    return v1
.end method

.method public getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eq v0, p0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO00o:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_2
    if-eqz v0, :cond_5

    .line 40
    .line 41
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    const/4 v1, -0x1

    .line 46
    if-ne v0, v1, :cond_5

    .line 47
    .line 48
    :cond_3
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oo:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 49
    .line 50
    array-length v1, v0

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_0
    if-ge v2, v1, :cond_5

    .line 53
    .line 54
    aget-object v3, v0, v2

    .line 55
    .line 56
    iget-boolean v4, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0OO:Z

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 61
    .line 62
    return-object v3

    .line 63
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 69
    .line 70
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO00o:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO00o:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v0, v3, v4

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aput-object v1, v3, v0

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    aput-object v2, v3, v0

    .line 18
    .line 19
    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->setPrimaryColors([I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
