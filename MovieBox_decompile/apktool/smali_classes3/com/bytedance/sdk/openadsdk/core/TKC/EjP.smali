.class public Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;
.super Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;,
        Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;
    }
.end annotation


# instance fields
.field private Dq:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

.field protected EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private Fmk:Ljava/lang/String;

.field HiB:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private final Jcg:Z

.field protected Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

.field private final TEQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private Ym:Z

.field private final Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aa:Z

.field protected final sP:Landroid/content/Context;

.field private sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field private uA:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

.field private uvD:Z

.field protected final vS:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    .line 10
    .line 11
    const-string v0, "banner_ad"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS:Landroid/view/View$OnAttachStateChangeListener;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 37
    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Jcg:Z

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uvD:Z

    .line 42
    .line 43
    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;
    .locals 2

    .line 66
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private Sj(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/Jcg;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 68
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 70
    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/core/Jcg;

    if-eqz v3, :cond_1

    .line 71
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/Jcg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private Sj(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    .line 46
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    if-eqz p4, :cond_0

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_1

    .line 49
    const-string p5, "dynamic_show_type"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    move-result v0

    invoke-virtual {p4, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {p2, p4, p3}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p1, :cond_2

    .line 51
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    const-string p5, "width"

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string p5, "height"

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string p5, "alpha"

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p2, p5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :catchall_0
    :try_start_2
    const-string p5, "root_view"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    invoke-static {p3, p2, p4}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 57
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    const-string p2, "PAGBannerAdImpl"

    const-string p4, "onShowFun json error"

    invoke-static {p2, p4}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Dq:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    if-eqz p2, :cond_3

    .line 60
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result p4

    invoke-interface {p2, p1, p4}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onAdShow(Landroid/view/View;I)V

    .line 61
    :cond_3
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eI()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 62
    invoke-static {p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/view/View;)V

    .line 63
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->getCurView()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 64
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->getCurView()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ()V

    .line 65
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->getCurView()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq()V

    :cond_5
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/Jcg;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    .line 44
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/Jcg;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Jcg;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method private Sj(ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UmR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Hs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Jcg(Z)V

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->at()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/WMZ;)V

    .line 43
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;

    invoke-direct {v0, p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$sP;-><init>(ZLcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uvD:Z

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uvD:Z

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Dq:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    return-object p0
.end method

.method private TKC()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP()V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uA:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP(ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v2, :cond_1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 15
    :goto_1
    const-string v0, "PAGBannerAdImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private sP(ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TEQ:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 9
    :goto_0
    const-string p2, "PAGBannerAdImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;
    .locals 1

    .line 72
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V

    return-object v0
.end method

.method public Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method protected Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 11
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 9
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uA:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ib;->Sj()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    move-result-object v7

    .line 13
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClosedListenerKey(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setBannerClickClosedListener(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    .line 15
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/sP/TKC;)V

    .line 16
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Jcg:Z

    const/4 v8, 0x1

    if-nez v1, :cond_2

    .line 17
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/Jcg;

    move-result-object v1

    if-nez v1, :cond_1

    .line 18
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Jcg;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/Jcg;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    move-object v9, v1

    .line 20
    new-instance v10, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, v9

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Jcg;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->setCallback(Lcom/bytedance/sdk/openadsdk/core/Jcg$Sj;)V

    goto :goto_0

    .line 21
    :cond_2
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    const/4 v0, 0x0

    invoke-static {p1, v8, v8, v9, v0}, Lcom/bytedance/sdk/openadsdk/utils/Wjd;->Sj(Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/utils/Wjd$sP;Ljava/util/List;)V

    move-object v9, v0

    .line 22
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    .line 24
    :cond_3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v1, v0, p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/uA;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    .line 25
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    .line 26
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/api/PangleAd;)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uA:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    .line 28
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;)V

    .line 29
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/Dq/uA;)V

    .line 30
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Fmk:Ljava/lang/String;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    .line 32
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/api/PangleAd;)V

    .line 33
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$6;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;)V

    .line 34
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    instance-of v1, p2, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    if-eqz v1, :cond_4

    .line 35
    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->getVideoController()Lw5/b;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lw5/b;)V

    .line 36
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->uA:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    .line 37
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;)V

    .line 38
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Jcg:Z

    if-nez p1, :cond_5

    .line 39
    invoke-virtual {v9, v8}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->setNeedCheckingShow(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->TKC()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS:Landroid/view/View$OnAttachStateChangeListener;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :catchall_0
    :cond_0
    return-void
.end method

.method public getBannerSize()Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    float-to-int v1, v1

    .line 14
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    float-to-int v2, v2

    .line 21
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;-><init>(II)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;-><init>(II)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    .line 14
    .line 15
    return-object v0
.end method

.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    const-string v0, "PAGBannerAdImpl"

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->aa:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    .line 7
    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/LqL;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->aa:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public sP()V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(J)V

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->sP()V

    return-void
.end method

.method public setAdInteractionCallback(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/HiB;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Dq:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/HiB;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Dq:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Ym:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/LqL;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/Double;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Ym:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method
