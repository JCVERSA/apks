.class public Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;
.super Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;
.source "SourceFile"


# instance fields
.field public r:Landroid/widget/TextView;

.field public s:Landroidx/recyclerview/widget/RecyclerView;

.field public t:Lcom/transsion/onlinevideo/adapter/ChannelHistoryAdapter;

.field public u:Lcom/transsion/utils/CustomPagerSnapHelper;

.field public final v:Lcom/transsion/onlinevideo/a;

.field public final w:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$dimen;->recycler_last_view_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;->q:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$dimen;->recycler_last_view_min_width_for_history:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;->p:I

    new-instance v1, Lcom/transsion/onlinevideo/a;

    iget v2, p0, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;->q:I

    new-instance v3, Lgr4;

    invoke-direct {v3, p0}, Lgr4;-><init>(Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/transsion/onlinevideo/a;-><init>(IILcom/transsion/onlinevideo/a$d;)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->v:Lcom/transsion/onlinevideo/a;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->w:I

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->f(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->g()V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic g()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->b(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 7

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_history_btn:I

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$a;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$a;-><init>(Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_history:I

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTypeList()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_login:I

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTypeList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_history:I

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/onlinevideo/adapter/ChannelHistoryAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/ChannelHistoryAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->t:Lcom/transsion/onlinevideo/adapter/ChannelHistoryAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->u:Lcom/transsion/utils/CustomPagerSnapHelper;

    if-nez v0, :cond_5

    new-instance v0, Lcom/transsion/utils/CustomPagerSnapHelper;

    invoke-direct {v0}, Lcom/transsion/utils/CustomPagerSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->u:Lcom/transsion/utils/CustomPagerSnapHelper;

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getHistoryBeanList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getHistoryBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$layout;->recycler_pull_last_view_for_history:I

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->v:Lcom/transsion/onlinevideo/a;

    iget-object v2, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->t:Lcom/transsion/onlinevideo/adapter/ChannelHistoryAdapter;

    iget-object v4, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v4, v0}, Lcom/transsion/onlinevideo/a;->j(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->t:Lcom/transsion/onlinevideo/adapter/ChannelHistoryAdapter;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTypeList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->t:Lcom/transsion/onlinevideo/adapter/ChannelHistoryAdapter;

    new-instance v1, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$b;

    invoke-direct {v1, p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$b;-><init>(Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "vd_ott_hislog_show"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    :cond_7
    sget p1, Lcom/transsion/onlinevideo/R$id;->tv_login:I

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->r:Landroid/widget/TextView;

    new-instance v0, Lfr4;

    invoke-direct {v0}, Lfr4;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->r:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$string;->login_sync:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$c;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$c;-><init>(Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;)V

    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/magicvideo/R$string;->login_now:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->w:I

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x12

    invoke-virtual {v2, v1, v3, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v2, v4, v3, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->r:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p1, v4}, Lcom/transsion/utils/a;->C(Landroid/content/Context;F)I

    move-result p1

    invoke-direct {v1, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p1

    invoke-virtual {v2, v1, v3, p1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;->b(Z)V

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const-string p0, "vd_ott_history_more_slideinto"

    goto :goto_0

    :cond_0
    const-string p0, "vd_ott_history_more_cl"

    :goto_0
    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method
