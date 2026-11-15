.class public Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final SPEED_CHANGING_1:I = 0x0

.field public static final SPEED_CHANGING_2:I = 0x1

.field public static final SPEED_CHANGING_3:I = 0x2

.field public static final SPEED_CHANGING_4:I = 0x3

.field public static final SPEED_FIXED:I = -0x1


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflated:Z

.field private mSpeedAdapter:Lcom/transsion/vishaplayersdk/adapter/SpeedAdapter;

.field private mSpeedRv:Landroidx/recyclerview/widget/RecyclerView;

.field private mSpeedState:I

.field private mSpeedTv:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->list:Ljava/util/List;

    const/4 v0, -0x2

    .line 3
    iput v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedState:I

    .line 4
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->list:Ljava/util/List;

    const/4 p2, -0x2

    .line 7
    iput p2, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedState:I

    .line 8
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->list:Ljava/util/List;

    const/4 p2, -0x2

    .line 11
    iput p2, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedState:I

    .line 12
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->list:Ljava/util/List;

    const/4 p2, -0x2

    .line 15
    iput p2, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedState:I

    .line 16
    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ensureInflated()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mInflated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mInflated:Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mContext:Landroid/content/Context;

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/vishaplayersdk/R$layout;->online_player_speed_choose_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->tv_play_speed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedTv:Landroid/view/View;

    sget v1, Lcom/transsion/vishaplayersdk/R$id;->rv_speed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->initSpeedRecyclerView()V

    return-void
.end method

.method private initSpeedRecyclerView()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/vishaplayersdk/adapter/SpeedAdapter;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/adapter/SpeedAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedAdapter:Lcom/transsion/vishaplayersdk/adapter/SpeedAdapter;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$string;->online_play_speed_circle_3_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$string;->online_play_speed_circle_2_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$string;->online_play_speed_circle_1_5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/vishaplayersdk/R$string;->online_play_speed_circle_1_25:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedAdapter:Lcom/transsion/vishaplayersdk/adapter/SpeedAdapter;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->list:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public changeChildVisible(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->ensureInflated()V

    const/4 v0, -0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/vishaplayersdk/R$drawable;->speed_chooser_view_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedAdapter:Lcom/transsion/vishaplayersdk/adapter/SpeedAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/vishaplayersdk/adapter/SpeedAdapter;->setSelectedItemPosition(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedAdapter:Lcom/transsion/vishaplayersdk/adapter/SpeedAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedTv:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedTv:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/transsion/vishaplayersdk/R$color;->transparent:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->ensureInflated()V

    return-void
.end method

.method public setSpeedState(I)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->ensureInflated()V

    iget v0, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->mSpeedState:I

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/widgets/VideoPlayerSpeedChooserView;->changeChildVisible(I)V

    :cond_0
    return-void
.end method
