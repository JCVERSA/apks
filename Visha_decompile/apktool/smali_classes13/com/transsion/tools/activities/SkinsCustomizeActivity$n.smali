.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;
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

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->c(Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->d(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final synthetic c(Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;)Landroid/graphics/Bitmap;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initViewModel backgroundUri: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/tools/beans/CustomThemeCache;->customBackground:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SkinsCustomizeActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/tools/beans/CustomThemeCache;->customBackground:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->G1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic d(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->L1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O1(I)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/tools/beans/CustomThemeCache;->customBackground:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/transsion/tools/beans/ThemeImage;

    invoke-direct {p1}, Lcom/transsion/tools/beans/ThemeImage;-><init>()V

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/tools/beans/CustomThemeCache;->customBackground:Ljava/lang/String;

    iput-object v2, p1, Lcom/transsion/tools/beans/ThemeImage;->imageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v2

    iget v2, v2, Lcom/transsion/tools/beans/CustomThemeCache;->backgroundIndex:I

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R2(Z)V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lxo9;

    invoke-direct {v0, p0}, Lxo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lyo9;

    invoke-direct {v0, p0}, Lyo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p1, v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R2(Z)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    iget p1, p1, Lcom/transsion/tools/beans/CustomThemeCache;->backgroundIndex:I

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/transsion/tools/beans/CustomThemeCache;->backgroundIndex:I

    :cond_2
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v0

    iget v0, v0, Lcom/transsion/tools/beans/CustomThemeCache;->backgroundIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/beans/ThemeImage;

    iget-boolean v0, p1, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget p1, p1, Lcom/transsion/tools/beans/ThemeImage;->resId:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v0

    iget v0, v0, Lcom/transsion/tools/beans/CustomThemeCache;->backgroundIndex:I

    invoke-virtual {p1, v0}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->r(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p1, v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R2(Z)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/transsion/tools/R$drawable;->ic_white:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0, v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n$a;

    invoke-direct {v0, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n$a;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;->e(Ljava/util/List;)V

    return-void
.end method
