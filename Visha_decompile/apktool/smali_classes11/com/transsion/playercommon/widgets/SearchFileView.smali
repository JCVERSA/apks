.class public Lcom/transsion/playercommon/widgets/SearchFileView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/SearchFileView$f;,
        Lcom/transsion/playercommon/widgets/SearchFileView$e;
    }
.end annotation


# static fields
.field public static final SEARCH_AUDIO:I = 0x2

.field public static final SEARCH_CLOUD:I = 0x3

.field public static final SEARCH_VIDEO:I = 0x1


# instance fields
.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Lcom/transsion/widgetslib/widget/SearchBar;

.field public d:Lcom/transsion/utils/CustomLinearLayoutManager;

.field public e:I

.field public f:I

.field public final g:Ljava/util/ArrayList;

.field public h:Lcom/transsion/playercommon/adapter/SearchResultAdapter;

.field public i:Landroid/content/Context;

.field public j:I

.field public k:Lcom/transsion/playercommon/widgets/SearchFileView$f;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/widget/ImageView;

.field public o:Landroid/widget/LinearLayout;

.field public p:J

.field public q:J

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;

.field public x:J

.field public y:J

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/transsion/playercommon/widgets/SearchFileView$1;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$1;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->u:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcom/transsion/playercommon/widgets/SearchFileView$2;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$2;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->v:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcom/transsion/playercommon/widgets/SearchFileView$3;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$3;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->w:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->x:J

    .line 7
    iput-wide v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->y:J

    .line 8
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/transsion/playercommon/widgets/SearchFileView$1;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$1;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->u:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lcom/transsion/playercommon/widgets/SearchFileView$2;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$2;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->v:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lcom/transsion/playercommon/widgets/SearchFileView$3;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$3;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->w:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->x:J

    .line 15
    iput-wide v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->y:J

    .line 16
    sget-object v0, Lcom/transsion/playercommon/R$styleable;->SearchFileView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 17
    sget v0, Lcom/transsion/playercommon/R$styleable;->SearchFileView_isBackMode:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->t:Z

    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    .line 22
    new-instance p2, Lcom/transsion/playercommon/widgets/SearchFileView$1;

    invoke-direct {p2, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$1;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->u:Ljava/lang/Runnable;

    .line 23
    new-instance p2, Lcom/transsion/playercommon/widgets/SearchFileView$2;

    invoke-direct {p2, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$2;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->v:Ljava/lang/Runnable;

    .line 24
    new-instance p2, Lcom/transsion/playercommon/widgets/SearchFileView$3;

    invoke-direct {p2, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$3;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->w:Ljava/lang/Runnable;

    const-wide/16 p2, 0x0

    .line 25
    iput-wide p2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->x:J

    .line 26
    iput-wide p2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->y:J

    .line 27
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private A()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->i:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->i:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    invoke-static {}, Lhoc;->a()I

    move-result v0

    invoke-static {p0, v0}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    return p0

    :cond_3
    :goto_0
    return v2
.end method

.method private F()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->i:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->f:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->e:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->E()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/widgets/SearchFileView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->y(I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/widgets/SearchFileView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->v(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/playercommon/widgets/SearchFileView;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/SearchFileView;->x(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/playercommon/widgets/SearchFileView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->q()V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/playercommon/widgets/SearchFileView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/SearchFileView;->r(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->w(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/playercommon/widgets/SearchFileView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->u(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/playercommon/widgets/SearchFileView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/SearchFileView;->s(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/playercommon/widgets/SearchFileView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/SearchFileView;->t(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/playercommon/widgets/SearchFileView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->i:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/playercommon/widgets/SearchFileView;)Lcom/transsion/widgetslib/widget/SearchBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/playercommon/widgets/SearchFileView;)Lcom/transsion/playercommon/widgets/SearchFileView$f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->k:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/transsion/playercommon/widgets/SearchFileView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->o:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private synthetic v(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->o:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic w(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\\%"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    invoke-virtual {p1, p0}, Lao;->r0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1, p0}, Ltpb;->w(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final B(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p3

    invoke-static {p3}, Llpb;->h(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget v0, Lcom/transsion/playercommon/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-ne p4, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->k:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    if-eqz p0, :cond_3

    invoke-interface {p0, p3, p2}, Lcom/transsion/playercommon/widgets/SearchFileView$f;->a(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public C()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->o()V

    :cond_1
    iget-object v2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->E()V

    :cond_3
    return-void
.end method

.method public final D(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->z:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->z:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/widgets/SearchFileView;->z(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->h:Lcom/transsion/playercommon/adapter/SearchResultAdapter;

    invoke-virtual {p2, p1}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->j(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->h:Lcom/transsion/playercommon/adapter/SearchResultAdapter;

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->C()V

    return-void
.end method

.method public final E()V
    .locals 2

    iget v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_audio_empty_illustration:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_video_empty_illustration:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 p2, 0x41d

    const-wide/16 v2, 0x1f4

    if-eq p1, p2, :cond_3

    const/16 p2, 0x41f

    if-eq p1, p2, :cond_3

    const/16 p2, 0x42e

    if-eq p1, p2, :cond_3

    const/16 p2, 0x430

    if-eq p1, p2, :cond_1

    const/16 p2, 0x440

    if-eq p1, p2, :cond_3

    const/16 p2, 0x456

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->z:Z

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->y:J

    sub-long p1, v0, p1

    cmp-long p1, p1, v2

    if-gez p1, :cond_2

    return-void

    :cond_2
    iput-wide v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->y:J

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-wide p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->x:J

    sub-long p1, v0, p1

    cmp-long p1, p1, v2

    if-gez p1, :cond_4

    return-void

    :cond_4
    iput-wide v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->x:J

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->h:Lcom/transsion/playercommon/adapter/SearchResultAdapter;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->o:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->m:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->setVisibility(I)V

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public initRecyclerView()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->h:Lcom/transsion/playercommon/adapter/SearchResultAdapter;

    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->s:Z

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->i(Z)V

    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->d:Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->h:Lcom/transsion/playercommon/adapter/SearchResultAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/playercommon/widgets/SearchFileView$a;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$a;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->n()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->h:Lcom/transsion/playercommon/adapter/SearchResultAdapter;

    new-instance v1, Ls49;

    invoke-direct {v1, p0}, Ls49;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->h:Lcom/transsion/playercommon/adapter/SearchResultAdapter;

    new-instance v1, Lt49;

    invoke-direct {v1, p0}, Lt49;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public initSearchView()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/widgets/SearchFileView$b;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$b;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance v1, Lcom/transsion/playercommon/widgets/SearchFileView$c;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$c;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance v1, Lcom/transsion/playercommon/widgets/SearchFileView$d;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/widgets/SearchFileView$d;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->addTextWatcher(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAutofill(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAutofill(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lq49;

    invoke-direct {v1, p0}, Lq49;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    sget v0, Lcom/transsion/playercommon/R$id;->search_content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lr49;

    invoke-direct {v1, p0}, Lr49;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->i:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->t:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/playercommon/R$layout;->search_file_view:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$layout;->search_file_view_no_back:I

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$id;->rv_search_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget v1, Lcom/transsion/playercommon/R$id;->search_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->o:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/playercommon/R$id;->search_bar_file:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/SearchBar;

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackView()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    sget v1, Lcom/transsion/playercommon/R$id;->search_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->m:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$color;->search_view_cover_color:I

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->p()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->initSearchView()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->initRecyclerView()V

    new-instance v0, Lo49;

    invoke-direct {v0, p0}, Lo49;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getDeleteAllIconView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getDeleteAllIconView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->talkback_close:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackView()Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->talkback_back:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public loadSearchData(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->i:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    iget v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lv49;

    invoke-direct {v1, p1}, Lv49;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lw49;

    invoke-direct {v1, p0, p1}, Lw49;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public markPointExpose(Z)V
    .locals 11

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->p:J

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->p:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->q:J

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v3}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->j:I

    const-string v0, "audio"

    const-string v1, "video"

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const-string v5, "type"

    invoke-virtual {v2, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->j:I

    if-ne p1, v4, :cond_2

    move-object v0, v1

    :cond_2
    invoke-virtual {v3, v5, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-wide v4, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->p:J

    iget-wide v6, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->q:J

    const-string v8, "search_s_show"

    const-wide/16 v9, 0x246c

    invoke-static/range {v2 .. v10}, Lp06;->D(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;JJLjava/lang/String;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public multiWindowModeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->r:Z

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->F()V

    return-void
.end method

.method public final n()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->A()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->i:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lu49;

    invoke-direct {v1, p0}, Lu49;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->l:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/playercommon/R$id;->main_empty_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->l:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->lottie_no_videos_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->n:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->F()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x42e

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x440

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41f

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41d

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->s:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p0

    const-string v0, "SearchFileView"

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->E(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->u:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x42e

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x440

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41f

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41d

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x430

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x456

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->z:Z

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p0

    const-string v0, "SearchFileView"

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->E(Ljava/lang/String;)V

    return-void
.end method

.method public onResumed()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->loadSearchData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->main_empty_imgView_marginBottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->main_empty_imgView_marginBottom_multiWindowMode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->f:I

    return-void
.end method

.method public final synthetic q()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->A()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->n()V

    :cond_0
    return-void
.end method

.method public final synthetic r(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->showOrHideKeyboard(Z)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/SearchBean;->getItemType()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->k:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->j:I

    invoke-static {v3}, Lp06;->I(I)V

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 p1, 0x3

    if-eq v2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->k:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView$f;->d(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->s:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->B(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->k:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView$f;->c(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->k:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaBucket()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView$f;->e(Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final synthetic s(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    sget v0, Lcom/transsion/playercommon/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->s:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->B(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/playercommon/R$id;->iv_bucket_fragment_item_more:I

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p2, 0x42b

    invoke-virtual {p1, p2, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/playercommon/R$id;->iv_item_more:I

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p2, 0x435

    invoke-virtual {p1, p2, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string p2, "from"

    const-string p3, "search_more_cl"

    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TYPE"

    const-string v1, "audio"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p2, "vd_vmore_show"

    const-wide/16 v0, 0x246c

    invoke-static {p1, p0, p2, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIsSelectConvertVideoMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->s:Z

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->h:Lcom/transsion/playercommon/adapter/SearchResultAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->i(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p1

    new-instance v0, Lp49;

    invoke-direct {v0, p0}, Lp49;-><init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V

    const-string p0, "SearchFileView"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->K(Ljava/lang/String;Lcom/transsion/playercommon/convert/ConvertingTaskManager$b;)V

    :cond_1
    return-void
.end method

.method public setSearchBgVisibleListenr(Lcom/transsion/playercommon/widgets/SearchFileView$e;)V
    .locals 0

    return-void
.end method

.method public setSearchHint(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    sget p1, Lcom/transsion/playercommon/R$string;->search_for_videos:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->setHint(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    sget p1, Lcom/transsion/playercommon/R$string;->search_for_music:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->setHint(I)V

    :goto_0
    return-void
.end method

.method public setSearchSelectCallBack(Lcom/transsion/playercommon/widgets/SearchFileView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->k:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    return-void
.end method

.method public setSearchType(I)V
    .locals 6

    iput p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->j:I

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->setSearchHint(I)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "audio"

    const-string v2, "video"

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    const-string v5, "type"

    invoke-virtual {p0, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v3, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v5, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "search_s_show"

    const-wide/16 v1, 0x246c

    invoke-static {v0, p0, p1, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/widget/SearchBar;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v0, 0x456

    const/16 v1, 0x430

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->showOrHideKeyboard(Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lh27;->b(Lh27$b;I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->i:Landroid/content/Context;

    instance-of v1, v0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->n()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->i:Landroid/content/Context;

    instance-of v3, p1, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, v2}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    :cond_3
    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/widgets/SearchFileView;->showOrHideKeyboard(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->k:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/transsion/playercommon/widgets/SearchFileView$f;->b()V

    :cond_4
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lh27;->f(Lh27$b;I)V

    iput-boolean v2, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->z:Z

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->h:Lcom/transsion/playercommon/adapter/SearchResultAdapter;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public showOrHideKeyboard(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->u:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->u:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->v:Ljava/lang/Runnable;

    :goto_0
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic t(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/transsion/playercommon/widgets/SearchFileView;->showOrHideKeyboard(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->c:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->setVisibility(I)V

    :cond_0
    return p3
.end method

.method public final synthetic u(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->showOrHideKeyboard(Z)V

    return-void
.end method

.method public final synthetic x(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/SearchFileView;->D(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic y(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->h:Lcom/transsion/playercommon/adapter/SearchResultAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final z(Ljava/util/List;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/transsion/dbdata/beans/SearchBean;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast v2, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    instance-of v3, v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v4, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_6

    return-void

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    instance-of v2, p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-eqz v3, :cond_b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iput-object v2, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    goto :goto_1

    :cond_c
    return-void
.end method
