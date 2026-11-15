.class public Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/EjP;
.implements Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/sP/EjP<",
        "Landroid/view/View;",
        ">;",
        "Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;"
    }
.end annotation


# instance fields
.field private Dq:Landroid/widget/FrameLayout;

.field private EjP:Ljava/lang/String;

.field private Fmk:I

.field private final HiB:Landroid/content/Context;

.field private final Jcg:I

.field Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final TEQ:I

.field private TKC:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private Ym:Ljava/lang/String;

.field private Zq:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

.field private aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

.field private sP:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

.field private sef:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

.field private uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final vS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IILjava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Ym:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    if-eqz p5, :cond_0

    .line 21
    .line 22
    const-string p5, "fullscreen_interstitial_ad"

    .line 23
    .line 24
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Ym:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    .line 27
    .line 28
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->vS:I

    .line 29
    .line 30
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Jcg:I

    .line 31
    .line 32
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 33
    .line 34
    const/high16 p2, 0x40400000    # 3.0f

    .line 35
    .line 36
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->TEQ:I

    .line 41
    .line 42
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Fmk:I

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->vS()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private Dq()Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->sP()Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Ym:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    .line 41
    .line 42
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .line 44
    const/4 v2, -0x1

    .line 45
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    .line 52
    .line 53
    return-object v0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Ym:Ljava/lang/String;

    return-object p0
.end method

.method private Jcg()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    .line 11
    const/4 v2, -0x2

    .line 12
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    .line 26
    .line 27
    const/high16 v3, 0x41a00000    # 20.0f

    .line 28
    .line 29
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 34
    .line 35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 42
    .line 43
    const v2, 0x800053

    .line 44
    .line 45
    .line 46
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->TEQ:I

    .line 50
    .line 51
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 52
    .line 53
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj$1;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;)Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    return-object p0
.end method

.method private vS()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    .line 20
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->vS:I

    .line 21
    .line 22
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Jcg:I

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->vS:I

    .line 28
    .line 29
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 30
    .line 31
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Jcg:I

    .line 32
    .line 33
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 34
    .line 35
    const/16 v1, 0x11

    .line 36
    .line 37
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 38
    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq()Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Jcg()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    const/high16 v2, -0x1000000

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    .line 78
    .line 79
    check-cast v2, Landroid/app/Activity;

    .line 80
    .line 81
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Snq:I

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    sget-object v3, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    .line 88
    .line 89
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    sget-object v2, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    instance-of v3, v1, Landroid/app/Activity;

    .line 102
    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    check-cast v1, Landroid/app/Activity;

    .line 106
    .line 107
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->IPx:I

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    .line 119
    .line 120
    check-cast v1, Landroid/app/Activity;

    .line 121
    .line 122
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TT:I

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_3

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    .line 3
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sP:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    .line 4
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sef:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uvD()V

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public HiB()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public Sj(II)V
    .locals 1

    .line 19
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sef:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    if-eqz p2, :cond_0

    .line 20
    const-string v0, "render fail"

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/view/View;I)V
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Zq:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz p1, :cond_0

    .line 18
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    const/16 v1, 0x6a

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sef:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TX()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    const-string v0, "dsp data is null"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->sU()V

    return-void

    .line 10
    :cond_3
    :goto_0
    const-string v0, "material null"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->nru()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Ljava/lang/String;Ljava/util/List;)V

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Zq:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/uP;)V
    .locals 1

    .line 11
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    if-eqz v0, :cond_0

    .line 12
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sP:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    :cond_0
    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->EjP:Ljava/lang/String;

    return-void
.end method

.method public TKC()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    return v0
.end method

.method public e_()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sef:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/sP/sef;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sef;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    .line 15
    .line 16
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->vS:I

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-double v1, v1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(D)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    .line 28
    .line 29
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Jcg:I

    .line 30
    .line 31
    int-to-float v2, v2

    .line 32
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    int-to-double v1, v1

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP(D)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sef:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public sP()Landroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
