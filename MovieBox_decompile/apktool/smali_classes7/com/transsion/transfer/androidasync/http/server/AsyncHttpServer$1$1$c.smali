.class Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;
.super Lcom/transsion/transfer/androidasync/http/server/k;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;Lcom/transsion/transfer/androidasync/j;Lcom/transsion/transfer/androidasync/http/server/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;->n:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/transsion/transfer/androidasync/http/server/k;-><init>(Lcom/transsion/transfer/androidasync/j;Lcom/transsion/transfer/androidasync/http/server/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;->n:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->u:Z

    .line 5
    .line 6
    invoke-super {p0}, Lcom/transsion/transfer/androidasync/http/server/k;->E()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/k;->d:Lcom/transsion/transfer/androidasync/j;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;->n:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/k;->o()Lcom/transsion/transfer/androidasync/http/server/b;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;->n:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->r(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;->n:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->Z(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method protected F(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/http/server/k;->F(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;->n:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->B:Lcom/transsion/transfer/androidasync/j;

    .line 9
    .line 10
    new-instance v0, Lst/d$a;

    .line 11
    .line 12
    invoke-direct {v0}, Lst/d$a;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;->n:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->B:Lcom/transsion/transfer/androidasync/j;

    .line 21
    .line 22
    new-instance v0, Lst/a$a;

    .line 23
    .line 24
    invoke-direct {v0}, Lst/a$a;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;->n:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->B:Lcom/transsion/transfer/androidasync/j;

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
