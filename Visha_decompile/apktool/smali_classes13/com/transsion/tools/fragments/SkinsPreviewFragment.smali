.class public Lcom/transsion/tools/fragments/SkinsPreviewFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# instance fields
.field public A:I

.field public B:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public final C:Los0;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/Button;

.field public n:Lcom/transsion/widgetslib/dialog/c;

.field public o:Lcom/transsion/widgetslib/dialog/d;

.field public p:Ljava/util/List;

.field public q:Lcom/transsion/dbdata/beans/SkinsMenu;

.field public r:I

.field public s:Lxn9;

.field public t:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

.field public u:Landroidx/viewpager2/widget/ViewPager2;

.field public v:Lt03;

.field public w:Lcom/transsion/dbdata/beans/ThemeData;

.field public x:Landroid/view/View;

.field public y:Lcom/transsion/dbdata/beans/ThemeData;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment$a;-><init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->B:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    new-instance v0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$c;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment$c;-><init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->C:Los0;

    return-void
.end method

.method public static synthetic P(Lcom/transsion/tools/fragments/SkinsPreviewFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->t0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/tools/fragments/SkinsPreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->r0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/tools/fragments/SkinsPreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/transsion/tools/fragments/SkinsPreviewFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->s0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic T(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->m:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic U(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic V(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lt03;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->v:Lt03;

    return-object p0
.end method

.method public static bridge synthetic W(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/widgetslib/dialog/c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->n:Lcom/transsion/widgetslib/dialog/c;

    return-object p0
.end method

.method public static bridge synthetic X(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/widgetslib/dialog/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->o:Lcom/transsion/widgetslib/dialog/d;

    return-object p0
.end method

.method public static bridge synthetic Y(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/dbdata/beans/SkinsMenu;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    return-object p0
.end method

.method public static bridge synthetic Z(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Lcom/transsion/tools/adapter/ThemePreviewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->t:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    return-object p0
.end method

.method public static bridge synthetic a0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic b0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;Lcom/transsion/dbdata/beans/SkinsMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    return-void
.end method

.method public static bridge synthetic c0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->h0(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->m0()V

    return-void
.end method

.method public static bridge synthetic e0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p0()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->x0(Z)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initTitleBar(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/tools/R$id;->title_bar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lzo9;

    invoke-direct {v1, p0}, Lzo9;-><init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/tools/R$id;->title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->l:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic r0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->x0(Z)V

    return-void
.end method

.method public static u0(Landroid/os/Bundle;)Lcom/transsion/tools/fragments/SkinsPreviewFragment;
    .locals 1

    new-instance v0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final A0(II)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-direct {v1}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    new-instance v2, Landroidx/viewpager2/widget/MarginPageTransformer;

    invoke-direct {v2, v0}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float p2, p2

    invoke-static {p0, p2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {v1, v3, v4, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x3e6

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->z0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final h0(ILjava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lp06;->K(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/playercommon/activities/BaseActivity;->removeCurrentThemeCache()V

    :cond_0
    iget-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->s:Lxn9;

    invoke-virtual {p2}, Lxn9;->a()V

    iget-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->m:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->removeSplashSnapshot()V

    :cond_1
    return-void
.end method

.method public final i0(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    sget v1, Lcom/transsion/tools/R$id;->iv_preview_skin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->g(Landroid/widget/ImageView;)V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public j0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lru8$b;

    invoke-direct {v1}, Lru8$b;-><init>()V

    invoke-static {}, Lak4;->a()Lak4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru8$b;->b(Lsi1$a;)Lru8$b;

    move-result-object v1

    invoke-static {}, Lxw8;->a()Lxw8;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru8$b;->a(Llq0$a;)Lru8$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lru8$b;->c(Ljava/lang/String;)Lru8$b;

    move-result-object p1

    invoke-virtual {p1}, Lru8$b;->e()Lru8;

    move-result-object p1

    const-class v1, Ltu8;

    invoke-virtual {p1, v1}, Lru8;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltu8;

    invoke-interface {p1, v0}, Ltu8;->a(Ljava/lang/String;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lcom/transsion/tools/fragments/SkinsPreviewFragment$d;

    invoke-direct {v0, p0, p2}, Lcom/transsion/tools/fragments/SkinsPreviewFragment$d;-><init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final k0()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/SkinsMenu;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/SkinsMenu;->isLocalTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/transsion/dbdata/beans/ThemeData;

    iget-object v4, v1, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbnailPath:Ljava/lang/String;

    iget-object v6, v1, Lcom/transsion/dbdata/beans/SkinsMenu;->description:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/transsion/dbdata/beans/ThemeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v4, Lcom/transsion/tools/R$attr;->os_platform_basic_color:I

    invoke-static {v2, v3, v4}, Lvha;->n(Landroid/content/Context;Lcom/transsion/dbdata/beans/ThemeData;I)I

    move-result v2

    iput v2, v1, Lcom/transsion/dbdata/beans/SkinsMenu;->basicColor:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final l0(Landroid/view/View;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 3

    sget v0, Lcom/transsion/tools/R$id;->confirm_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->m:Landroid/widget/Button;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->v0(Landroid/widget/Button;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->m:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p0()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->m:Landroid/widget/Button;

    new-instance v1, Lap9;

    invoke-direct {v1, p0}, Lap9;-><init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p2, p0, :cond_0

    sget p0, Lcom/transsion/tools/R$id;->ll_confirm:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public final m0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/c;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/c;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/tools/R$string;->mv_download:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/c;->i(I)Lcom/transsion/widgetslib/dialog/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/c;->h(I)Lcom/transsion/widgetslib/dialog/c;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->n:Lcom/transsion/widgetslib/dialog/c;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/c;->l()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->o:Lcom/transsion/widgetslib/dialog/d;

    return-void

    :cond_1
    :goto_0
    const-string p0, "SkinsPreviewFragment"

    const-string v0, "initProgressDialog error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    const-string p0, "skin_preview_page_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final n0(Landroid/view/View;II)V
    .locals 1

    sget v0, Lcom/transsion/tools/R$id;->viewpager2_theme_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->A0(II)V

    new-instance p1, Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->t:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    iget-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->t:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->t:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    new-instance p2, Lbp9;

    invoke-direct {p2, p0}, Lbp9;-><init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->t:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    new-instance p2, Lcp9;

    invoke-direct {p2, p0}, Lcp9;-><init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->B:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    iget p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->r:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->t:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    iget p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->r:I

    invoke-virtual {p1, p0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->v(I)V

    return-void
.end method

.method public final o0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/SkinsMenu;->isLocalTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->description:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/SkinsMenu;->description:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "style"

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-string p2, "theme_preview_key"

    invoke-static {p1, p2}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/ThemeData;

    iput-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->w:Lcom/transsion/dbdata/beans/ThemeData;

    new-instance p1, Lcom/transsion/dbdata/beans/SkinsMenu;

    sget v1, Lcom/transsion/tools/R$drawable;->image_custom_preview:I

    sget v4, Lcom/transsion/tools/R$drawable;->image_custom_preview_large:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/tools/R$string;->skins_customize:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p1

    move v2, v4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;II)V

    iget-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->w:Lcom/transsion/dbdata/beans/ThemeData;

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    iput-object p3, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->description:Ljava/lang/String;

    iget-object v0, p2, Lcom/transsion/dbdata/beans/ThemeData;->path:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbnailPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->detailPath:Ljava/lang/String;

    iget-object v1, p2, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    iput-object v1, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget p2, p2, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    iput p2, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->backgroundType:I

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/transsion/dbdata/beans/ThemeData;

    invoke-direct {v2, v1, v0, p3}, Lcom/transsion/dbdata/beans/ThemeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p3, Lcom/transsion/tools/R$attr;->os_platform_basic_color:I

    invoke-static {p2, v2, p3}, Lvha;->n(Landroid/content/Context;Lcom/transsion/dbdata/beans/ThemeData;I)I

    move-result p2

    iput p2, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->basicColor:I

    iget-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->w:Lcom/transsion/dbdata/beans/ThemeData;

    iget p3, p2, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    iput p3, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbType:I

    iget-object p2, p2, Lcom/transsion/dbdata/beans/ThemeData;->tabPath:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbPath:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    iget-boolean p2, p2, Lcom/transsion/dbdata/beans/SkinsMenu;->isSelected:Z

    iput-boolean p2, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->isSelected:Z

    :cond_0
    iget-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    invoke-interface {p2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->t:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lt03;

    invoke-direct {p1}, Lt03;-><init>()V

    iput-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->v:Lt03;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-string v0, "theme_preview_key"

    invoke-static {p1, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/ThemeData;

    iput-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->w:Lcom/transsion/dbdata/beans/ThemeData;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "skin_theme"

    invoke-static {p1, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/ThemeData;

    iput-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->y:Lcom/transsion/dbdata/beans/ThemeData;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p3}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "skin_list"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    const-string v0, "skin_index"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->r:I

    iget-object p3, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    iget v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->r:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/dbdata/beans/SkinsMenu;

    iput-object p3, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSelectedSkinsMenu:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "SkinsPreviewFragment"

    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/transsion/tools/R$layout;->skin_preview_fragment_tablet:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/tools/R$layout;->skin_preview_fragment:I

    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->o:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->v:Lt03;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt03;->c(Lt03$a;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->s:Lxn9;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->C:Los0;

    invoke-virtual {v0, v1}, Lxn9;->e(Los0;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->B:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->i0(Landroidx/viewpager2/widget/ViewPager2;)V

    :cond_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x3e6

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->x:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->l0(Landroid/view/View;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->x:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->y0(Landroid/view/View;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v0, "skin_preview_page_show"

    const-wide v1, 0xd91af27378L

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1, v2}, Lr06;->e(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lxn9;->c()Lxn9;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->s:Lxn9;

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->C:Los0;

    invoke-virtual {p2, v0}, Lxn9;->f(Los0;)V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->o0()V

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->initTitleBar(Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->x:Landroid/view/View;

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->l0(Landroid/view/View;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->y0(Landroid/view/View;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Z)V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->k0()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x3e6

    invoke-virtual {p1, p0, p2}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public final p0()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->y:Lcom/transsion/dbdata/beans/ThemeData;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/tools/R$string;->default_skin:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    iget-boolean p0, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->isSelected:Z

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget-object v0, v2, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSelectedSkinsMenu:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SkinsPreviewFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final synthetic q0(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Loa1;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "SkinsPreviewFragment"

    const-string p1, "ingore theme change event"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Loa1;->h()V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/dbdata/beans/ThemeData;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget v2, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->imageMenu:I

    iget-object p1, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->description:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/dbdata/beans/ThemeData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "skin_theme"

    invoke-static {p1, v1, v0}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/tools/R$string;->theme_toast:I

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->h0(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/tools/R$string;->operation_fail:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->detailPath:Ljava/lang/String;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->j0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->m:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->v:Lt03;

    new-instance v1, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;-><init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment;Lcom/transsion/dbdata/beans/SkinsMenu;)V

    invoke-virtual {v0, v1}, Lt03;->c(Lt03$a;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->description:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->description:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "style"

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    return-void
.end method

.method public final synthetic s0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class p3, Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p2, 0x3e8

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1, p2, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    const-string p0, "skin_preview_edit_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->w0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic t0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method public final v0(Landroid/widget/Button;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/high16 v2, 0x41f00000    # 30.0f

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v4, 0x43340000    # 180.0f

    invoke-static {v1, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_LAND:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v4, 0x434f0000    # 207.0f

    invoke-static {v1, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42900000    # 72.0f

    invoke-static {v1, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p2, v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lolb;->H(Landroid/content/Context;)I

    move-result p2

    int-to-double v1, p2

    const-wide v3, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v1, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v5, 0x43a00000    # 320.0f

    invoke-static {p2, v5}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    int-to-double v5, p2

    cmpg-double p2, v1, v5

    if-gez p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lolb;->H(Landroid/content/Context;)I

    move-result p0

    int-to-double v1, p0

    mul-double/2addr v1, v3

    double-to-int p0, v1

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const/high16 p2, 0x43a50000    # 330.0f

    invoke-static {p0, p2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_1
    instance-of p0, p1, Lcom/transsion/widgetslib/view/OSBigButton;

    if-eqz p0, :cond_3

    move-object p0, p1

    check-cast p0, Lcom/transsion/widgetslib/view/OSBigButton;

    const/16 p2, 0x2e

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinButtonHeightDp(I)V

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public w0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/tools/fragments/SkinsPreviewFragment;
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;

    return-object p0
.end method

.method public final x0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final y0(Landroid/view/View;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Z)V
    .locals 5

    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/16 v1, 0x21

    const/16 v2, 0x4d

    if-ne p2, v0, :cond_0

    iput v2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->z:I

    iput v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->A:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_LAND:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v3, 0x0

    const/16 v4, 0xa3

    if-ne p2, v0, :cond_1

    iput v4, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->z:I

    iput v3, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->A:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/utils/a;->r(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    iput v4, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->z:I

    iput v3, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->A:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->z:I

    iput v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->A:I

    goto :goto_0

    :cond_3
    const/16 p2, 0x28

    iput p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->z:I

    const/16 p2, 0x15

    iput p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->A:I

    :goto_0
    if-eqz p3, :cond_4

    iget p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->z:I

    iget p3, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->A:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->n0(Landroid/view/View;II)V

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->z:I

    iget p2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->A:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->A0(II)V

    :goto_1
    return-void
.end method

.method public final z0(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->t:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/transsion/tools/utils/SkinsMenuDiffCallback;

    iget-object v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lcom/transsion/tools/utils/SkinsMenuDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->k0()V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->t:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->q:Lcom/transsion/dbdata/beans/SkinsMenu;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/SkinsMenu;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->r:I

    iget-object v1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->u:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->t:Lcom/transsion/tools/adapter/ThemePreviewAdapter;

    iget p0, p0, Lcom/transsion/tools/fragments/SkinsPreviewFragment;->r:I

    invoke-virtual {p1, p0}, Lcom/transsion/tools/adapter/ThemePreviewAdapter;->v(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
