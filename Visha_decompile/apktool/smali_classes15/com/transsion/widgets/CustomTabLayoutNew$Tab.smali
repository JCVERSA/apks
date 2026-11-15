.class public Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/CustomTabLayoutNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private contentDesc:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private customView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private icon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private labelVisibilityMode:I
    .annotation build Lcom/transsion/widgets/CustomTabLayoutNew$LabelVisibility;
    .end annotation
.end field

.field public parent:Lcom/transsion/widgets/CustomTabLayoutNew;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private position:I

.field public showBadgeView:Z

.field private tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private text:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->position:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->labelVisibilityMode:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->contentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->labelVisibilityMode:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->text:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-static {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->d(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->customView:Landroid/view/View;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-static {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->f(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->position:I

    return p0
.end method

.method public getTabLabelVisibility()I
    .locals 0
    .annotation build Lcom/transsion/widgets/CustomTabLayoutNew$LabelVisibility;
    .end annotation

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->labelVisibilityMode:I

    return p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->parent:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getSelectedTabPosition()I

    move-result v0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->position:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeBadge()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-static {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->h(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->parent:Lcom/transsion/widgets/CustomTabLayoutNew;

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->contentDesc:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->position:I

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->customView:Landroid/view/View;

    return-void
.end method

.method public select()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->parent:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->selectTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentDescription(I)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->parent:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->updateView()V

    return-object p0
.end method

.method public setCustomView(I)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setCustomView(Landroid/view/View;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    move-result-object p0

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->customView:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->updateView()V

    return-object p0
.end method

.method public setIcon(I)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->parent:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->parent:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget v0, p1, Lcom/transsion/widgets/CustomTabLayoutNew;->tabGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/transsion/widgets/CustomTabLayoutNew;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p1, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->updateTabViews(Z)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->updateView()V

    .line 5
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    .line 6
    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->g(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->a(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->position:I

    return-void
.end method

.method public setTabLabelVisibility(I)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 3
    .param p1    # I
        .annotation build Lcom/transsion/widgets/CustomTabLayoutNew$LabelVisibility;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->labelVisibilityMode:I

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->parent:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget v0, p1, Lcom/transsion/widgets/CustomTabLayoutNew;->tabGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/transsion/widgets/CustomTabLayoutNew;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->updateTabViews(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->updateView()V

    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->g(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->a(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-object p0
.end method

.method public setTabShowBadgeView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->showBadgeView:Z

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->setShowBadgeView(Z)V

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->parent:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->text:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->updateView()V

    return-object p0
.end method

.method public updateView()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->view:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->update()V

    :cond_0
    return-void
.end method
