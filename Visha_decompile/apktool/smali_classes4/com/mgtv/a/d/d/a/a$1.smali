.class Lcom/mgtv/a/d/d/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lly3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/d/a/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/d/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/d/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/d/a/a$1;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTp(FFFFFF)V
    .locals 8

    iget-object v0, p0, Lcom/mgtv/a/d/d/a/a$1;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-static {v0}, Lcom/mgtv/a/d/d/a/a;->a(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/d/a/a$1;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-static {v0}, Lcom/mgtv/a/d/d/a/a;->b(Lcom/mgtv/a/d/d/a/a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/d/a/a$1;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-static {p0}, Lcom/mgtv/a/d/d/a/a;->c(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p0

    new-instance v7, Ldkd;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ldkd;-><init>(FFFFFF)V

    const/4 p1, 0x0

    invoke-interface {p0, p1, v7}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method
