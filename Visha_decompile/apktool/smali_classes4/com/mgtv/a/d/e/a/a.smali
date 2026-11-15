.class public Lcom/mgtv/a/d/e/a/a;
.super Lcom/mgtv/a/d/b/c;
.source "SourceFile"


# instance fields
.field public a:Z

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected w:Landroid/widget/TextView;

.field protected x:Landroid/widget/TextView;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mgtv/a/d/b/c;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/d/e/a/a;->a:Z

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/d/e/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic b(Lcom/mgtv/a/d/e/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mgtv/a/d/e/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/d/e/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_template_ad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/mgtv/a/d/e/a/a;->b:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic c(Lcom/mgtv/a/d/e/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/a/d/e/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic e(Lcom/mgtv/a/d/e/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic f(Lcom/mgtv/a/d/e/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic g(Lcom/mgtv/a/d/e/a/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 75
    sget-boolean v0, Lcom/mgmi/ssp/PreRollVideoAd;->isSuportFull:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/mgtv/a/d/e/a/a;->d:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object p0, p0, Lcom/mgtv/a/d/e/a/a;->d:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    .line 79
    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/d/e/a/a;->d:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 6

    .line 21
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 23
    :cond_1
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/a;->a(I)V

    .line 24
    div-int/lit16 p1, p1, 0x3e8

    .line 25
    iget v1, p0, Lcom/mgtv/a/d/b/a;->h:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    if-gez v1, :cond_2

    move v1, v2

    .line 26
    :cond_2
    iget v3, p0, Lcom/mgtv/a/d/b/a;->i:I

    sub-int p1, v3, p1

    .line 27
    iget-boolean v4, p0, Lcom/mgtv/a/d/e/a/a;->a:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    .line 28
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->q:Landroid/view/View;

    invoke-static {p1, v5}, Ll4d;->f(Landroid/view/View;I)Z

    .line 29
    iget-object p1, p0, Lcom/mgtv/a/d/e/a/a;->e:Landroid/widget/TextView;

    invoke-static {p1, v5}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    :cond_3
    if-lez v3, :cond_5

    if-lez p1, :cond_4

    .line 30
    iget-object v3, p0, Lcom/mgtv/a/d/e/a/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/mgmi/R$string;->mgmi_can_close_ad_pre:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->q:Landroid/view/View;

    invoke-static {p1, v5}, Ll4d;->f(Landroid/view/View;I)Z

    .line 32
    iget-object p1, p0, Lcom/mgtv/a/d/e/a/a;->e:Landroid/widget/TextView;

    invoke-static {p1, v2}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    .line 33
    :cond_4
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->q:Landroid/view/View;

    invoke-static {p1, v2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 34
    iget-object p1, p0, Lcom/mgtv/a/d/e/a/a;->e:Landroid/widget/TextView;

    invoke-static {p1, v5}, Ll4d;->f(Landroid/view/View;I)Z

    .line 35
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    if-eqz p1, :cond_d

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setTvAdCountDownText(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getVip_show()I

    move-result p1

    if-ne p1, v0, :cond_6

    move p1, v0

    goto :goto_1

    :cond_6
    move p1, v2

    .line 38
    :goto_1
    iget-boolean v3, p0, Lcom/mgtv/a/d/e/a/a;->z:Z

    if-eq p1, v3, :cond_7

    .line 39
    iput-boolean p1, p0, Lcom/mgtv/a/d/e/a/a;->z:Z

    .line 40
    iput-boolean v2, p0, Lcom/mgtv/a/d/e/a/a;->y:Z

    .line 41
    :cond_7
    iget-boolean v3, p0, Lcom/mgtv/a/d/e/a/a;->y:Z

    if-nez v3, :cond_d

    .line 42
    iput-boolean v0, p0, Lcom/mgtv/a/d/e/a/a;->y:Z

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 43
    iget-boolean p1, p0, Lcom/mgtv/a/d/e/a/a;->a:Z

    if-eqz p1, :cond_8

    goto :goto_2

    .line 44
    :cond_8
    invoke-static {}, Lcom/mgmi/f/e;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 45
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_template_ad:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setTvAdSkipText(Ljava/lang/String;)V

    goto :goto_3

    .line 47
    :cond_9
    invoke-static {}, Lcom/mgmi/f/e;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 48
    invoke-virtual {p0}, Lcom/mgtv/a/d/e/a/a;->f()V

    .line 49
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_player_ad_skip:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setTvAdSkipText(Ljava/lang/String;)V

    goto :goto_3

    .line 50
    :cond_a
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_template_ad:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setTvAdSkipText(Ljava/lang/String;)V

    goto :goto_3

    .line 52
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-boolean p1, p0, Lcom/mgtv/a/d/e/a/a;->a:Z

    if-eqz p1, :cond_c

    .line 54
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    invoke-virtual {p1, v1}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setTvAdSkipText(Ljava/lang/String;)V

    goto :goto_3

    .line 55
    :cond_c
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_template_ad:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setTvAdSkipText(Ljava/lang/String;)V

    .line 56
    :goto_3
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget v0, Lcom/mgmi/R$layout;->mgmi_player_ad_skipview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 5
    sget v0, Lcom/mgmi/R$id;->top_count_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    .line 6
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->llBackView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    .line 7
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->ivAdLarge:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/a/d/e/a/a;->d:Landroid/widget/ImageView;

    .line 8
    new-instance v0, Lcom/mgtv/a/d/e/a/a$1;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/e/a/a$1;-><init>(Lcom/mgtv/a/d/e/a/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->mgmi_ad_dec:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/e/a/a;->b:Landroid/widget/TextView;

    .line 10
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->tvAdDetail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/e/a/a;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 12
    iget-object p1, p0, Lcom/mgtv/a/d/e/a/a;->c:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->r:Landroid/view/View;

    .line 13
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->canSkippre:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/e/a/a;->e:Landroid/widget/TextView;

    .line 14
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->skipAdnow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->q:Landroid/view/View;

    .line 15
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    invoke-virtual {p1, v0}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setIvAdVoiceVisible(I)V

    .line 17
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->tvAdtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/e/a/a;->f:Landroid/widget/TextView;

    .line 18
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->tvAdContent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/e/a/a;->w:Landroid/widget/TextView;

    .line 19
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->tvAdDetail_pic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/e/a/a;->x:Landroid/widget/TextView;

    .line 20
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/e/a/a;->e(Lcom/mgmi/model/VASTAd;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .line 57
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/a;->a(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/mgtv/a/d/e/a/a;->a()V

    .line 59
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/f/e;->g()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 61
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_6

    .line 62
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 64
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v0

    :goto_0
    cmpl-float v3, v2, v1

    if-eqz v3, :cond_2

    cmpl-float v3, v0, v1

    if-nez v3, :cond_4

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-static {}, Lcom/mgmi/platform/e;->d()I

    move-result v0

    int-to-float v2, v0

    .line 68
    invoke-static {}, Lcom/mgmi/platform/e;->e()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    .line 69
    :cond_3
    invoke-static {}, Lcom/mgmi/platform/e;->f()I

    move-result v0

    int-to-float v2, v0

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v0, v3

    .line 70
    :cond_4
    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " vh ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " sw = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_6

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_6

    float-to-int v1, v2

    int-to-float v2, v1

    const v4, 0x3fe38e39

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v5, v2

    cmpl-float v5, v5, v0

    if-lez v5, :cond_5

    float-to-int v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, v4

    float-to-int v1, v0

    .line 71
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vm = w = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " h = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    :try_start_0
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/a;->b(I)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/e/a/a;->a(I)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/e/a/a;->d(Lcom/mgmi/model/VASTAd;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/mgtv/a/d/e/a/a;->a:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/mgtv/a/d/e/a/a;->y:Z

    return-void
.end method

.method public d(Lcom/mgmi/model/VASTAd;)V
    .locals 6

    .line 2
    iget-boolean v0, p0, Lcom/mgtv/a/d/e/a/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4
    iget-object v2, p0, Lcom/mgtv/a/d/e/a/a;->x:Landroid/widget/TextView;

    if-nez v2, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {v2, v0}, Ll4d;->f(Landroid/view/View;I)Z

    .line 6
    iget-object v3, p0, Lcom/mgtv/a/d/e/a/a;->c:Landroid/widget/TextView;

    invoke-static {v3, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 7
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 10
    iget-object v5, p0, Lcom/mgtv/a/d/e/a/a;->f:Landroid/widget/TextView;

    invoke-static {v5, v0}, Ll4d;->f(Landroid/view/View;I)Z

    .line 11
    iget-object v5, p0, Lcom/mgtv/a/d/e/a/a;->f:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 12
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v4, p0, Lcom/mgtv/a/d/e/a/a;->f:Landroid/widget/TextView;

    invoke-static {v4, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 14
    :cond_3
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 15
    iget-object v4, p0, Lcom/mgtv/a/d/e/a/a;->w:Landroid/widget/TextView;

    invoke-static {v4, v0}, Ll4d;->f(Landroid/view/View;I)Z

    .line 16
    iget-object v4, p0, Lcom/mgtv/a/d/e/a/a;->w:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v3, p0, Lcom/mgtv/a/d/e/a/a;->w:Landroid/widget/TextView;

    invoke-static {v3, v1}, Ll4d;->f(Landroid/view/View;I)Z

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    .line 18
    :cond_5
    iget-object v2, p0, Lcom/mgtv/a/d/e/a/a;->c:Landroid/widget/TextView;

    .line 19
    invoke-static {v2, v0}, Ll4d;->f(Landroid/view/View;I)Z

    .line 20
    iget-object v3, p0, Lcom/mgtv/a/d/e/a/a;->x:Landroid/widget/TextView;

    invoke-static {v3, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 21
    iget-object v3, p0, Lcom/mgtv/a/d/e/a/a;->w:Landroid/widget/TextView;

    invoke-static {v3, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 22
    iget-object v3, p0, Lcom/mgtv/a/d/e/a/a;->f:Landroid/widget/TextView;

    invoke-static {v3, v1}, Ll4d;->f(Landroid/view/View;I)Z

    move v3, v0

    .line 23
    :goto_2
    iput-object v2, p0, Lcom/mgtv/a/d/b/a;->r:Landroid/view/View;

    if-nez v2, :cond_6

    return-void

    .line 24
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz p1, :cond_b

    if-eqz v4, :cond_b

    .line 25
    :try_start_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getClk_btn()I

    move-result v5

    invoke-virtual {p0, v5, v0}, Lcom/mgtv/a/d/b/a;->a(II)V

    if-eqz v3, :cond_7

    .line 26
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_8

    .line 28
    invoke-virtual {p0, v4}, Lcom/mgmi/model/Clicks;->getDeepLink(Landroid/content/Context;)Ljava/lang/String;

    :cond_8
    if-eqz p0, :cond_a

    .line 29
    invoke-virtual {p0}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 30
    invoke-virtual {p0, v4}, Lcom/mgmi/model/Clicks;->getClickText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 32
    sget p0, Lcom/mgmi/R$string;->mgmi_player_learn_More_ext:I

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 33
    :cond_9
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 34
    :cond_a
    invoke-static {v2, v1}, Ll4d;->f(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 35
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_5
    return-void
.end method

.method public e(Lcom/mgmi/model/VASTAd;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/e/a/a;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isShowAdLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/d/e/a/a;->b:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mgtv/a/d/e/a/a;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/mgtv/a/d/b/a;->f()V

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/mgtv/a/d/e/a/a$2;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/e/a/a$2;-><init>(Lcom/mgtv/a/d/e/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mgmi/ssp/PreRollVideoAd;->isSupportClose:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    new-instance v1, Lcom/mgtv/a/d/e/a/a$3;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/e/a/a$3;-><init>(Lcom/mgtv/a/d/e/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method
