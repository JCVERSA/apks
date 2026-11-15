.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/k;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->a:Lcom/transsion/transfer/androidasync/http/k;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->b:Ljava/io/OutputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :goto_0
    move-object v4, p1

    .line 9
    goto :goto_1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :goto_1
    if-eqz v4, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->c:Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    .line 22
    .line 23
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

    .line 26
    .line 27
    iget-object v2, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->e:Lcom/transsion/transfer/androidasync/future/w;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->a:Lcom/transsion/transfer/androidasync/http/k;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->g(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->b:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    .line 37
    .line 38
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 39
    .line 40
    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

    .line 41
    .line 42
    iget-object v2, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->e:Lcom/transsion/transfer/androidasync/future/w;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;->a:Lcom/transsion/transfer/androidasync/http/k;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    iget-object v5, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->c:Ljava/io/File;

    .line 48
    .line 49
    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->g(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    return-void
.end method
