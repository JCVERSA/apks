.class Lcom/squareup/okhttp/internal/http/e$a;
.super Lokio/ForwardingSource;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/http/e;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/e;Lokio/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/e$a;->a:Lcom/squareup/okhttp/internal/http/e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e$a;->a:Lcom/squareup/okhttp/internal/http/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/e;->a(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/internal/http/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e$a;->a:Lcom/squareup/okhttp/internal/http/e;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/n;->r(Lcom/squareup/okhttp/internal/http/HttpStream;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
