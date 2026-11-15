.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;
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

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->e(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;Landroid/net/Uri;Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->d(Landroid/net/Uri;Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->M1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->y1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
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

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-le p2, v1, :cond_0

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->r(I)V

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    const-string p2, "skin_diy_edit_upload_clip_apply"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ld16;->f(Ljava/lang/String;I)V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

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

    new-instance v0, Lvo9;

    invoke-direct {v0, p0, p1}, Lvo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lwo9;

    invoke-direct {p2, p0}, Lwo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic d(Landroid/net/Uri;Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->D2(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
