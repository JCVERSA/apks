.class public Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;
.super Lcom/mbridge/msdk/video/module/MBridgeBaseView;
.source "source.java"


# instance fields
.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private e()Z
    .locals 5

    .line 1
    const-string v0, "mbridge_rl_content"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findID(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->m:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const-string v0, "mbridge_iv_vastclose"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findID(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->n:Landroid/view/View;

    .line 26
    .line 27
    const-string v0, "mbridge_iv_vastok"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findID(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->o:Landroid/view/View;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->m:Landroid/view/ViewGroup;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->n:Landroid/view/View;

    .line 42
    .line 43
    const/4 v3, 0x3

    .line 44
    new-array v3, v3, [Landroid/view/View;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    aput-object v1, v3, v4

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    aput-object v2, v3, v1

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    aput-object v0, v3, v1

    .line 54
    .line 55
    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->isNotNULL([Landroid/view/View;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    return v0
.end method

.method private f()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setMatchParent()V

    .line 6
    .line 7
    .line 8
    const-string v0, "mbridge_reward_endcard_vast_bg"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findColor(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->m:Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 28
    .line 29
    const/16 v1, 0xd

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method protected d()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->d()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->n:Landroid/view/View;

    .line 9
    .line 10
    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView$a;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView$a;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->o:Landroid/view/View;

    .line 19
    .line 20
    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView$b;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView$b;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string p1, "mbridge_reward_endcard_vast"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findLayout(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->c:Landroid/view/LayoutInflater;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->e()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->d()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->f()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public notifyShowListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 2
    .line 3
    const/16 v1, 0x6f

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V
    .locals 0

    .line 1
    return-void
.end method
