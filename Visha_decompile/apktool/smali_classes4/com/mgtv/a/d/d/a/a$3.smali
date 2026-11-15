.class Lcom/mgtv/a/d/d/a/a$3;
.super Lcom/mgadplus/viewgroup/dynamicview/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/d/a/a;->f()V
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

    iput-object p1, p0, Lcom/mgtv/a/d/d/a/a$3;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/d/a/a$3;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-static {v0}, Lcom/mgtv/a/d/d/a/a;->g(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/d/a/a$3;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-static {p0}, Lcom/mgtv/a/d/d/a/a;->h(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/mgtv/a/d/b/d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/mgtv/a/d/d/a/a$3;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-static {p1}, Lcom/mgtv/a/d/d/a/a;->i(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgtv/a/d/d/a/a$3;->a:Lcom/mgtv/a/d/d/a/a;

    invoke-static {p0}, Lcom/mgtv/a/d/d/a/a;->j(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p0

    new-instance p1, Ldkd;

    invoke-direct {p1}, Ldkd;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/mgtv/a/d/b/d;->a(Landroid/view/View;Ldkd;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2
    return-void
.end method
