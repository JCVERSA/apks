.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmfb$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tools/activities/SkinsCustomizeActivity;
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

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->e(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;Landroid/net/Uri;Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->d(Landroid/net/Uri;Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Lcom/transsion/tools/beans/ThemeImage;

    invoke-direct {v0}, Lcom/transsion/tools/beans/ThemeImage;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/tools/beans/ThemeImage;->imageUri:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/transsion/tools/beans/ThemeImage;->originImageUri:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-le p2, v1, :cond_0

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->r(I)V

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    const-string p2, "skin_diy_edit_upload_clip_apply"

    invoke-static {p2, v2}, Ld16;->f(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p2, v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R2(Z)V

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2, v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->D1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    new-instance v0, Lto9;

    invoke-direct {v0, p0, p1}, Lto9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Luo9;

    invoke-direct {p2, p0}, Luo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic d(Landroid/net/Uri;Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->G1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic e(Landroid/graphics/Bitmap;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->L1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ColorChooserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->g()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/beans/ThemeColor;

    iget v0, v0, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)I

    move-result v2

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v4}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v5}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/tools/beans/ThemeImage;

    iget v4, v4, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    move v3, v5

    :cond_0
    invoke-static {p1, v0, v1, v2, v3}, Lm7a;->a(ILandroid/content/Context;Landroid/widget/ImageView;IZ)V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O1(I)V

    return-void
.end method
