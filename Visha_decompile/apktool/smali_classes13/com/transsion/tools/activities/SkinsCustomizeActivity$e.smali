.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e2()V
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

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ColorChooserAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->g()I

    move-result p1

    if-eq p3, p1, :cond_4

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->D1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ColorChooserAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->r(I)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ColorChooserAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/beans/ThemeColor;

    iget-object p1, p1, Lcom/transsion/tools/beans/ThemeColor;->colorTheme:Ljava/lang/String;

    invoke-static {p1}, Ld16;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object p1

    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tools/beans/ThemeColor;

    iget v1, v1, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->z1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/beans/ThemeImage;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/tools/beans/ThemeColor;

    iget p3, p3, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v3

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result p0

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/beans/ThemeImage;

    iget p0, p0, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    const/4 v3, 0x0

    if-ne p0, p2, :cond_2

    move p0, p2

    goto :goto_1

    :cond_2
    move p0, v3

    :goto_1
    invoke-static {v2, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)I

    move-result p0

    iget p1, p1, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    if-eq p1, p2, :cond_3

    goto :goto_2

    :cond_3
    move p2, v3

    :goto_2
    invoke-static {p3, v0, v1, p0, p2}, Lm7a;->a(ILandroid/content/Context;Landroid/widget/ImageView;IZ)V

    :cond_4
    return-void
.end method
