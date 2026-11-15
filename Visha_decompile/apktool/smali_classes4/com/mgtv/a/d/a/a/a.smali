.class public Lcom/mgtv/a/d/a/a/a;
.super Lcom/mgtv/a/d/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/d/b/a<",
        "Lcom/mgmi/model/VASTChannelAd;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/TextView;

.field private C:Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;

.field private D:Landroid/widget/TextView;

.field private E:Le6d;

.field protected a:I

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/TextView;

.field d:Z

.field protected e:Landroid/animation/ValueAnimator;

.field protected f:Landroid/os/Handler;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mgtv/a/d/b/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgtv/a/d/a/a/a;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/d/a/a/a;->d:Z

    new-instance v0, Lcom/mgtv/a/d/a/a/a$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mgtv/a/d/a/a/a$5;-><init>(Lcom/mgtv/a/d/a/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mgtv/a/d/a/a/a;->f:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Lcom/mgmi/model/VASTAd;Z)Landroid/view/ViewGroup;
    .locals 1

    .line 163
    sget p3, Lcom/mgmi/R$layout;->mgmi_banner_style_feedvideo:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    .line 164
    sget p3, Lcom/mgmi/R$id;->videoarea:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 165
    sget p3, Lcom/mgmi/R$id;->playbutton:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/mgtv/a/d/b/a;->u:Landroid/widget/ImageView;

    .line 166
    sget p3, Lcom/mgmi/R$id;->progressWheel:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->C:Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;

    .line 167
    sget p3, Lcom/mgmi/R$id;->mgmi_feed_wifi_notice:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->D:Landroid/widget/TextView;

    .line 168
    sget p3, Lcom/mgmi/R$id;->mgmi_ad_dec:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    .line 169
    sget p3, Lcom/mgmi/R$id;->buttonDetail:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->B:Landroid/widget/TextView;

    .line 170
    sget p3, Lcom/mgmi/R$id;->tvTitle:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    .line 171
    sget p3, Lcom/mgmi/R$id;->subTvTitle:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    .line 172
    sget p3, Lcom/mgmi/R$id;->bottom_bar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->A:Landroid/view/View;

    if-eqz p3, :cond_0

    .line 173
    new-instance v0, Lcom/mgtv/a/d/a/a/a$2;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/a/a/a$2;-><init>(Lcom/mgtv/a/d/a/a/a;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_0
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 175
    iget-object p3, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 176
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_1
    sget p3, Lcom/mgmi/R$id;->tvAdIcon:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->w:Landroid/view/View;

    .line 178
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 179
    iget-object p3, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 180
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_2
    iget-object p2, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    .line 182
    :cond_3
    iget-object p2, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-static {p2, p3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 183
    :goto_0
    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic a(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/a/d/a/a/a;Le6d;)Le6d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->E:Le6d;

    return-object p1
.end method

.method private a(Landroid/view/LayoutInflater;Lcom/mgmi/model/VASTAd;)V
    .locals 2

    .line 137
    sget v0, Lcom/mgmi/R$layout;->mgmi_banner_style_image_large_icon:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 138
    sget v0, Lcom/mgmi/R$id;->style_ad_ivImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 139
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    .line 140
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->subTvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    .line 141
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->adOrigin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    .line 142
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->tvAdIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->w:Landroid/view/View;

    .line 143
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->buttonDetail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->B:Landroid/widget/TextView;

    .line 144
    invoke-direct {p0, p2}, Lcom/mgtv/a/d/a/a/a;->b(Lcom/mgmi/model/VASTAd;)V

    const/4 p1, 0x2

    .line 145
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/a/a/a;->f(I)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/mgmi/model/VASTAd;)V
    .locals 15

    move-object v0, p0

    .line 184
    iget-object v1, v0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    .line 185
    :cond_0
    iget v1, v0, Lcom/mgtv/a/d/a/a/a;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x434e0000    # 206.0f

    const v7, 0x44388000    # 738.0f

    const/4 v8, -0x1

    const/4 v9, -0x5

    if-eq v1, v4, :cond_1f

    const/4 v10, 0x7

    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v12, 0x41100000    # 9.0f

    if-eq v1, v10, :cond_16

    const/16 v10, 0xc

    if-eq v1, v10, :cond_16

    if-eqz v1, :cond_1f

    if-eq v1, v2, :cond_1f

    const/4 v10, 0x2

    if-eq v1, v10, :cond_b

    const/4 v13, 0x3

    if-eq v1, v13, :cond_b

    const/4 v13, 0x4

    if-eq v1, v13, :cond_1f

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    goto/16 :goto_1a

    .line 186
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getDisplayHeight()I

    move-result v0

    if-eq v0, v9, :cond_3

    if-ne v0, v8, :cond_2

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v0, 0x42800000    # 64.0f

    if-eqz p1, :cond_5

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 189
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v1

    if-lez v1, :cond_4

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v1

    div-int/2addr v1, v10

    int-to-float v1, v1

    invoke-static {v0, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v0

    goto :goto_1

    .line 191
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v0

    goto :goto_1

    .line 192
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v0

    .line 193
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getDisplayWdith()I

    move-result v1

    if-eq v1, v9, :cond_9

    if-ne v1, v8, :cond_6

    goto :goto_3

    .line 194
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v1, v1

    invoke-static {v2, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v2, v1, 0x9

    int-to-float v2, v2

    div-float/2addr v2, v11

    float-to-int v2, v2

    if-ge v0, v2, :cond_7

    mul-int/lit8 v1, v0, 0x10

    int-to-float v1, v1

    div-float/2addr v1, v12

    float-to-int v1, v1

    move v3, v1

    goto :goto_2

    :cond_7
    move v3, v1

    move v0, v2

    :goto_2
    move v14, v3

    move v3, v0

    move v0, v14

    goto :goto_4

    :cond_8
    move v0, v3

    move v3, v8

    goto :goto_4

    :cond_9
    :goto_3
    if-lez v0, :cond_a

    mul-int/lit8 v1, v0, 0x10

    int-to-float v1, v1

    div-float/2addr v1, v12

    float-to-int v3, v1

    goto :goto_2

    :cond_a
    move v0, v3

    :goto_4
    if-eqz v3, :cond_2a

    if-eqz v0, :cond_2a

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1a

    :cond_b
    if-eqz p1, :cond_2a

    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 198
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getDisplayWdith()I

    move-result v0

    if-eq v0, v9, :cond_d

    if-ne v0, v8, :cond_c

    goto :goto_5

    .line 199
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v0

    goto :goto_6

    :cond_d
    :goto_5
    move v0, v3

    .line 200
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getDisplayHeight()I

    move-result v1

    if-eq v1, v9, :cond_13

    if-ne v1, v8, :cond_e

    goto/16 :goto_c

    .line 201
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v1, v1

    invoke-static {v2, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v1

    if-nez v0, :cond_10

    if-lez v1, :cond_15

    .line 202
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v0

    if-lez v0, :cond_f

    int-to-float v0, v1

    mul-float/2addr v0, v5

    .line 203
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_7
    float-to-int v3, v0

    goto/16 :goto_e

    :cond_f
    :goto_8
    int-to-float v0, v1

    mul-float/2addr v0, v7

    div-float/2addr v0, v6

    goto :goto_7

    :cond_10
    if-lez v0, :cond_15

    .line 204
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v2

    if-lez v2, :cond_11

    int-to-float v2, v0

    mul-float/2addr v2, v5

    .line 205
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 206
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    :goto_9
    float-to-int v2, v2

    move v3, v2

    goto :goto_a

    :cond_11
    int-to-float v2, v0

    mul-float/2addr v2, v6

    div-float/2addr v2, v7

    goto :goto_9

    :goto_a
    if-le v3, v1, :cond_12

    if-lez v1, :cond_12

    goto :goto_8

    :cond_12
    :goto_b
    move v1, v3

    move v3, v0

    goto :goto_e

    :cond_13
    :goto_c
    if-lez v0, :cond_15

    .line 208
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v1

    if-lez v1, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v1

    if-lez v1, :cond_14

    int-to-float v1, v0

    mul-float/2addr v1, v5

    .line 209
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 210
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_d
    float-to-int v3, v1

    goto :goto_b

    :cond_14
    int-to-float v1, v0

    mul-float/2addr v1, v6

    div-float/2addr v1, v7

    goto :goto_d

    :cond_15
    move v1, v3

    :goto_e
    if-eqz v3, :cond_2a

    if-eqz v1, :cond_2a

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1a

    :cond_16
    if-eqz p1, :cond_2a

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 215
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getDisplayWdith()I

    move-result v1

    if-eq v1, v9, :cond_18

    if-ne v1, v8, :cond_17

    goto :goto_f

    .line 216
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v2, v1

    invoke-static {v0, v2}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v0

    goto :goto_11

    .line 217
    :cond_18
    :goto_f
    iget-object v2, v0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_10

    :cond_19
    invoke-virtual {p0}, Lcom/mgtv/a/d/a/a/a;->a()I

    move-result v2

    :goto_10
    if-nez v2, :cond_1a

    .line 218
    invoke-virtual {p0}, Lcom/mgtv/a/d/a/a/a;->a()I

    move-result v0

    goto :goto_11

    :cond_1a
    move v0, v2

    .line 219
    :goto_11
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getDisplayHeight()I

    move-result v2

    if-eq v2, v4, :cond_1d

    if-ne v2, v9, :cond_1b

    goto :goto_12

    .line 220
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v1, v1

    invoke-static {v2, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v1

    if-lez v1, :cond_1e

    mul-int/lit8 v2, v1, 0x10

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-int v2, v2

    if-ge v0, v2, :cond_1c

    mul-int/lit8 v1, v0, 0x9

    int-to-float v1, v1

    div-float/2addr v1, v11

    float-to-int v1, v1

    move v4, v1

    goto :goto_13

    :cond_1c
    move v4, v1

    move v0, v2

    goto :goto_13

    :cond_1d
    :goto_12
    if-lez v0, :cond_1e

    mul-int/lit8 v1, v0, 0x9

    int-to-float v1, v1

    div-float/2addr v1, v11

    float-to-int v4, v1

    :cond_1e
    :goto_13
    if-eqz v4, :cond_2a

    if-eqz v0, :cond_2a

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1a

    :cond_1f
    if-eqz p1, :cond_2a

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 224
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getDisplayWdith()I

    move-result v1

    if-eq v1, v9, :cond_21

    if-ne v1, v8, :cond_20

    goto :goto_14

    .line 225
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, v1

    invoke-static {v0, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v0

    move v2, v3

    goto :goto_16

    .line 226
    :cond_21
    :goto_14
    iget-object v1, v0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_15

    :cond_22
    invoke-virtual {p0}, Lcom/mgtv/a/d/a/a/a;->a()I

    move-result v1

    :goto_15
    if-nez v1, :cond_23

    .line 227
    invoke-virtual {p0}, Lcom/mgtv/a/d/a/a/a;->a()I

    move-result v0

    goto :goto_16

    :cond_23
    move v0, v1

    .line 228
    :goto_16
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getDisplayHeight()I

    move-result v1

    if-eq v1, v9, :cond_27

    if-ne v1, v4, :cond_24

    goto :goto_17

    .line 229
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    int-to-float v1, v1

    invoke-static {v4, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v1

    .line 230
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v4

    if-lez v4, :cond_25

    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v4

    if-lez v4, :cond_25

    int-to-float v2, v0

    mul-float/2addr v2, v5

    .line 231
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 232
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v3

    .line 233
    invoke-virtual {v3}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v3, v2

    if-le v3, v1, :cond_29

    int-to-float v0, v1

    mul-float/2addr v0, v5

    .line 234
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 235
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    .line 236
    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    move v3, v1

    goto :goto_19

    :cond_25
    int-to-float v4, v0

    mul-float/2addr v4, v6

    div-float/2addr v4, v7

    float-to-int v4, v4

    if-le v4, v1, :cond_26

    if-nez v2, :cond_29

    int-to-float v0, v1

    mul-float/2addr v0, v7

    div-float/2addr v0, v6

    float-to-int v0, v0

    goto :goto_19

    :cond_26
    move v3, v4

    goto :goto_19

    .line 237
    :cond_27
    :goto_17
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v1

    if-lez v1, :cond_28

    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v1

    if-lez v1, :cond_28

    int-to-float v1, v0

    mul-float/2addr v1, v5

    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 239
    invoke-virtual/range {p2 .. p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v2

    .line 240
    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_18
    float-to-int v3, v1

    goto :goto_19

    :cond_28
    int-to-float v1, v0

    mul-float/2addr v1, v6

    div-float/2addr v1, v7

    goto :goto_18

    :cond_29
    :goto_19
    if-eqz v0, :cond_2a

    if-eqz v3, :cond_2a

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2a
    :goto_1a
    return-void
.end method

.method private a(Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 245
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isShowAdLog()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 247
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 248
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 249
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private a(Lcom/mgmi/model/VASTAd;Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;)V
    .locals 5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 101
    :cond_0
    sget v0, Lcom/mgmi/R$id;->tvTitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/mgmi/R$id;->subTvTitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    sget v1, Lcom/mgmi/R$id;->tvAdIcon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 104
    sget v2, Lcom/mgmi/R$id;->ll_left_bottom:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 105
    iget-object v2, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 108
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {v0, v2}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {v0, v3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 111
    :goto_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 112
    iget-object p1, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    invoke-static {p1, v3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 113
    invoke-static {v0, v3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 114
    invoke-static {v1, v2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 115
    invoke-static {p2, v3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 116
    iget-object p1, p0, Lcom/mgtv/a/d/a/a/a;->A:Landroid/view/View;

    invoke-static {p1, v3}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_1

    .line 117
    :cond_3
    invoke-static {v1, v3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 118
    iget-object p1, p0, Lcom/mgtv/a/d/a/a/a;->A:Landroid/view/View;

    invoke-static {p1, v2}, Ll4d;->f(Landroid/view/View;I)Z

    :goto_1
    if-eqz v1, :cond_4

    .line 119
    new-instance p1, Lcom/mgtv/a/d/a/a/a$11;

    invoke-direct {p1, p0, v1}, Lcom/mgtv/a/d/a/a/a$11;-><init>(Lcom/mgtv/a/d/a/a/a;Landroid/view/View;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 120
    new-instance p1, Lcom/mgtv/a/d/a/a/a$12;

    invoke-direct {p1, p0, p2}, Lcom/mgtv/a/d/a/a/a$12;-><init>(Lcom/mgtv/a/d/a/a/a;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/mgmi/model/VASTAd;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 152
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    invoke-static {v0, v2}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_1

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 156
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 157
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 158
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    invoke-static {v0, v2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 159
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_6

    .line 160
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 161
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    .line 162
    :cond_5
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    invoke-static {p0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public static synthetic b(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method private b(Landroid/view/LayoutInflater;Lcom/mgmi/model/VASTAd;Z)V
    .locals 6

    .line 15
    sget p3, Lcom/mgmi/R$layout;->mgmi_banner_style_video_16:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    .line 16
    sget p3, Lcom/mgmi/R$id;->videoarea:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 17
    sget p3, Lcom/mgmi/R$id;->playbutton:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/mgtv/a/d/b/a;->u:Landroid/widget/ImageView;

    .line 18
    new-instance v0, Lcom/mgtv/a/d/a/a/a$3;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/a/a/a$3;-><init>(Lcom/mgtv/a/d/a/a/a;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    sget p3, Lcom/mgmi/R$id;->progressWheel:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->C:Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;

    .line 20
    sget p3, Lcom/mgmi/R$id;->mgmi_feed_wifi_notice:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->D:Landroid/widget/TextView;

    .line 21
    sget p3, Lcom/mgmi/R$id;->buttonDetail:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    .line 22
    sget p3, Lcom/mgmi/R$id;->buttonDetail_parent:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 23
    sget v0, Lcom/mgmi/R$id;->imgv_buttonDetail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 24
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 25
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v1

    .line 26
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mgmi/model/Clicks;->getClickText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 27
    iget-object v5, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 28
    iget-object v5, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mgmi/model/Clicks;->isDonwloadType(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mgmi/model/Clicks;->isFileDownload(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    sget v1, Lcom/mgmi/R$drawable;->icon_immer_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 32
    :cond_0
    sget v1, Lcom/mgmi/R$drawable;->icon_immer_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    :cond_1
    :goto_0
    invoke-static {p3, v2}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p3, v3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 35
    iget-object p3, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    invoke-static {p3, v3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 36
    :cond_3
    :goto_1
    sget p3, Lcom/mgmi/R$id;->tvTitle:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    .line 37
    sget p3, Lcom/mgmi/R$id;->tvTitle2:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    .line 38
    sget p3, Lcom/mgmi/R$id;->bottom_bar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 39
    new-instance v0, Lcom/mgtv/a/d/a/a/a$4;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/a/a/a$4;-><init>(Lcom/mgtv/a/d/a/a/a;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :cond_4
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_5

    .line 41
    iput-boolean v0, p0, Lcom/mgtv/a/d/a/a/a;->d:Z

    .line 42
    iget-object p3, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    if-eqz p3, :cond_5

    .line 43
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_5
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 45
    iput-boolean v0, p0, Lcom/mgtv/a/d/a/a/a;->d:Z

    .line 46
    iget-object p3, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    if-eqz p3, :cond_6

    .line 47
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_6
    iget-object p2, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    invoke-static {p2, v2}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_2

    .line 49
    :cond_7
    iget-object p2, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    invoke-static {p2, v3}, Ll4d;->f(Landroid/view/View;I)Z

    .line 50
    :goto_2
    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    return-void
.end method

.method private b(Lcom/mgmi/model/VASTAd;)V
    .locals 1

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/mgtv/a/d/a/a/a;->a(Lcom/mgmi/model/VASTAd;Z)V

    return-void
.end method

.method private static c(Lcom/mgmi/model/VASTAd;)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p0, :cond_10

    .line 2
    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    const-string v2, "text/html"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x2

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getStyle()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "14"

    const-string v4, "12"

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 7
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    :goto_0
    move v0, v5

    goto/16 :goto_1

    :cond_4
    if-eqz v1, :cond_10

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto/16 :goto_1

    .line 9
    :cond_5
    const-string p0, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 10
    :cond_6
    const-string p0, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    .line 11
    :cond_7
    const-string p0, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v0, 0x2

    goto :goto_1

    .line 12
    :cond_8
    const-string p0, "3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 v0, 0x3

    goto :goto_1

    .line 13
    :cond_9
    const-string p0, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x4

    goto :goto_1

    .line 14
    :cond_a
    const-string p0, "5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 v0, 0x5

    goto :goto_1

    .line 15
    :cond_b
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 v0, 0xc

    goto :goto_1

    .line 16
    :cond_c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 v0, 0xe

    goto :goto_1

    .line 17
    :cond_d
    const-string p0, "7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 v0, 0x7

    goto :goto_1

    .line 18
    :cond_e
    const-string p0, "9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 v0, 0x9

    goto :goto_1

    .line 19
    :cond_f
    const-string p0, "16"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 v0, 0x10

    :cond_10
    :goto_1
    return v0
.end method

.method public static synthetic c(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic e(Lcom/mgtv/a/d/a/a/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->w:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic f(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method private f(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    .line 5
    invoke-static {p0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method public static synthetic g(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic h(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic i(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic j(Lcom/mgtv/a/d/a/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/a/d/a/a/a;->k()V

    return-void
.end method

.method public static synthetic k(Lcom/mgtv/a/d/a/a/a;)Le6d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->E:Le6d;

    return-object p0
.end method

.method private k()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    const-string v1, "#10FF4500"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    const v1, -0x1900bb00

    const v2, -0xbb00

    const v3, 0x10ff4500

    const v4, -0x7f00bb00

    const v5, -0x3300bb00

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    const-string v2, "backgroundColor"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/d/a/a/a;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 7
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->e:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->e:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 9
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public static synthetic l(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic m(Lcom/mgtv/a/d/a/a/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic n(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic o(Lcom/mgtv/a/d/a/a/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic p(Lcom/mgtv/a/d/a/a/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic q(Lcom/mgtv/a/d/a/a/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 243
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mgmi/f/f;->a(Landroid/content/Context;)I

    move-result p0

    .line 244
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgmi/f/f;->b(Landroid/content/Context;)I

    move-result v0

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/mgmi/model/VASTChannelAd;

    .line 5
    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-static {v0}, Lcom/mgtv/a/d/a/a/a;->c(Lcom/mgmi/model/VASTAd;)I

    move-result v0

    iput v0, p0, Lcom/mgtv/a/d/a/a/a;->a:I

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 7
    iget v0, p0, Lcom/mgtv/a/d/a/a/a;->a:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_14

    const/4 v2, 0x7

    if-eq v0, v2, :cond_13

    const/16 v2, 0xc

    if-eq v0, v2, :cond_10

    const/16 v2, 0xe

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v2, :cond_e

    const/16 v2, 0x10

    if-eq v0, v2, :cond_d

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/mgtv/a/d/a/a/a;->a(Landroid/view/LayoutInflater;Lcom/mgmi/model/VASTAd;)V

    goto/16 :goto_0

    .line 9
    :cond_1
    sget v0, Lcom/mgmi/R$layout;->mgmi_banner_style_imagetextup:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 10
    sget v0, Lcom/mgmi/R$id;->style_ad_ivImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 11
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->tvAdIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->w:Landroid/view/View;

    goto/16 :goto_0

    .line 15
    :cond_3
    sget v0, Lcom/mgmi/R$layout;->mgmi_banner_style_imagetexthorizotal:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    .line 16
    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 17
    sget v0, Lcom/mgmi/R$id;->style_ad_ivImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 18
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v2, Lcom/mgmi/R$id;->tvTitle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    invoke-static {v0, v5}, Ll4d;->f(Landroid/view/View;I)Z

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v2, Lcom/mgmi/R$id;->subTvTitle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 24
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-static {v0, v5}, Ll4d;->f(Landroid/view/View;I)Z

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v2, Lcom/mgmi/R$id;->adOrigin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 28
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-static {v0, v5}, Ll4d;->f(Landroid/view/View;I)Z

    .line 30
    :cond_6
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v2, Lcom/mgmi/R$id;->tvAdIcon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/d/a/a/a;->w:Landroid/view/View;

    .line 31
    sget v0, Lcom/mgmi/R$id;->mgadlog:I

    invoke-direct {p0, v1, p1, v0}, Lcom/mgtv/a/d/a/a/a;->a(Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;I)V

    goto/16 :goto_0

    .line 32
    :cond_7
    sget v0, Lcom/mgmi/R$layout;->mgmi_banner_style_imagetexthorizotal_sample:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    .line 33
    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 34
    sget v0, Lcom/mgmi/R$id;->style_imagetexthorizotal_ivImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 35
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v2, Lcom/mgmi/R$id;->tvTitle1:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 36
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 37
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    invoke-static {v0, v5}, Ll4d;->f(Landroid/view/View;I)Z

    .line 39
    :cond_8
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v2, Lcom/mgmi/R$id;->tvTitle2:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 40
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 41
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-static {v0, v5}, Ll4d;->f(Landroid/view/View;I)Z

    .line 43
    :cond_9
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v2, Lcom/mgmi/R$id;->adOrigin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 44
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 45
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-static {v0, v5}, Ll4d;->f(Landroid/view/View;I)Z

    .line 47
    :cond_a
    sget v0, Lcom/mgmi/R$id;->tvAdIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/d/a/a/a;->w:Landroid/view/View;

    .line 48
    sget v0, Lcom/mgmi/R$id;->mgadlog:I

    invoke-direct {p0, v1, p1, v0}, Lcom/mgtv/a/d/a/a/a;->a(Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;I)V

    goto/16 :goto_0

    .line 49
    :cond_b
    sget v0, Lcom/mgmi/R$layout;->mgmi_banner_style_image:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 50
    sget v0, Lcom/mgmi/R$id;->image_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 51
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->mgmi_ad_h5_dec:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    .line 52
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->tvAdIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->w:Landroid/view/View;

    goto/16 :goto_0

    .line 53
    :cond_c
    sget v0, Lcom/mgmi/R$layout;->mgmi_banner_style_imagetext:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 54
    sget v0, Lcom/mgmi/R$id;->style_ad_ivImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 55
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    invoke-direct {p0, v1, p1}, Lcom/mgtv/a/d/a/a/a;->a(Lcom/mgmi/model/VASTAd;Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;)V

    .line 56
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->buttonDetail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->B:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 57
    :cond_d
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->i()Z

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/mgtv/a/d/a/a/a;->b(Landroid/view/LayoutInflater;Lcom/mgmi/model/VASTAd;Z)V

    goto/16 :goto_0

    .line 58
    :cond_e
    sget v0, Lcom/mgmi/R$layout;->mgmi_banner_style_image_14:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 59
    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    new-instance v0, Lcom/mgtv/a/d/a/a/a$9;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/a/a/a$9;-><init>(Lcom/mgtv/a/d/a/a/a;)V

    invoke-virtual {p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->setVibilityListener(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$e;)V

    .line 60
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->image_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 61
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->righttvAdIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->w:Landroid/view/View;

    const/16 v0, 0x8

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    .line 64
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->tvOpenAdDetail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    .line 65
    iget-object p1, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    if-eqz p1, :cond_f

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 66
    iput-boolean v4, p0, Lcom/mgtv/a/d/a/a/a;->d:Z

    .line 67
    iget-object p1, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    invoke-static {p1, v5}, Ll4d;->f(Landroid/view/View;I)Z

    .line 69
    :cond_f
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->tvTitle2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_15

    .line 70
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 71
    iput-boolean v4, p0, Lcom/mgtv/a/d/a/a/a;->d:Z

    .line 72
    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getDiscription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {p1, v5}, Ll4d;->f(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 74
    :cond_10
    sget v0, Lcom/mgmi/R$layout;->mgmi_ad_style_h51:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 75
    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    new-instance v0, Lcom/mgtv/a/d/a/a/a$1;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/a/a/a$1;-><init>(Lcom/mgtv/a/d/a/a/a;)V

    invoke-virtual {p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->setVibilityListener(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$e;)V

    .line 76
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->ad_h5_video_adVoice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->b:Landroid/widget/ImageView;

    .line 77
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->ad_h5_webview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 78
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->mgmi_ad_h5_dec:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    .line 79
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->ad_h5_tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->y:Landroid/widget/TextView;

    .line 80
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->ad_h5_subTvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->z:Landroid/widget/TextView;

    .line 81
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->ad_h5_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 82
    instance-of v0, p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    if-eqz v0, :cond_11

    .line 83
    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    new-instance v0, Lcom/mgtv/a/d/a/a/a$7;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/a/a/a$7;-><init>(Lcom/mgtv/a/d/a/a/a;)V

    invoke-virtual {p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->setTapclickListener(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;)V

    .line 84
    :cond_11
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->ex_bottom_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->A:Landroid/view/View;

    .line 85
    instance-of v0, p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    if-eqz v0, :cond_12

    .line 86
    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    new-instance v0, Lcom/mgtv/a/d/a/a/a$8;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/a/a/a$8;-><init>(Lcom/mgtv/a/d/a/a/a;)V

    invoke-virtual {p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->setTapclickListener(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;)V

    .line 87
    :cond_12
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->buttonDetail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a;->B:Landroid/widget/TextView;

    .line 88
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    invoke-direct {p0, v1, p1}, Lcom/mgtv/a/d/a/a/a;->a(Lcom/mgmi/model/VASTAd;Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;)V

    goto :goto_0

    .line 89
    :cond_13
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->i()Z

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/mgtv/a/d/a/a/a;->a(Landroid/view/LayoutInflater;Lcom/mgmi/model/VASTAd;Z)Landroid/view/ViewGroup;

    goto :goto_0

    .line 90
    :cond_14
    sget v0, Lcom/mgmi/R$layout;->mgmi_banner_style_h5:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 91
    sget v0, Lcom/mgmi/R$id;->banner_webview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 92
    :cond_15
    :goto_0
    iget-object p1, p0, Lcom/mgtv/a/d/a/a/a;->B:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    .line 93
    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->r:Landroid/view/View;

    goto :goto_1

    .line 94
    :cond_16
    iget-object p1, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->r:Landroid/view/View;

    .line 95
    :goto_1
    iget-object p1, p0, Lcom/mgtv/a/d/a/a/a;->w:Landroid/view/View;

    if-eqz p1, :cond_17

    .line 96
    new-instance v0, Lcom/mgtv/a/d/a/a/a$10;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/a/a/a$10;-><init>(Lcom/mgtv/a/d/a/a/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Le6d;

    iget-object v1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/mgtv/a/d/a/a/a$6;

    invoke-direct {v2, p0}, Lcom/mgtv/a/d/a/a/a$6;-><init>(Lcom/mgtv/a/d/a/a/a;)V

    iget-object v3, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 252
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Le6d;-><init>(Landroid/content/Context;Le6d$a;I)V

    iput-object v0, p0, Lcom/mgtv/a/d/a/a/a;->E:Le6d;

    const/4 v1, 0x1

    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 254
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->E:Le6d;

    invoke-virtual {v0, p1}, Le6d;->h(Landroid/view/View;)V

    .line 255
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->E:Le6d;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/mgtv/a/d/a/a/a;->a(Landroid/view/View;Lcom/mgmi/model/VASTAd;)V

    .line 98
    iget v0, p0, Lcom/mgtv/a/d/a/a/a;->a:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/mgtv/a/d/a/a/a;->a(Landroid/view/View;Lcom/mgmi/model/VASTAd;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/mgtv/a/d/a/a/a;->a(Landroid/view/View;Lcom/mgmi/model/VASTAd;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTChannelAd;)V
    .locals 3

    .line 121
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/a;->b(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->B:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/Clicks;->getClickText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->B:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->B:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/Clicks;->getClickText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    invoke-static {p0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    return-void

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    invoke-static {v0, v2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 136
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/a/a/a;->b(Lcom/mgmi/model/VASTChannelAd;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 54
    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->f:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public b(Lcom/mgmi/model/VASTChannelAd;)V
    .locals 3

    .line 3
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/a;->a(Ljava/lang/Object;)V

    .line 4
    iget-boolean v0, p0, Lcom/mgtv/a/d/a/a/a;->d:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isShowAdLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 7
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/mgmi/R$string;->mgmi_template_ad_count_pre:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/mgmi/R$string;->mgmi_template_ad:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    invoke-static {p0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->x:Landroid/widget/TextView;

    invoke-static {p0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/a/a/a;->a(Lcom/mgmi/model/VASTChannelAd;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 21
    const-string v1, "#191A1B"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a;->f:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a;->E:Le6d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lo1d;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mgtv/a/d/a/a/a;->E:Le6d;

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/a/d/a/a/a;->d()V

    return-void
.end method
