.class Lcom/mgtv/a/a/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/model/Clicks;Lcom/mgmi/ads/api/render/AdWidgetInfo;Ldkd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/render/AdWidgetInfo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldkd;

.field final synthetic d:Lcom/mgmi/model/Clicks;

.field final synthetic e:Lcom/mgtv/a/a/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/a/b;Lcom/mgmi/ads/api/render/AdWidgetInfo;Ljava/lang/String;Ldkd;Lcom/mgmi/model/Clicks;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/a/b$5;->e:Lcom/mgtv/a/a/b;

    iput-object p2, p0, Lcom/mgtv/a/a/b$5;->a:Lcom/mgmi/ads/api/render/AdWidgetInfo;

    iput-object p3, p0, Lcom/mgtv/a/a/b$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mgtv/a/a/b$5;->c:Ldkd;

    iput-object p5, p0, Lcom/mgtv/a/a/b$5;->d:Lcom/mgmi/model/Clicks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/mgtv/a/a/b$5;->a:Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/a/b$5;->e:Lcom/mgtv/a/a/b;

    iget-object v2, p0, Lcom/mgtv/a/a/b$5;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/mgtv/a/a/b;->a(Lcom/mgtv/a/a/b;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mgtv/a/a/b$5;->e:Lcom/mgtv/a/a/b;

    invoke-static {v1}, Lcom/mgtv/a/a/b;->c(Lcom/mgtv/a/a/b;)Lcom/mgmi/model/VASTAd;

    move-result-object v2

    iget-object v3, p0, Lcom/mgtv/a/a/b$5;->c:Ldkd;

    iget-object v4, p0, Lcom/mgtv/a/a/b$5;->d:Lcom/mgmi/model/Clicks;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/mgtv/a/a/b;->a(Lcom/mgtv/a/a/b;Lcom/mgmi/model/VASTAd;Ldkd;Lcom/mgmi/model/Clicks;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/a/a/b$5;->d:Lcom/mgmi/model/Clicks;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/a/a/b$5;->e:Lcom/mgtv/a/a/b;

    invoke-static {p0}, Lcom/mgtv/a/a/b;->c(Lcom/mgtv/a/a/b;)Lcom/mgmi/model/VASTAd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTraceCheck()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/o;->c(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
