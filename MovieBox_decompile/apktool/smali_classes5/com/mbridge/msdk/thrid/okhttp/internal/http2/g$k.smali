.class final Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;
.super Lcom/mbridge/msdk/thrid/okhttp/internal/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "k"
.end annotation


# instance fields
.field final b:Z

.field final c:I

.field final d:I

.field final synthetic e:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;ZII)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->e:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x3

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object p1, v2, v3

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    aput-object v0, v2, p1

    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    aput-object v1, v2, p1

    .line 24
    .line 25
    const-string p1, "OkHttp %s ping %08x%08x"

    .line 26
    .line 27
    invoke-direct {p0, p1, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-boolean p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->b:Z

    .line 31
    .line 32
    iput p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->c:I

    .line 33
    .line 34
    iput p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->d:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->e:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->b:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->c:I

    .line 6
    .line 7
    iget v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->d:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(ZII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
