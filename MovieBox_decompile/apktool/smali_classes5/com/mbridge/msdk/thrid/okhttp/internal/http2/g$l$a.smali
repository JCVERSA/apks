.class Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;
.super Lcom/mbridge/msdk/thrid/okhttp/internal/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;->a(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

.field final synthetic c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;


# direct methods
.method varargs constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;Ljava/lang/String;[Ljava/lang/Object;Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$j;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$j;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->d()Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "Http2Connection.Listener failure for "

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->d:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x4

    .line 42
    invoke-virtual {v1, v3, v2, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    .line 46
    .line 47
    sget-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    .line 52
    :catch_1
    :goto_0
    return-void
.end method
