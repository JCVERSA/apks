.class Lcom/mgtv/a/a/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/a/b;->c(Landroid/view/View;Ldkd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/a/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/a/b$4;->a:Lcom/mgtv/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/a/b$4;->a:Lcom/mgtv/a/a/b;

    invoke-static {v0}, Lcom/mgtv/a/a/b;->e(Lcom/mgtv/a/a/b;)Lcom/mgmi/ads/api/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/a/b$4;->a:Lcom/mgtv/a/a/b;

    invoke-static {p0}, Lcom/mgtv/a/a/b;->e(Lcom/mgtv/a/a/b;)Lcom/mgmi/ads/api/e;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ads/api/e;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/a/b$4;->a:Lcom/mgtv/a/a/b;

    invoke-static {v0}, Lcom/mgtv/a/a/b;->e(Lcom/mgtv/a/a/b;)Lcom/mgmi/ads/api/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/a/b$4;->a:Lcom/mgtv/a/a/b;

    invoke-static {p0}, Lcom/mgtv/a/a/b;->e(Lcom/mgtv/a/a/b;)Lcom/mgmi/ads/api/e;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ads/api/e;->b()V

    :cond_0
    return-void
.end method
