.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;
.super Lcom/transsion/transfer/androidasync/future/w;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->t(Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;)Lcom/transsion/transfer/androidasync/future/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

.field final synthetic g:Ljava/io/OutputStream;

.field final synthetic h:Ljava/io/File;

.field final synthetic i:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/io/OutputStream;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;->i:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;->g:Ljava/io/OutputStream;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;->h:Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public cancelCleanup()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/future/w;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/transfer/androidasync/http/k;

    .line 8
    .line 9
    new-instance v1, Lst/d$a;

    .line 10
    .line 11
    invoke-direct {v1}, Lst/d$a;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/future/w;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/transsion/transfer/androidasync/http/k;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;->g:Ljava/io/OutputStream;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .line 32
    .line 33
    :catch_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;->h:Ljava/io/File;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
