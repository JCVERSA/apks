.class public abstract Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;
.super Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$Sj;
    }
.end annotation


# instance fields
.field public Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/sP;

.field protected Ym:Ljava/lang/String;

.field private Zq:Lcom/bytedance/sdk/openadsdk/aa/vS;

.field protected aa:Lcom/bytedance/sdk/openadsdk/core/sP/HiB;

.field public sef:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected static Sj(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 2

    .line 142
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 143
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Ym:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    const/high16 p0, -0x1000000

    .line 144
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 146
    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 147
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private Sj(JJ)V
    .locals 3

    sub-long p1, p3, p1

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    if-eqz v2, :cond_0

    .line 90
    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->sP(JJ)V

    return-void

    .line 91
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    if-eqz v1, :cond_1

    .line 92
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/HiB;->Sj(JJ)V

    :cond_1
    return-void
.end method

.method static Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 10

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    iget-boolean v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Uc:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v1, :cond_3

    .line 95
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 96
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TEQ:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 97
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v6

    .line 99
    iget-object v7, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_0

    .line 100
    iget-object v7, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 101
    invoke-virtual {v7}, La6/b;->r()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 102
    :cond_0
    iget-object v7, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 103
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v8, 0x0

    .line 104
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v8

    .line 105
    :cond_1
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 106
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 107
    sget v9, Lcom/bytedance/sdk/openadsdk/utils/Zq;->roy:I

    invoke-virtual {v7, v9}, Landroid/view/View;->setId(I)V

    .line 108
    invoke-virtual {v7, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 109
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 110
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move-object v7, v3

    .line 111
    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;-><init>(Landroid/content/Context;)V

    .line 113
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/Zq;->aa:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 114
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x50

    .line 115
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$3;

    invoke-direct {v6, p1, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 118
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 119
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Fmk:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 120
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_3
    iget-boolean v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xhi:Z

    if-eqz v1, :cond_4

    .line 124
    new-instance v1, Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {v1, v0, v4}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;Z)V

    .line 125
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/Zq;->sef:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    const/4 v6, 0x2

    .line 126
    invoke-virtual {v1, v6, v3}, Lcom/bytedance/sdk/component/uA/vS;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v3, 0x4

    .line 127
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    .line 128
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 130
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Zq:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 131
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 134
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 135
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->yfI:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 136
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    :cond_4
    new-instance p1, Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {p1, v0, v4}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;Z)V

    .line 139
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/Zq;->uvD:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 140
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    .line 141
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public Dq()Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public EjP()Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$Sj;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public Fmk()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract HiB()Z
.end method

.method public abstract Jcg()V
.end method

.method protected LqL()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public RiZ()V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(I)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, v0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(ZZZI)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EjP:Z

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    const/16 v0, 0x2710

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Sj(I)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 12

    .line 24
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_11

    const/16 v2, 0x190

    const/4 v3, 0x0

    if-eq v0, v2, :cond_10

    const/16 v1, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_c

    const/16 v1, 0x258

    if-eq v0, v1, :cond_b

    const-wide/16 v4, 0x3e8

    .line 25
    const-string v1, "s"

    const/16 v6, 0x2bc

    if-eq v0, v6, :cond_6

    const/16 v6, 0x320

    if-eq v0, v6, :cond_4

    const/16 v2, 0x384

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->zR:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    .line 27
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Yf()D

    move-result-wide v6

    int-to-long v8, p1

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v6

    double-to-long v10, v10

    .line 29
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(JJ)V

    if-lez p1, :cond_2

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->sP()V

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v9, p1, 0x3e8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->HiB(Z)V

    .line 33
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 34
    iput v2, v0, Landroid/os/Message;->what:I

    add-int/lit16 v1, p1, -0x3e8

    .line 35
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 36
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iput v1, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uA:I

    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->TEQ:Lcom/bytedance/sdk/component/utils/LqL;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    cmpl-double v1, v6, v1

    if-lez v1, :cond_1

    .line 39
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    div-double/2addr v1, v6

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    double-to-float p1, v3

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(F)V

    :cond_1
    return-void

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->TEQ:Lcom/bytedance/sdk/component/utils/LqL;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Zq()V

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 43
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    if-eqz p1, :cond_3

    instance-of p1, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    if-eqz p1, :cond_3

    .line 44
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    :cond_3
    return-void

    .line 45
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC(Z)V

    .line 47
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Sj(F)V

    .line 48
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TT()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TzV:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 49
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef()V

    return-void

    .line 50
    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->dx:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    if-lez p1, :cond_7

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->sP()V

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v7, p1, 0x3e8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->HiB(Z)V

    .line 55
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 56
    iput v6, v0, Landroid/os/Message;->what:I

    add-int/lit16 p1, p1, -0x3e8

    .line 57
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 58
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Dq:I

    add-int/lit16 v1, v1, -0x3e8

    iput v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Dq:I

    .line 59
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->TEQ:Lcom/bytedance/sdk/component/utils/LqL;

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 60
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->TEQ:Lcom/bytedance/sdk/component/utils/LqL;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->uA(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Jcg()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    .line 63
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->kF()V

    return-void

    .line 64
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Zq()V

    return-void

    .line 65
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Zq()V

    goto/16 :goto_2

    .line 66
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Zq()V

    return-void

    .line 67
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC(Z)V

    .line 69
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TEQ()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 70
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->Fmk()V

    .line 72
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->resumeTimers()V

    .line 73
    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TEQ()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 74
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(F)V

    .line 75
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Sj(F)V

    .line 76
    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TT()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TzV:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 77
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef()V

    return-void

    .line 78
    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef()V

    const/4 p1, 0x3

    .line 79
    invoke-virtual {p0, v3, v1, v3, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(ZZZI)V

    return-void

    .line 80
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    if-eqz v0, :cond_12

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    if-eqz v0, :cond_12

    .line 81
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->dx()V

    goto :goto_1

    .line 82
    :cond_12
    sget p1, Lcom/bytedance/sdk/openadsdk/EjP/sP$sP;->sP:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(I)V

    .line 83
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->LqL()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->LqL()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(II)V

    .line 84
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 85
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;)V

    .line 86
    :cond_13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Zq:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    if-eqz p1, :cond_14

    .line 87
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ()V

    :cond_14
    :goto_2
    return-void

    .line 88
    :cond_15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->kF()V

    return-void
.end method

.method public abstract Sj(Landroid/widget/FrameLayout;)V
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;)V
    .locals 3

    .line 12
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Zq:Lcom/bytedance/sdk/openadsdk/aa/vS;

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->TKC()V

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result p1

    if-nez p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->LqL()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->ley()V

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->LqL()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->sP()V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->TEQ:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v0, 0x1f4

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->MuB:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Sj(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->uP()V

    .line 23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Jcg()V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Lcom/bytedance/sdk/component/utils/LqL;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Lcom/bytedance/sdk/component/utils/LqL;)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Uc:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->aa()V

    :cond_1
    return-void
.end method

.method public Sj(ZZZI)V
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p0

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->Sj(ZZZLcom/bytedance/sdk/openadsdk/component/reward/sP/sP;I)V

    return-void
.end method

.method public TEQ()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FPG()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x5

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TT:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method protected TzV()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 13
    .line 14
    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Jcg:Z

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->dx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 27
    .line 28
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Dq:I

    .line 29
    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/16 v2, 0x2bc

    .line 40
    .line 41
    iput v2, v0, Landroid/os/Message;->what:I

    .line 42
    .line 43
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 44
    .line 45
    iget v3, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Dq:I

    .line 46
    .line 47
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 48
    .line 49
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 55
    .line 56
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uA:I

    .line 57
    .line 58
    if-lez v2, :cond_2

    .line 59
    .line 60
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->zR:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/16 v1, 0x384

    .line 73
    .line 74
    iput v1, v0, Landroid/os/Message;->what:I

    .line 75
    .line 76
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 77
    .line 78
    iget v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uA:I

    .line 79
    .line 80
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 81
    .line 82
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method

.method public Ym()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ley:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EjP:Z

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->sP()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->Sj()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 35
    .line 36
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Jcg:Z

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->aa()V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->WMZ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj()V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Zq()V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/4 v1, 0x4

    .line 94
    const/4 v2, 0x1

    .line 95
    const/4 v3, 0x0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TEQ()Lcom/bytedance/sdk/component/uA/vS;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/high16 v4, -0x1000000

    .line 107
    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 114
    .line 115
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 116
    .line 117
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym()Lcom/bytedance/sdk/component/uA/vS;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 125
    .line 126
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 127
    .line 128
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC(Z)V

    .line 129
    .line 130
    .line 131
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 132
    .line 133
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 134
    .line 135
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_3

    .line 140
    .line 141
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 142
    .line 143
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->EjP()V

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 152
    .line 153
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym()Lcom/bytedance/sdk/component/uA/vS;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 160
    .line 161
    .line 162
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 165
    .line 166
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_4

    .line 171
    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->EjP()V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TEQ()Lcom/bytedance/sdk/component/uA/vS;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 188
    .line 189
    .line 190
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 191
    .line 192
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 193
    .line 194
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_7

    .line 199
    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 201
    .line 202
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 203
    .line 204
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_7

    .line 209
    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 211
    .line 212
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 213
    .line 214
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_5

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 222
    .line 223
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 224
    .line 225
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    .line 226
    .line 227
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->IOh:I

    .line 228
    .line 229
    int-to-float v0, v0

    .line 230
    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 235
    .line 236
    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    .line 237
    .line 238
    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->pfr:I

    .line 239
    .line 240
    int-to-float v4, v4

    .line 241
    invoke-static {v5, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    invoke-virtual {v1, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Sj(II)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 249
    .line 250
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kF:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;

    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->Sj()V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 256
    .line 257
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_6

    .line 264
    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 266
    .line 267
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 268
    .line 269
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Z)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 273
    .line 274
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB()V

    .line 277
    .line 278
    .line 279
    sget v0, Lcom/bytedance/sdk/openadsdk/EjP/sP$sP;->TKC:I

    .line 280
    .line 281
    invoke-virtual {p0, v3, v3, v3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(ZZZI)V

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 286
    .line 287
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->cX:Z

    .line 288
    .line 289
    if-eqz v1, :cond_7

    .line 290
    .line 291
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 292
    .line 293
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Sj(I)V

    .line 294
    .line 295
    .line 296
    :cond_7
    :goto_0
    return-void
.end method

.method public Zq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Jcg:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->HiB()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ir:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 31
    .line 32
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 37
    .line 38
    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    :cond_2
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->HiB(I)V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public aa()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    .line 4
    .line 5
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Fmk:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->sef:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 21
    .line 22
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/Fmk;

    .line 23
    .line 24
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 25
    .line 26
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 27
    .line 28
    const-string v4, "landingpage_endcard"

    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/common/Fmk;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aNB:Lcom/bytedance/sdk/openadsdk/common/Fmk;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aNB:Lcom/bytedance/sdk/openadsdk/common/Fmk;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/Fmk;->TKC()Landroid/widget/ImageView;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$1;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->sef:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aNB:Lcom/bytedance/sdk/openadsdk/common/Fmk;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/common/Fmk;->HiB()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .line 63
    const/4 v3, -0x1

    .line 64
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aNB:Lcom/bytedance/sdk/openadsdk/common/Fmk;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/common/Fmk;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public dNu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xD()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->TzV()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj()V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Sj()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public dx()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->uvD()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->fF:Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj()I

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Jcg()I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 33
    .line 34
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 39
    .line 40
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$2;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public ib()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 6
    .line 7
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->dx(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_9

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 21
    .line 22
    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EjP:Z

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 39
    .line 40
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(Ljava/lang/String;Z)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-ltz v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 75
    .line 76
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    .line 77
    .line 78
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TEQ(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 100
    .line 101
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(Ljava/lang/String;Z)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-ltz v0, :cond_4

    .line 122
    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    goto :goto_0

    .line 132
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 137
    .line 138
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    .line 139
    .line 140
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->RiZ(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 149
    .line 150
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 151
    .line 152
    if-eqz v1, :cond_5

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->uA()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_5

    .line 159
    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 163
    .line 164
    if-eqz v0, :cond_9

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 175
    .line 176
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_6

    .line 183
    .line 184
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 185
    .line 186
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 187
    .line 188
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_9

    .line 193
    .line 194
    :cond_6
    const/4 v1, -0x1

    .line 195
    if-eq v0, v1, :cond_9

    .line 196
    .line 197
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 198
    .line 199
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 200
    .line 201
    if-eqz v1, :cond_7

    .line 202
    .line 203
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq()J

    .line 204
    .line 205
    .line 206
    move-result-wide v1

    .line 207
    int-to-long v3, v0

    .line 208
    const-wide/16 v5, 0x3e8

    .line 209
    .line 210
    mul-long/2addr v3, v5

    .line 211
    cmp-long v1, v1, v3

    .line 212
    .line 213
    if-gez v1, :cond_8

    .line 214
    .line 215
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 216
    .line 217
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 218
    .line 219
    if-eqz v1, :cond_9

    .line 220
    .line 221
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP(I)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_9

    .line 226
    .line 227
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 228
    .line 229
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 230
    .line 231
    if-eqz v0, :cond_9

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP()V

    .line 234
    .line 235
    .line 236
    :cond_9
    return-void
.end method

.method public kF()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->HiB(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final ley()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Zq()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 20
    .line 21
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EjP:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-string v1, "reward_endcard"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string v1, "fullscreen_endcard"

    .line 29
    .line 30
    :goto_0
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Zq:Lcom/bytedance/sdk/openadsdk/aa/vS;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    .line 35
    .line 36
    invoke-virtual {v2, v3, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Zq:Lcom/bytedance/sdk/openadsdk/aa/vS;

    .line 44
    .line 45
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 46
    .line 47
    invoke-virtual {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 51
    .line 52
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    .line 55
    .line 56
    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public sU()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->qRN:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->qRN:Z

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 14
    .line 15
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TEQ()V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->uvD()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->uvD()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->zR:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->dx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->sP()V

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public sef()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public uA()Landroid/view/View;
    .locals 9

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->IPx:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->sP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const v2, 0x1f00000c

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 30
    .line 31
    const/4 v3, -0x2

    .line 32
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    const v4, 0x800035

    .line 36
    .line 37
    .line 38
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 39
    .line 40
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 41
    .line 42
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 43
    .line 44
    const/high16 v5, 0x41a00000    # 20.0f

    .line 45
    .line 46
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 51
    .line 52
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 53
    .line 54
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 55
    .line 56
    const/high16 v5, 0x41800000    # 16.0f

    .line 57
    .line 58
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 70
    .line 71
    const-string v4, "tt_ad_close_text"

    .line 72
    .line 73
    invoke-static {v2, v4}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    const/16 v2, 0x8

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 86
    .line 87
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 88
    .line 89
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 90
    .line 91
    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const v4, 0x1f00003d

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 99
    .line 100
    .line 101
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 102
    .line 103
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 104
    .line 105
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 106
    .line 107
    const/high16 v6, 0x41600000    # 14.0f

    .line 108
    .line 109
    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-direct {v4, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 114
    .line 115
    .line 116
    const v5, 0x800053

    .line 117
    .line 118
    .line 119
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 120
    .line 121
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    .line 123
    .line 124
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 125
    .line 126
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 127
    .line 128
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 129
    .line 130
    invoke-direct {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Ss:I

    .line 134
    .line 135
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 136
    .line 137
    .line 138
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 139
    .line 140
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 141
    .line 142
    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 143
    .line 144
    const/high16 v8, 0x42000000    # 32.0f

    .line 145
    .line 146
    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 151
    .line 152
    iget-object v8, v8, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 153
    .line 154
    invoke-static {v8, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    invoke-direct {v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 159
    .line 160
    .line 161
    const v6, 0x800055

    .line 162
    .line 163
    .line 164
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 165
    .line 166
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .line 168
    .line 169
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 170
    .line 171
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 172
    .line 173
    const/high16 v6, 0x41100000    # 9.0f

    .line 174
    .line 175
    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 180
    .line 181
    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 182
    .line 183
    invoke-static {v7, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    const/4 v7, 0x0

    .line 188
    invoke-virtual {v4, v5, v7, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setPadding(IIII)V

    .line 189
    .line 190
    .line 191
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 192
    .line 193
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 194
    .line 195
    .line 196
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    .line 197
    .line 198
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 199
    .line 200
    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 201
    .line 202
    invoke-direct {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/Zq;->ewz:I

    .line 206
    .line 207
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 208
    .line 209
    .line 210
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 211
    .line 212
    const/4 v7, -0x1

    .line 213
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    .line 218
    .line 219
    const/4 v6, 0x1

    .line 220
    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    .line 234
    .line 235
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 236
    .line 237
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 238
    .line 239
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tR()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_0

    .line 244
    .line 245
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 246
    .line 247
    iget-boolean v4, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    .line 248
    .line 249
    if-eqz v4, :cond_0

    .line 250
    .line 251
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Sj:I

    .line 252
    .line 253
    if-eq v2, v6, :cond_1

    .line 254
    .line 255
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    .line 256
    .line 257
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 258
    .line 259
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 260
    .line 261
    invoke-direct {v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;-><init>(Landroid/content/Context;)V

    .line 262
    .line 263
    .line 264
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->MGU:I

    .line 265
    .line 266
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 267
    .line 268
    .line 269
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 270
    .line 271
    invoke-direct {v4, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 278
    .line 279
    .line 280
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 281
    .line 282
    .line 283
    return-object v0
.end method

.method public uP()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->TKC()Lcom/bytedance/sdk/openadsdk/core/sP/HiB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->aa:Lcom/bytedance/sdk/openadsdk/core/sP/HiB;

    .line 10
    .line 11
    return-void
.end method

.method public uvD()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->TEQ:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    const/16 v1, 0x12c

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract vS()Z
.end method

.method public wE()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->vS()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Dq;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->sP()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uA()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Sj(JZ)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->TEQ:Lcom/bytedance/sdk/component/utils/LqL;

    .line 39
    .line 40
    const/16 v1, 0x12c

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 46
    .line 47
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 52
    .line 53
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->dx()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    sget v0, Lcom/bytedance/sdk/openadsdk/EjP/sP$sP;->Sj:I

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->LqL()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    xor-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    const/4 v2, 0x4

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(II)V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 99
    .line 100
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dx()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void
.end method

.method public zR()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->vS()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->sef()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->wE()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->HiB()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uvD()V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    sget v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Jcg(I)V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->aa()V

    .line 66
    .line 67
    .line 68
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->TKC()V

    .line 75
    .line 76
    .line 77
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ley:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP()V

    .line 84
    .line 85
    .line 86
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    .line 89
    .line 90
    if-eqz v0, :cond_8

    .line 91
    .line 92
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->TKC()V

    .line 93
    .line 94
    .line 95
    :cond_8
    return-void
.end method
