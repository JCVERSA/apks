.class Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->scaleWidthOrTextSizeImpl(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$25;->c:Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$25;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$25;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$25;->c:Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$25;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->access$100(Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;Landroid/view/View;)F

    move-result v0

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "TemplateRenderEnum"

    const-string v1, "scaleWidth_scale -- 0 -- return"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$25;->c:Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum$25;->b:Landroid/view/View;

    invoke-static {v1, p0, v0}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->access$200(Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;Landroid/view/View;F)V

    return-void
.end method
