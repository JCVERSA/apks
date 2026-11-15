.class Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$b;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$b;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/server/c;->resume()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$b;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->a0(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$b;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->x:Z

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->V()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
