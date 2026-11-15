.class final enum Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$12;
.super Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$1;)V

    return-void
.end method


# virtual methods
.method public bindView()Landroid/view/View;
    .locals 2

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->native_template_fa10:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public renderRadius(Lcom/cloud/hisavana/sdk/api/view/MediaView;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p0, p0, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->radius:F

    invoke-virtual {p1, p0, p0, p0, p0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->setRadius(FFFF)V

    return-void
.end method

.method public scaleWidthOrTextSize(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->scaleWidthOrTextSizeImpl(Landroid/view/View;)V

    return-void
.end method
