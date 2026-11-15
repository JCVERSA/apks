.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;
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

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result p1

    const/4 p2, 0x1

    if-eq p3, p1, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->D1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)V

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_6

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/beans/ThemeImage;

    iget-boolean v1, v0, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget v2, v0, Lcom/transsion/tools/beans/ThemeImage;->resId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    iget v3, v0, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    if-ne v3, p2, :cond_1

    move v3, p2

    goto :goto_0

    :cond_1
    move v3, p1

    :goto_0
    invoke-static {v2, v3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v1

    if-ne p3, v1, :cond_3

    iget-object v1, v0, Lcom/transsion/tools/beans/ThemeImage;->originImageUri:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    new-instance v2, Lmfb;

    invoke-static {v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->W0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lmfb$d;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lmfb;-><init>(Landroid/content/Context;Lmfb$d;)V

    invoke-static {v1, v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->w1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lmfb;)V

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lmfb;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/tools/beans/ThemeImage;->originImageUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmfb;->p(Landroid/net/Uri;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tools/beans/ThemeImage;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {v2}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v4}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ColorChooserAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->g()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/tools/beans/ThemeColor;

    iget v3, v3, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    iget v6, v0, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    if-ne v6, p2, :cond_4

    move v6, p2

    goto :goto_2

    :cond_4
    move v6, p1

    :goto_2
    invoke-static {v5, v6}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)I

    move-result v5

    iget v1, v1, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    if-eq v1, p2, :cond_5

    move p1, p2

    :cond_5
    invoke-static {v2, v3, v4, v5, p1}, Lm7a;->a(ILandroid/content/Context;Landroid/widget/ImageView;IZ)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    iget-boolean v0, v0, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R2(Z)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result p1

    if-eq p3, p1, :cond_7

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->r(I)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/beans/ThemeImage;

    iget p1, p1, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    invoke-static {p1}, Ld16;->e(I)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_3

    :cond_6
    const-string p2, "skin_diy_edit_bg_upload_cl"

    invoke-static {p2}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    new-instance p3, Lmfb;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->W0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lmfb$d;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lmfb;-><init>(Landroid/content/Context;Lmfb$d;)V

    invoke-static {p2, p3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->w1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lmfb;)V

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lmfb;

    move-result-object p2

    invoke-virtual {p2}, Lmfb;->m()V

    const-string p2, "skin_diy_edit_bg_upload_pop_show"

    invoke-static {p2}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    const-string p2, "custom_bubble_1"

    invoke-static {p0, p2, p1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_7
    :goto_3
    return-void
.end method
