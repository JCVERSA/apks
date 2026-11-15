.class public Lcom/hunantv/media/widget/debug/DebugPanel;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;,
        Lcom/hunantv/media/widget/debug/DebugPanel$OnEnableListener;,
        Lcom/hunantv/media/widget/debug/DebugPanel$Setting;
    }
.end annotation


# static fields
.field public static sReportLogOpen:Z

.field private static sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;


# instance fields
.field baseInfoScrollLayout:Landroid/widget/ScrollView;

.field baseInfoText:Ljava/lang/String;

.field baseInfoTextView:Landroid/widget/TextView;

.field keyInfoData:[B

.field private mBroadCastReceiver:Lcom/hunantv/media/widget/debug/TestBroadCastReceiver;

.field private mContext:Landroid/content/Context;

.field private mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

.field private mPtsListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;

.field private mPtsTextView:Landroid/widget/TextView;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mScrollLayout:Landroid/widget/ScrollView;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    invoke-direct {v0}, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;-><init>()V

    sput-object v0, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hunantv/media/widget/IVideoView;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mUrl:Ljava/lang/String;

    new-instance v0, Lcom/hunantv/media/widget/debug/TestBroadCastReceiver;

    invoke-direct {v0}, Lcom/hunantv/media/widget/debug/TestBroadCastReceiver;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mBroadCastReceiver:Lcom/hunantv/media/widget/debug/TestBroadCastReceiver;

    new-instance v0, Lcom/hunantv/media/widget/debug/DebugPanel$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$1;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mPtsListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoText:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/widget/debug/DebugPanel;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mScrollLayout:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/hunantv/media/widget/debug/DebugPanel;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mPtsTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/widget/IVideoView;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/widget/debug/DebugPanel;)Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mPtsListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/hunantv/media/widget/debug/DebugPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->reset()V

    return-void
.end method

.method public static synthetic access$500(Lcom/hunantv/media/widget/debug/DebugPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->registerLocalBroadCast()V

    return-void
.end method

.method public static synthetic access$600(Lcom/hunantv/media/widget/debug/DebugPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->unregisterLocalBroadCast()V

    return-void
.end method

.method public static synthetic access$700()Lcom/hunantv/media/widget/debug/DebugPanel$Setting;
    .locals 1

    sget-object v0, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    return-object v0
.end method

.method public static synthetic access$800(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/widget/Button;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/debug/DebugPanel;->setButtonSelect(Landroid/widget/Button;Z)V

    return-void
.end method

.method private createBtn(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;
    .locals 0

    new-instance p0, Landroid/widget/Button;

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private createEnableLayout(Ljava/lang/String;ZLcom/hunantv/media/widget/debug/DebugPanel$OnEnableListener;)V
    .locals 2

    const-string v0, "\u5173\u95ed"

    const-string v1, "\u6253\u5f00"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/hunantv/media/widget/debug/DebugPanel$31;

    invoke-direct {v1, p0, p3}, Lcom/hunantv/media/widget/debug/DebugPanel$31;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;Lcom/hunantv/media/widget/debug/DebugPanel$OnEnableListener;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    return-void
.end method

.method private createNewLinear(Ljava/lang/String;Ljava/util/List;)Landroid/widget/LinearLayout;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    new-instance v6, Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6, v5, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v0

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz p3, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/RadioGroup;->check(I)V

    :cond_2
    new-instance p2, Lcom/hunantv/media/widget/debug/DebugPanel$32;

    invoke-direct {p2, p0, p4, v4}, Lcom/hunantv/media/widget/debug/DebugPanel$32;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;Ljava/util/List;)V

    invoke-virtual {v2, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-array p2, v0, [Landroid/view/View;

    aput-object v2, p2, v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createNewLinear(Ljava/lang/String;Ljava/util/List;)Landroid/widget/LinearLayout;

    :cond_3
    :goto_1
    return-void
.end method

.method private init()V
    .locals 7

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Lcom/hunantv/media/widget/debug/DebugPanel$2;

    invoke-direct {v1, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$2;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5237\u5e27"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/hunantv/media/widget/debug/DebugPanel$3;

    invoke-direct {v3, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$3;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, v1}, Lcom/hunantv/media/widget/debug/DebugPanel;->initBaseInfoLayout(Landroid/widget/LinearLayout;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mPtsTextView:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mPtsTextView:Landroid/widget/TextView;

    const/high16 v3, -0x10000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mPtsTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mPtsTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41c80000    # 25.0f

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mPtsTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mScrollLayout:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->initContent(Landroid/widget/LinearLayout;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mScrollLayout:Landroid/widget/ScrollView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mScrollLayout:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initABTestView()V
    .locals 4

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getsGlobalNetPlayConfig()Lcom/hunantv/media/config/NetPlayConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/hunantv/media/config/NetPlayConfig;->player_support:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    const-string v2, "\u8bbe\u7f6e"

    invoke-direct {p0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createBtn(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$15;

    invoke-direct {v2, p0, v0}, Lcom/hunantv/media/widget/debug/DebugPanel$15;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "AB\u6d4b\u503c(play_support):"

    invoke-direct {p0, v1, v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->createNewLinear(Ljava/lang/String;Ljava/util/List;)Landroid/widget/LinearLayout;

    return-void
.end method

.method private initAccSeekView()V
    .locals 3

    sget-object v0, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-boolean v0, v0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->enableAccSeek:Z

    new-instance v1, Lcom/hunantv/media/widget/debug/DebugPanel$28;

    invoke-direct {v1, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$28;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v2, "\u7cbe\u51c6seek:"

    invoke-direct {p0, v2, v0, v1}, Lcom/hunantv/media/widget/debug/DebugPanel;->createEnableLayout(Ljava/lang/String;ZLcom/hunantv/media/widget/debug/DebugPanel$OnEnableListener;)V

    return-void
.end method

.method private initAddrInfoView()V
    .locals 4

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getsGlobalNetPlayConfig()Lcom/hunantv/media/config/NetPlayConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/hunantv/media/config/NetPlayConfig;->addrinfo_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    const-string v2, "\u8bbe\u7f6e"

    invoke-direct {p0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createBtn(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$14;

    invoke-direct {v2, p0, v0}, Lcom/hunantv/media/widget/debug/DebugPanel$14;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "addrinfo_type:"

    invoke-direct {p0, v1, v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->createNewLinear(Ljava/lang/String;Ljava/util/List;)Landroid/widget/LinearLayout;

    return-void
.end method

.method private initAntiShakeView()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-boolean v0, v0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->isAntiViewShake:Z

    const-string v1, "close"

    const-string v2, "open"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$24;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$24;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v3, "\u6297\u6296:"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    :cond_0
    return-void
.end method

.method private initAspectRatioView()V
    .locals 4

    sget-object v0, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget v0, v0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->aspectRatios:I

    const-string v1, "FIT_PARENT"

    const-string v2, "FILL_PARENT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$25;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$25;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v3, "\u64ad\u653e\u6bd4\u4f8b:"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    return-void
.end method

.method private initBackPlayView()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->isBackPlayEnable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "\u6253\u5f00"

    const-string v2, "\u5173\u95ed"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$9;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$9;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v3, "\u80cc\u666f\u64ad\u653e:"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    :cond_0
    return-void
.end method

.method private initBaseInfoLayout(Landroid/widget/LinearLayout;)V
    .locals 4

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u57fa\u672c\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/hunantv/media/widget/debug/DebugPanel$6;

    invoke-direct {v1, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$6;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoScrollLayout:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoScrollLayout:Landroid/widget/ScrollView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoTextView:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoScrollLayout:Landroid/widget/ScrollView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->baseInfoScrollLayout:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initContent(Landroid/widget/LinearLayout;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initKeyInfoView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initAddrInfoView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initABTestView()V

    sget-boolean p1, Lcom/hunantv/media/widget/debug/DebugPanel;->sReportLogOpen:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->registerLocalBroadCast()V

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    const-string v2, "\u91cd\u7f6e"

    invoke-direct {p0, p1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createBtn(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$4;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$4;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v2, v1, [Landroid/view/View;

    aput-object p1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v2, "\u6062\u590d\u9ed8\u8ba4:"

    invoke-direct {p0, v2, p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->createNewLinear(Ljava/lang/String;Ljava/util/List;)Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    const-string v2, "\u6253\u5f00"

    invoke-direct {p0, p1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createBtn(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$5;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$5;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v1, v1, [Landroid/view/View;

    aput-object p1, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "\u4e0a\u62a5\u65e5\u5fd7:"

    invoke-direct {p0, v0, p1}, Lcom/hunantv/media/widget/debug/DebugPanel;->createNewLinear(Ljava/lang/String;Ljava/util/List;)Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initDRMHTTPSView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initBackPlayView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initMediaCodecSwView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initOppoSRView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initOppoOSIEView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initEnhanceView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initEnhanceFilterView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initDisplayFloatRect()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initDnsView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initFileStartTimeView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initSourceSelectView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initAspectRatioView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initPlaySpeedView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initAccSeekView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initTsSkipErrView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initPreparedStartModeView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initForceHttpDnsView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initAntiShakeView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initDnsFamilyTypeView()V

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->setSetting()V

    return-void
.end method

.method private initDRMHTTPSView()V
    .locals 4

    invoke-static {}, Lcom/hunantv/media/report/b/a;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "\u5141\u8bb8"

    const-string v2, "\u5173\u95ed"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$8;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$8;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v3, "DRM HTTPS\u6293\u5305:"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    return-void
.end method

.method private initDisplayFloatRect()V
    .locals 13

    new-instance v7, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v0, "0.0f"

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v0, "0.5f"

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v0, "1.0f"

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    const-string v1, "\u8bbe\u7f6e"

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/widget/debug/DebugPanel;->createBtn(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v11

    new-instance v12, Lcom/hunantv/media/widget/debug/DebugPanel$17;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/hunantv/media/widget/debug/DebugPanel$17;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    const/4 v1, 0x2

    aput-object v9, v0, v1

    const/4 v1, 0x3

    aput-object v10, v0, v1

    const/4 v1, 0x4

    aput-object v11, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "DNS\u503c(ltx-lty-rbx-rby):"

    invoke-direct {p0, v1, v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->createNewLinear(Ljava/lang/String;Ljava/util/List;)Landroid/widget/LinearLayout;

    return-void
.end method

.method private initDnsFamilyTypeView()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getDnsFamilyType()I

    move-result v0

    const-string v1, "ONLY_IPV4"

    const-string v2, "ONLY_IPV6"

    const-string v3, "DEFAULT"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$30;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$30;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v3, "DnsFamily:"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    return-void
.end method

.method private initDnsView()V
    .locals 4

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget v2, v2, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->addrInfoTypeInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    const-string v2, "\u8bbe\u7f6e"

    invoke-direct {p0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createBtn(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$16;

    invoke-direct {v2, p0, v0}, Lcom/hunantv/media/widget/debug/DebugPanel$16;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "DNS\u503c:"

    invoke-direct {p0, v1, v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->createNewLinear(Ljava/lang/String;Ljava/util/List;)Landroid/widget/LinearLayout;

    return-void
.end method

.method private initEnhanceFilterView()V
    .locals 4

    sget-object v0, Lcom/hunantv/media/widget/debug/DebugPanel$33;->$SwitchMap$com$hunantv$media$widget$IVideoView$RenderFilter:[I

    sget-object v1, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-object v1, v1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->renderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v0, "\u5168\u5c4f"

    const-string v2, "\u534a\u5c4f"

    const-string v3, "\u6b63\u5e38"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$21;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$21;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v3, "\u56fe\u50cf\u589e\u5f3a:"

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    return-void
.end method

.method private initEnhanceView()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    const-string v1, "Debug"

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/widget/debug/DebugPanel;->createBtn(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    sget-boolean v1, Lcom/hunantv/media/player/d/a/a/a;->h:Z

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/widget/debug/DebugPanel;->setButtonSelect(Landroid/widget/Button;Z)V

    new-instance v1, Lcom/hunantv/media/widget/debug/DebugPanel$20;

    invoke-direct {v1, p0, v0}, Lcom/hunantv/media/widget/debug/DebugPanel$20;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "\u56fe\u50cf\u589e\u5f3aShader\u66ff\u6362:"

    invoke-direct {p0, v1, v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->createNewLinear(Ljava/lang/String;Ljava/util/List;)Landroid/widget/LinearLayout;

    return-void
.end method

.method private initFileStartTimeView()V
    .locals 4

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget v2, v2, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->fileStartTimeFloatS:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    const-string v2, "\u8bbe\u7f6e"

    invoke-direct {p0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createBtn(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$13;

    invoke-direct {v2, p0, v0}, Lcom/hunantv/media/widget/debug/DebugPanel$13;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "FileStartTime:"

    invoke-direct {p0, v1, v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->createNewLinear(Ljava/lang/String;Ljava/util/List;)Landroid/widget/LinearLayout;

    return-void
.end method

.method private initForceHttpDnsView()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-boolean v0, v0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->isForceHttpDns:Z

    const-string v1, "close"

    const-string v2, "open"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$23;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$23;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v3, "httpdns:"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    :cond_0
    return-void
.end method

.method private initKeyInfoView()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->isKeyInfoDataSet()Z

    move-result v0

    const-string v1, "enable"

    const-string v2, "disable"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$18;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$18;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v3, "KeyInfo:"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    :cond_0
    return-void
.end method

.method private initMediaCodecSwView()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->isMediaCodecSWEnable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "\u6253\u5f00"

    const-string v2, "\u5173\u95ed"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$10;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$10;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v3, "\u8f6f\u6e32\u67d3:"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    :cond_0
    return-void
.end method

.method private initOppoOSIEView()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    const-string v0, "\u6253\u5f00"

    const-string v1, "\u5173\u95ed"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/hunantv/media/widget/debug/DebugPanel$12;

    invoke-direct {v1, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$12;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v2, "oppo_osie:"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    :cond_0
    return-void
.end method

.method private initOppoSRView()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    const-string v0, "\u6253\u5f00"

    const-string v1, "\u5173\u95ed"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/hunantv/media/widget/debug/DebugPanel$11;

    invoke-direct {v1, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$11;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v2, "oppo_sr:"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    :cond_0
    return-void
.end method

.method private initPlaySpeedView()V
    .locals 4

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget v2, v2, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->playSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mContext:Landroid/content/Context;

    const-string v2, "\u8bbe\u7f6e"

    invoke-direct {p0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createBtn(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$27;

    invoke-direct {v2, p0, v0}, Lcom/hunantv/media/widget/debug/DebugPanel$27;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "\u500d\u901f\u64ad\u653e:"

    invoke-direct {p0, v1, v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->createNewLinear(Ljava/lang/String;Ljava/util/List;)Landroid/widget/LinearLayout;

    return-void
.end method

.method private initPreparedStartModeView()V
    .locals 5

    sget-object v0, Lcom/hunantv/media/widget/debug/DebugPanel$33;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode:[I

    sget-object v1, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-object v1, v1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->prepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v0, "LOADDATA"

    const-string v2, "LOAD_DISAV"

    const-string v3, "DEFAULT"

    const-string v4, "AUTOPLAY"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$22;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$22;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v3, "Prepared\u6a21\u5f0f:"

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    return-void
.end method

.method private initRenderTypeView()V
    .locals 4

    sget-object v0, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget v0, v0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->renderType:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "SurfaceView"

    const-string v2, "TextureView"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$26;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$26;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v3, "\u6e32\u67d3\u7c7b\u578b:"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    return-void
.end method

.method private initSourceSelectView()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-boolean v0, v0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->openImgods:Z

    const-string v1, "ffmpegDS"

    const-string v2, "curlDS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/hunantv/media/widget/debug/DebugPanel$19;

    invoke-direct {v2, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$19;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v3, "\u6570\u636e\u6a21\u5757:"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V

    :cond_0
    return-void
.end method

.method private initTsSkipErrView()V
    .locals 3

    sget-object v0, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-boolean v0, v0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->enableTsSkipError:Z

    new-instance v1, Lcom/hunantv/media/widget/debug/DebugPanel$29;

    invoke-direct {v1, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$29;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    const-string v2, "ts\u8df3\u8fc7\u5f02\u5e38:"

    invoke-direct {p0, v2, v0, v1}, Lcom/hunantv/media/widget/debug/DebugPanel;->createEnableLayout(Ljava/lang/String;ZLcom/hunantv/media/widget/debug/DebugPanel$OnEnableListener;)V

    return-void
.end method

.method private registerLocalBroadCast()V
    .locals 0

    return-void
.end method

.method private reset()V
    .locals 1

    new-instance v0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    invoke-direct {v0}, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;-><init>()V

    sput-object v0, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->setSetting()V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mRootLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/hunantv/media/widget/debug/DebugPanel;->initContent(Landroid/widget/LinearLayout;)V

    :cond_0
    return-void
.end method

.method private setButtonSelect(Landroid/widget/Button;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "#FF8B18"

    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_0
    const-string p0, "#000000"

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setSetting()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getAddrInfoTypeInt()I

    move-result v0

    iput v0, v1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->addrInfoTypeInt:I

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    sget-object v1, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-object v1, v1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->renderFilter:Lcom/hunantv/media/widget/IVideoView$RenderFilter;

    invoke-interface {v0, v1}, Lcom/hunantv/media/widget/IVideoView;->setRenderFilter(Lcom/hunantv/media/widget/IVideoView$RenderFilter;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    sget-object v1, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget v1, v1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->addrInfoTypeInt:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/hunantv/media/widget/IVideoView;->setNetAddrinfo(II)V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    sget-object v1, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-boolean v1, v1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->openImgods:Z

    invoke-interface {v0, v1}, Lcom/hunantv/media/widget/IVideoView;->openImgoDSModule(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    sget-object v1, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget v1, v1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->aspectRatios:I

    invoke-interface {v0, v1}, Lcom/hunantv/media/widget/IVideoView;->setAspectRatio(I)V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    sget-object v1, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget v1, v1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->playSpeed:F

    invoke-interface {v0, v1}, Lcom/hunantv/media/widget/IVideoView;->setPlaybackSpeed(F)V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    sget-object v1, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-boolean v1, v1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->enableAccSeek:Z

    invoke-interface {v0, v1}, Lcom/hunantv/media/widget/IVideoView;->setAccurateSeekEnable(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    sget-object v1, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-boolean v1, v1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->enableTsSkipError:Z

    invoke-interface {v0, v1}, Lcom/hunantv/media/widget/IVideoView;->enableTsSkipError(Z)V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    sget-object v1, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-object v1, v1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->prepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-interface {v0, v1}, Lcom/hunantv/media/widget/IVideoView;->setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    sget-object v1, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-boolean v1, v1, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->isForceHttpDns:Z

    invoke-interface {v0, v1}, Lcom/hunantv/media/widget/IVideoView;->setForceHttpDns(Z)V

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mMgtvVideoView:Lcom/hunantv/media/widget/IVideoView;

    sget-object v0, Lcom/hunantv/media/widget/debug/DebugPanel;->sSetting:Lcom/hunantv/media/widget/debug/DebugPanel$Setting;

    iget-boolean v0, v0, Lcom/hunantv/media/widget/debug/DebugPanel$Setting;->isAntiViewShake:Z

    invoke-interface {p0, v0}, Lcom/hunantv/media/widget/IVideoView;->setAntiViewShake(Z)V

    :cond_0
    return-void
.end method

.method private unregisterLocalBroadCast()V
    .locals 0

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/widget/debug/DebugPanel;->unregisterLocalBroadCast()V

    return-void
.end method

.method public updateBaseInfoText()V
    .locals 1

    new-instance v0, Lcom/hunantv/media/widget/debug/DebugPanel$7;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/debug/DebugPanel$7;-><init>(Lcom/hunantv/media/widget/debug/DebugPanel;)V

    invoke-static {v0}, Lcom/hunantv/media/player/utils/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updatePts(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mPtsTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel;->mPtsTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
