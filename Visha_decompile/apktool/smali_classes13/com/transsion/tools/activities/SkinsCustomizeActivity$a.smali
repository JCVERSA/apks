.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    iget p1, p1, Lcom/transsion/tools/beans/CustomThemeCache;->colorIndex:I

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p1, Lcom/transsion/tools/beans/CustomThemeCache;->colorIndex:I

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ColorChooserAdapter;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v2

    iget v2, v2, Lcom/transsion/tools/beans/CustomThemeCache;->colorIndex:I

    invoke-virtual {p1, v2}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->r(I)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ColorChooserAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v4}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v4

    iget v4, v4, Lcom/transsion/tools/beans/CustomThemeCache;->colorIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/tools/beans/ThemeColor;

    iget v3, v3, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->z1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/beans/ThemeImage;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {v2}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v4}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v4

    iget v4, v4, Lcom/transsion/tools/beans/CustomThemeCache;->colorIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/tools/beans/ThemeColor;

    iget v3, v3, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v5}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v7}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v7

    iget v7, v7, Lcom/transsion/tools/beans/CustomThemeCache;->backgroundIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/tools/beans/ThemeImage;

    iget v6, v6, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    if-ne v6, v1, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    invoke-static {v5, v6}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)I

    move-result v5

    iget p1, p1, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    if-eq p1, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v4, v5, v0}, Lm7a;->a(ILandroid/content/Context;Landroid/widget/ImageView;IZ)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/tools/beans/ThemeColor;

    iget v2, v2, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v4, v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)I

    move-result v1

    invoke-static {p1, v2, v3, v1, v0}, Lm7a;->a(ILandroid/content/Context;Landroid/widget/ImageView;IZ)V

    :goto_1
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ColorChooserAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;->a(Ljava/util/List;)V

    return-void
.end method
