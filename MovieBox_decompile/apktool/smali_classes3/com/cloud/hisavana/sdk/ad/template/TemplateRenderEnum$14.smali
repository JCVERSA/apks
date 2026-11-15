.class final enum Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$14;
.super Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$1;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bindView()Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->native_template_fa12:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->hisavana_native_ad_icon:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public renderRadius(Lcom/cloud/hisavana/sdk/api/view/MediaView;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->radius:F

    .line 5
    .line 6
    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->setRadius(FFFF)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public scaleWidthOrTextSize(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->scaleWidthOrTextSizeImpl(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
