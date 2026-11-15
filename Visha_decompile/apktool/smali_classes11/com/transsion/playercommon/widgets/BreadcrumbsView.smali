.class public Lcom/transsion/playercommon/widgets/BreadcrumbsView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;,
        Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;
    }
.end annotation


# instance fields
.field public b:Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

.field public c:Landroid/view/View;

.field public d:Landroid/content/Context;

.field public e:Lcom/transsion/playercommon/utils/storage/MountPointManager;

.field public f:Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;

.field public final g:Ljava/util/List;

.field public h:I

.field public i:Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-object p3, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->b:Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->g:Ljava/util/List;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->h(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->c:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->i:Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/utils/storage/MountPointManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->e:Lcom/transsion/playercommon/utils/storage/MountPointManager;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->b:Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->g:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->h:I

    return p0
.end method


# virtual methods
.method public addItemClickListener(Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->i:Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;

    return-void
.end method

.method public getItemViewCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final h(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->d:Landroid/content/Context;

    invoke-static {}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f()Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->e:Lcom/transsion/playercommon/utils/storage/MountPointManager;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->k(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/playercommon/R$layout;->navigation_path_bar:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->c:Landroid/view/View;

    sget p2, Lcom/transsion/playercommon/R$id;->navigation_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->b:Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->b:Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    new-instance p1, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;-><init>(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->f:Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/playercommon/R$color;->path_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->h:I

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->f:Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->g(I)Z

    move-result p0

    return p0
.end method

.method public refreshTab(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->f:Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setTabClickEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->f:Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->h:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
