.class public abstract Lcom/mgtv/ssp/viewcard/BaseView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/SspViewInterface;


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Z

.field protected D:Landroid/view/View;

.field protected E:Ljava/lang/String;

.field protected F:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/mgtv/ssp/viewcard/BaseView;->F:Z

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

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/ssp/viewcard/BaseView;->F:Z

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

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/mgtv/ssp/viewcard/BaseView;->F:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->D:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->getLayoutResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseView;->D:Landroid/view/View;

    .line 4
    new-instance v0, Lcom/mgtv/ssp/viewcard/BaseView$1;

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/viewcard/BaseView$1;-><init>(Lcom/mgtv/ssp/viewcard/BaseView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseView;->e()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->D:Landroid/view/View;

    return-object p0
.end method

.method public a(IZZ)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/mgtv/ssp/viewcard/BaseView;->B:Z

    return-void
.end method

.method public abstract e()V
.end method

.method public getContentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->E:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getLayoutResId()I
.end method

.method public getRealVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->C:Z

    return p0
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseView;->E:Ljava/lang/String;

    return-void
.end method

.method public setRealVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/viewcard/BaseView;->C:Z

    return-void
.end method

.method public v()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/viewcard/BaseView;->B:Z

    return p0
.end method
