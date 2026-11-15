.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lut/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->t(Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;)Lcom/transsion/transfer/androidasync/future/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

.field final synthetic e:Lcom/transsion/transfer/androidasync/future/w;

.field final synthetic f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/io/OutputStream;Ljava/io/File;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;Lcom/transsion/transfer/androidasync/future/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->b:Ljava/io/OutputStream;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->c:Ljava/io/File;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->e:Lcom/transsion/transfer/androidasync/future/w;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const-wide/16 p1, 0x0

    .line 15
    .line 16
    iput-wide p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->a:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->b:Ljava/io/OutputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->c:Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->e:Lcom/transsion/transfer/androidasync/future/w;

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v4, p2

    .line 21
    move-object v5, p1

    .line 22
    invoke-static/range {v1 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->g(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->d:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;

    .line 29
    .line 30
    invoke-static {p1, v0, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->h(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/http/k;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/k;->e()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/HttpUtil;->a(Lcom/transsion/transfer/androidasync/http/Headers;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    new-instance p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$a;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;->b:Ljava/io/OutputStream;

    .line 44
    .line 45
    move-object v0, p1

    .line 46
    move-object v1, p0

    .line 47
    move-object v3, p2

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$a;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;Ljava/io/OutputStream;Lcom/transsion/transfer/androidasync/http/k;J)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;

    .line 55
    .line 56
    invoke-direct {p1, p0, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f$b;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;Lcom/transsion/transfer/androidasync/http/k;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
