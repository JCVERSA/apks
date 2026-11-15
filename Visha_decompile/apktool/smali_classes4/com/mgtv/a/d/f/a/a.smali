.class public Lcom/mgtv/a/d/f/a/a;
.super Lcom/mgtv/a/d/b/c;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:Z

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mgtv/a/d/b/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/a/d/f/a/a;->a:I

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/d/f/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/a/d/f/a/a;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/f/a/a;->f(I)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/a/d/f/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/a/d/f/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/a/d/f/a/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/f/a/a;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic e(Lcom/mgtv/a/d/f/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method private f(I)V
    .locals 2

    iget v0, p0, Lcom/mgtv/a/d/f/a/a;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/f/a/a;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v1, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/f/a/a;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v1, Lcom/mgmi/R$drawable;->mgmi_icon_ad_voice_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/mgtv/a/d/f/a/a;->a:I

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/mgtv/a/d/b/d;->a(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 5
    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getAdStyle()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mgtv/a/d/f/a/a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgmi/R$layout;->mgmi_super_pauseview_control:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgmi/R$layout;->mgmi_pauseview_control:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 8
    sget v0, Lcom/mgmi/R$id;->tv_pause_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/f/a/a;->d:Landroid/widget/TextView;

    .line 9
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->closeAdIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->mgmi_ad_voice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/a/d/f/a/a;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 12
    new-instance v0, Lcom/mgtv/a/d/f/a/a$1;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/f/a/a$1;-><init>(Lcom/mgtv/a/d/f/a/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/f/a/a;->e(Lcom/mgmi/model/VASTAd;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/f/a/a;->d(Lcom/mgmi/model/VASTAd;)V

    return-void
.end method

.method public d(Lcom/mgmi/model/VASTAd;)V
    .locals 3

    .line 2
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/a;->b(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isMediaVast()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/mgtv/a/d/f/a/a;->e:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Ll4d;->f(Landroid/view/View;I)Z

    const/4 p1, 0x4

    .line 5
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/f/a/a;->f(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/d/f/a/a;->e:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Ll4d;->f(Landroid/view/View;I)Z

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 8
    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isMediaVast()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTMediaFile;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_7

    .line 12
    iget-object v2, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    if-nez v2, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_4

    .line 14
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v2

    .line 15
    :cond_4
    invoke-virtual {p1, v2}, Lcom/mgmi/model/Clicks;->getClickText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 17
    iget-object v0, p0, Lcom/mgtv/a/d/f/a/a;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/mgtv/a/d/f/a/a;->d:Landroid/widget/TextView;

    invoke-static {p1, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 20
    iget-object p1, p0, Lcom/mgtv/a/d/f/a/a;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 21
    new-instance v0, Lcom/mgtv/a/d/f/a/a$3;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/f/a/a$3;-><init>(Lcom/mgtv/a/d/f/a/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 22
    :cond_6
    iget-object p0, p0, Lcom/mgtv/a/d/f/a/a;->d:Landroid/widget/TextView;

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    nop

    :cond_7
    :goto_2
    return-void
.end method

.method public e(Lcom/mgmi/model/VASTAd;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/a;->a(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/mgtv/a/d/f/a/a;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/mgtv/a/d/f/a/a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_adform_dsc:I

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/d/f/a/a;->c:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/mgmi/R$string;->mgmi_template_ad:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mgtv/a/d/f/a/a$2;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/f/a/a$2;-><init>(Lcom/mgtv/a/d/f/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
