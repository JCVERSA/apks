.class Lcom/mgmi/ads/api/e/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/e/h;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/e/h;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/e/h;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/e/h$1;->a:Lcom/mgmi/ads/api/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgmi/model/r;)V
    .locals 3

    const-string v0, "LIveVideoAdManager"

    const-string v1, "updateRemote callback"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h$1;->a:Lcom/mgmi/ads/api/e/h;

    invoke-static {v0}, Lcom/mgmi/ads/api/e/h;->a(Lcom/mgmi/ads/api/e/h;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/e/h$1;->a:Lcom/mgmi/ads/api/e/h;

    invoke-static {v0}, Lcom/mgmi/ads/api/e/h;->a(Lcom/mgmi/ads/api/e/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/platform/view/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->A()Lcom/mgmi/ads/api/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/i;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/h$1;->a:Lcom/mgmi/ads/api/e/h;

    invoke-virtual {p1}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mgmi/ads/api/e/h;->a(Lcom/mgmi/ads/api/e/h;Ljava/util/List;)Ljava/util/List;

    iget-object p0, p0, Lcom/mgmi/ads/api/e/h$1;->a:Lcom/mgmi/ads/api/e/h;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/mgmi/ads/api/e/h;->a(Lcom/mgmi/ads/api/e/h;Z)Z

    return-void
.end method
