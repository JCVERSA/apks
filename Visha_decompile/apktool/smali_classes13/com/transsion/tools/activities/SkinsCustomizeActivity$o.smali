.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;
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

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/tools/beans/CustomThemeCache;->customThumb:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/tools/beans/ThemeImage;

    invoke-direct {p1}, Lcom/transsion/tools/beans/ThemeImage;-><init>()V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/tools/beans/CustomThemeCache;->customThumb:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/tools/beans/ThemeImage;->imageUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;

    move-result-object v0

    iget v0, v0, Lcom/transsion/tools/beans/CustomThemeCache;->thumbIndex:I

    invoke-virtual {p1, v0}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->r(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/widgets/BubbleTextView;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    new-instance v0, Lcom/transsion/widgets/BubbleTextView;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {v0, v1}, Lcom/transsion/widgets/BubbleTextView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->v1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/widgets/BubbleTextView;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->r1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o$a;

    invoke-direct {v0, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o$a;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->l1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/model/CustomThemeViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/tools/model/CustomThemeViewModel;->generateDefaultColor()V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->l1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/model/CustomThemeViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/tools/model/CustomThemeViewModel;->generateDefaultFrames()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;->a(Ljava/util/List;)V

    return-void
.end method
