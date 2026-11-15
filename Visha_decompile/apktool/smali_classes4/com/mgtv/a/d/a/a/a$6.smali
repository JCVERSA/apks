.class Lcom/mgtv/a/d/a/a/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/a/a/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/a/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a$6;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a$6;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-virtual {v0}, Lcom/mgtv/a/d/a/a/a;->d()V

    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a$6;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-static {v0}, Lcom/mgtv/a/d/a/a/a;->k(Lcom/mgtv/a/d/a/a/a;)Le6d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a$6;->a:Lcom/mgtv/a/d/a/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mgtv/a/d/a/a/a;->a(Lcom/mgtv/a/d/a/a/a;Le6d;)Le6d;

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a$6;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-static {v0}, Lcom/mgtv/a/d/a/a/a;->l(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a$6;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-static {v0}, Lcom/mgtv/a/d/a/a/a;->n(Lcom/mgtv/a/d/a/a/a;)Lcom/mgtv/a/d/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/d/a/a/a$6;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-static {v1}, Lcom/mgtv/a/d/a/a/a;->m(Lcom/mgtv/a/d/a/a/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mgtv/a/d/b/d;->a(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a$6;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-static {v0}, Lcom/mgtv/a/d/a/a/a;->o(Lcom/mgtv/a/d/a/a/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/a/d/a/a/a$6;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-static {v0}, Lcom/mgtv/a/d/a/a/a;->p(Lcom/mgtv/a/d/a/a/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a$6;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-static {p0}, Lcom/mgtv/a/d/a/a/a;->q(Lcom/mgtv/a/d/a/a/a;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/mgmi/R$string;->mgmi_banner_feed_pop:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a$6;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->i()Z

    move-result p0

    return p0
.end method
