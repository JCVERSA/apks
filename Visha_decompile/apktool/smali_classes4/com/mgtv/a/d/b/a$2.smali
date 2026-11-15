.class Lcom/mgtv/a/d/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/b/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/b/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/b/a$2;->a:Lcom/mgtv/a/d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;FFFFFF)V
    .locals 8

    iget-object p6, p0, Lcom/mgtv/a/d/b/a$2;->a:Lcom/mgtv/a/d/b/a;

    iget-object p7, p6, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    if-eqz p7, :cond_0

    invoke-virtual {p6, p2, p3}, Lcom/mgtv/a/d/b/a;->a(FF)Z

    move-result p6

    if-eqz p6, :cond_0

    iget-object p6, p0, Lcom/mgtv/a/d/b/a$2;->a:Lcom/mgtv/a/d/b/a;

    iget-object p7, p6, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    new-instance v7, Ldkd;

    iget-object p6, p6, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {p6}, Landroid/view/View;->getWidth()I

    move-result p6

    int-to-float v5, p6

    iget-object p0, p0, Lcom/mgtv/a/d/b/a$2;->a:Lcom/mgtv/a/d/b/a;

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float v6, p0

    move-object v0, v7

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Ldkd;-><init>(FFFFFF)V

    invoke-interface {p7, p1, v7}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method
