.class public Lcom/mgtv/a/c/g;
.super Lcom/mgtv/a/c/a;
.source "SourceFile"


# instance fields
.field private s:Lcom/mgmi/ads/api/render/MySimpleDraweeView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/c/g;->s:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    invoke-direct {v0, p1}, Lcom/mgmi/ads/api/render/MySimpleDraweeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/a/c/g;->s:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/c/a;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/a/c/a;->c:I

    iget-object p0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    const v0, 0x18704

    const-string v1, "data is empty"

    const-string v2, ""

    invoke-interface {p0, v2, v0, v1}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
