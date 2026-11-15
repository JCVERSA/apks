.class Lcom/mgtv/a/b/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/a/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/b/a/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/b/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/a/a/a;->a()V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    iget-object v0, v0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/mgtv/a/a/a;->a(II)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/b/a/a;->a(II)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    iget-object v0, v0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/mgtv/a/a/a;->a(ILjava/lang/String;)V

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    if-eqz p0, :cond_1

    .line 20
    invoke-interface {p0, p1, p2}, Lcom/mgtv/a/b/a/b;->a(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mgtv/a/b/a/a;->h:Z

    .line 9
    iget-object v1, v0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v1, :cond_2

    .line 10
    const-string v1, "boot"

    iget-object v0, v0, Lcom/mgtv/a/b/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    iget-object v0, v0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mgtv/a/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    iget-object v0, v0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->v()I

    move-result v0

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errmsg what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    iget-object v1, v1, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Lcom/mgtv/a/a/a;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    iget-object v0, v0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    invoke-virtual {v0, p2}, Lcom/mgtv/a/a/a;->b(I)V

    .line 16
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public a(ZZZ)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/mgmi/ads/api/a;->onUpdateStatus(ZZZ)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    iget-object v1, v0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/a/a/a;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->h_()V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->l()V

    return-void
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->e_()V

    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->k()V

    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->f()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    iget-object v0, v0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/a/a;->g()V

    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$1;->a:Lcom/mgtv/a/b/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->g()V

    return-void
.end method
