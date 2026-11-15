.class final enum Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$23;
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
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->native_template_l16915:I

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
    return-object v0
.end method

.method public getCloseImageType()Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->EXPAND:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    .line 2
    .line 3
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
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->setRadius(FFFF)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
