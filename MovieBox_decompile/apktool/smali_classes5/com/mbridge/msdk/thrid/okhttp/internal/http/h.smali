.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/http/h;
.super Lcom/mbridge/msdk/thrid/okhttp/z;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Lcom/mbridge/msdk/thrid/okio/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/mbridge/msdk/thrid/okio/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/z;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/h;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/h;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/h;->c:Lcom/mbridge/msdk/thrid/okio/e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/h;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public k()Lcom/mbridge/msdk/thrid/okio/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/h;->c:Lcom/mbridge/msdk/thrid/okio/e;

    .line 2
    .line 3
    return-object v0
.end method
