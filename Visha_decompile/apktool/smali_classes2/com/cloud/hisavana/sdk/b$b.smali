.class public Lcom/cloud/hisavana/sdk/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhvd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/b;->m(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/b;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/b;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$b;->b:Lcom/cloud/hisavana/sdk/b;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/b$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFFZ)I
    .locals 0

    .line 2
    iget-object p5, p0, Lcom/cloud/hisavana/sdk/b$b;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p5, p1}, Lcom/cloud/hisavana/sdk/b;->c(Lcom/cloud/hisavana/sdk/b;F)F

    .line 3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$b;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/b;->u(Lcom/cloud/hisavana/sdk/b;F)F

    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$b;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p1, p3}, Lcom/cloud/hisavana/sdk/b;->C(Lcom/cloud/hisavana/sdk/b;F)F

    .line 5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$b;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p1, p4}, Lcom/cloud/hisavana/sdk/b;->F(Lcom/cloud/hisavana/sdk/b;F)F

    .line 6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$b;->b:Lcom/cloud/hisavana/sdk/b;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$b;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/b;->w(Lcom/cloud/hisavana/sdk/b;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$b;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$b;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object v0

    invoke-virtual {v0}, Land;->P()V

    .line 9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "s_err_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string p2, "error_url"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$b;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object p0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_LOAD_MATERIAL_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1, v0}, Land;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
