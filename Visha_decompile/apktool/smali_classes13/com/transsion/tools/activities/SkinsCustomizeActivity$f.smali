.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsCustomizeActivity;->T2(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/beans/ThemeImage;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    iget v1, p1, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)V

    iget p1, p1, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    if-eq p1, v3, :cond_2

    move p1, v2

    :goto_1
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->T0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->T0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->s1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ColorChooserAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->g()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tools/beans/ThemeColor;

    iget v1, v1, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->z1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V

    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
