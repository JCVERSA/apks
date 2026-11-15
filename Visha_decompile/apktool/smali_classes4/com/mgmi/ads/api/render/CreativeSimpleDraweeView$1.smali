.class Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$1;->a:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$1;->a:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;

    invoke-static {v0}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->a(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;)Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$1;->a:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;

    invoke-static {v0}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->b(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$1;->a:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->a(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;Z)Z

    iget-object v0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$1;->a:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;

    invoke-static {v0}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->a(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;)Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;

    move-result-object v0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$1;->a:Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;

    invoke-static {p0}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;->c(Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView;)Lcom/mgmi/model/VASTAd;

    move-result-object p0

    const-string v1, "cli_4"

    invoke-interface {v0, p0, v1}, Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;->a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
