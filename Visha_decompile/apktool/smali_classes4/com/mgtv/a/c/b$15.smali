.class Lcom/mgtv/a/c/b$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/render/MySimpleDraweeView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->a(Lcom/mgmi/model/CreativeMediaData;Lcom/mgmi/model/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/model/m;

.field final synthetic b:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;Lcom/mgmi/model/m;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$15;->b:Lcom/mgtv/a/c/b;

    iput-object p2, p0, Lcom/mgtv/a/c/b$15;->a:Lcom/mgmi/model/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FFFFFF)V
    .locals 8

    iget-object p1, p0, Lcom/mgtv/a/c/b$15;->b:Lcom/mgtv/a/c/b;

    invoke-static {p1}, Lcom/mgtv/a/c/b;->e(Lcom/mgtv/a/c/b;)V

    iget-object p1, p0, Lcom/mgtv/a/c/b$15;->b:Lcom/mgtv/a/c/b;

    iget-object p1, p1, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/c/b$15;->a:Lcom/mgmi/model/m;

    invoke-virtual {p0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object p0

    new-instance v7, Ldkd;

    move-object v0, v7

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Ldkd;-><init>(FFFFFF)V

    invoke-interface {p1, p0, v7}, Lcom/mgtv/a/c/d;->a(Ljava/lang/Object;Ldkd;)V

    :cond_0
    return-void
.end method
