.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:I

.field public f:Landroid/view/View;

.field public g:I

.field public h:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

.field public i:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->g:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->g:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->c:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->h:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->e:I

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

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->h:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->i:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->c:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->d:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->e:I

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->f:Landroid/view/View;

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->h:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->d:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->m()V

    return-object p0
.end method

.method public getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->i:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->c(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->i:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

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

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->f:Landroid/view/View;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->b:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->i:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->e(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->e:I

    return p0
.end method

.method public getTabLabelVisibility()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->g:I

    return p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->i:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->i:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->i(Landroid/view/View;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;

    move-result-object p0

    return-object p0
.end method

.method public i(Landroid/view/View;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->m()V

    return-object p0
.end method

.method public j(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;
    .locals 3

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->b:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->h:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->B:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->H(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->m()V

    return-object p0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->e:I

    return-void
.end method

.method public l(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->i:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->m()V

    return-object p0
.end method

.method public m()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$g;->i:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->t()V

    :cond_0
    return-void
.end method
