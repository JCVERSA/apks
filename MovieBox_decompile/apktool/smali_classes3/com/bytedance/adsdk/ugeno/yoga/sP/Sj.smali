.class public Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;
.super Lcom/bytedance/adsdk/ugeno/sP/Sj;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/sP/Sj<",
        "Lcom/bytedance/adsdk/ugeno/yoga/Dq;",
        ">;"
    }
.end annotation


# instance fields
.field private AVc:Lcom/bytedance/adsdk/ugeno/yoga/vS;

.field private RrR:Lcom/bytedance/adsdk/ugeno/yoga/uvD;

.field private SP:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

.field private Xqg:Lcom/bytedance/adsdk/ugeno/yoga/aa;

.field private dLt:Lcom/bytedance/adsdk/ugeno/yoga/sP;

.field private zwV:Lcom/bytedance/adsdk/ugeno/yoga/sP;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/sP/Sj;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/vS;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->AVc:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    .line 7
    .line 8
    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/uvD;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/uvD;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->RrR:Lcom/bytedance/adsdk/ugeno/yoga/uvD;

    .line 11
    .line 12
    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->SP:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    .line 15
    .line 16
    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/sP;->HiB:Lcom/bytedance/adsdk/ugeno/yoga/sP;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->dLt:Lcom/bytedance/adsdk/ugeno/yoga/sP;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->zwV:Lcom/bytedance/adsdk/ugeno/yoga/sP;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    return-object p0
.end method

.method private Sj(Landroid/widget/ImageView;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$2;-><init>(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->jb:F

    return p0
.end method

.method static synthetic vS(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public EjP()Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;
    .locals 1

    .line 2
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;-><init>(Lcom/bytedance/adsdk/ugeno/sP/Sj;)V

    return-object v0
.end method

.method protected Fmk()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->fF:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Xqg:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    .line 6
    .line 7
    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->uA:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    .line 8
    .line 9
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->wE:F

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->JcM:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Xqg:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    .line 19
    .line 20
    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    .line 21
    .line 22
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->ley:F

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->WMZ:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Xqg:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    .line 32
    .line 33
    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    .line 34
    .line 35
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->LqL:F

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Mts:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Xqg:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    .line 45
    .line 46
    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->sP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    .line 47
    .line 48
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Yf:F

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->FPG:Z

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Xqg:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    .line 58
    .line 59
    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    .line 60
    .line 61
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->LD:F

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public synthetic Sj()Landroid/view/View;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->TKC()Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    move-result-object v0

    return-object v0
.end method

.method protected Sj(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 3
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HpB:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Fm:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8
    :goto_1
    new-instance p1, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;-><init>(II)V

    .line 9
    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->Sj()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->vS(F)V

    .line 10
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    instance-of v2, v1, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    if-eqz v2, :cond_2

    .line 11
    check-cast v1, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Sj(Landroid/widget/ImageView;)V

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 18
    invoke-super {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "justifyContent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "flexWrap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "alignContent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "flexDirection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "alignItems"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 20
    :pswitch_0
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->SP:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-void

    .line 21
    :pswitch_1
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/yoga/uvD;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/uvD;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->RrR:Lcom/bytedance/adsdk/ugeno/yoga/uvD;

    return-void

    .line 22
    :pswitch_2
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/yoga/sP;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/sP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->zwV:Lcom/bytedance/adsdk/ugeno/yoga/sP;

    :goto_1
    return-void

    .line 23
    :pswitch_3
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/yoga/vS;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/vS;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->AVc:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    return-void

    .line 24
    :pswitch_4
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/yoga/sP;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/sP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->dLt:Lcom/bytedance/adsdk/ugeno/yoga/sP;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3f600445 -> :sswitch_4
        -0x3a1ff07a -> :sswitch_3
        -0x2cdbca4c -> :sswitch_2
        0x67f69fe3 -> :sswitch_1
        0x6ee75fc9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic TEQ()Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->EjP()Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public TKC()Lcom/bytedance/adsdk/ugeno/yoga/Dq;
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->getYogaNode()Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Xqg:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    return-object v0
.end method

.method public sP()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->sP()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Xqg:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->AVc:Lcom/bytedance/adsdk/ugeno/yoga/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/vS;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Xqg:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->RrR:Lcom/bytedance/adsdk/ugeno/yoga/uvD;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/uvD;)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Xqg:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->SP:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/Jcg;)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Xqg:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->dLt:Lcom/bytedance/adsdk/ugeno/yoga/sP;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/sP;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Xqg:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->zwV:Lcom/bytedance/adsdk/ugeno/yoga/sP;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->TKC(Lcom/bytedance/adsdk/ugeno/yoga/sP;)V

    return-void
.end method

.method protected wE()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ei:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/HiB;->Sj()Lcom/bytedance/adsdk/ugeno/HiB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/HiB;->sP()Lcom/bytedance/adsdk/ugeno/Sj;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->uA:Lcom/bytedance/adsdk/ugeno/core/Dq;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->xD:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v3, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$1;

    .line 18
    .line 19
    invoke-direct {v3, p0}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$1;-><init>(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/Sj$Sj;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/HiB;->Sj()Lcom/bytedance/adsdk/ugeno/HiB;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/HiB;->sP()Lcom/bytedance/adsdk/ugeno/Sj;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->uA:Lcom/bytedance/adsdk/ugeno/core/Dq;

    .line 42
    .line 43
    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->xD:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    move-object v7, v0

    .line 58
    invoke-interface/range {v4 .. v9}, Lcom/bytedance/adsdk/ugeno/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HpB:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Fm:Landroid/widget/ImageView$ScaleType;

    .line 66
    .line 67
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 68
    .line 69
    if-ne v1, v2, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    :goto_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    new-instance v1, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    .line 82
    .line 83
    const/4 v2, -0x1

    .line 84
    invoke-direct {v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;-><init>(II)V

    .line 85
    .line 86
    .line 87
    sget-object v2, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->Sj()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    int-to-float v2, v2

    .line 94
    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->vS(F)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 98
    .line 99
    instance-of v3, v2, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    .line 100
    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    check-cast v2, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    invoke-virtual {v2, v0, v3, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Sj(Landroid/widget/ImageView;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void
.end method
