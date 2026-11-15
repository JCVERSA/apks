.class Lcom/mgtv/a/d/f/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/a/d/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/f/a$a;->a(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/f/a$a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/f/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/f/a$a$1;->a:Lcom/mgtv/a/d/f/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public a(II)Landroid/graphics/Bitmap;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$1;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->p(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$1;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->q(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mgtv/a/d/b/d;->a(ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$1;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    if-eqz p0, :cond_2

    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgtv/a/c/a;->a(Z)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 3
    return-void
.end method

.method public a(Landroid/view/View;Ldkd;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a$1;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object v0, v0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->r(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$1;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->s(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 11
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a$1;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p1, p1, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->t(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a$1;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p1, p1, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->u(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a$1;->a:Lcom/mgtv/a/d/f/a$a;

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    invoke-interface {p1, p0}, Lcom/mgtv/a/d/b/d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    return-void
.end method

.method public b()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 0

    return-void
.end method
