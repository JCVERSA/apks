.class final Lcom/mbridge/msdk/thrid/okhttp/x$a;
.super Lcom/mbridge/msdk/thrid/okhttp/x;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okhttp/x;->a(Lcom/mbridge/msdk/thrid/okhttp/s;[BII)Lcom/mbridge/msdk/thrid/okhttp/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[B

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/s;I[BI)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/mbridge/msdk/thrid/okhttp/x$a;->a:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/x$a;->b:[B

    .line 4
    .line 5
    iput p4, p0, Lcom/mbridge/msdk/thrid/okhttp/x$a;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/x;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/x$a;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okio/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/x$a;->b:[B

    iget v1, p0, Lcom/mbridge/msdk/thrid/okhttp/x$a;->c:I

    iget v2, p0, Lcom/mbridge/msdk/thrid/okhttp/x$a;->a:I

    invoke-interface {p1, v0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/d;->write([BII)Lcom/mbridge/msdk/thrid/okio/d;

    return-void
.end method

.method public b()Lcom/mbridge/msdk/thrid/okhttp/s;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
