.class final Lcom/mbridge/msdk/thrid/okhttp/z$a;
.super Lcom/mbridge/msdk/thrid/okhttp/z;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okhttp/z;->a(Lcom/mbridge/msdk/thrid/okhttp/s;JLcom/mbridge/msdk/thrid/okio/e;)Lcom/mbridge/msdk/thrid/okhttp/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/mbridge/msdk/thrid/okio/e;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/s;JLcom/mbridge/msdk/thrid/okio/e;)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/mbridge/msdk/thrid/okhttp/z$a;->a:J

    .line 2
    .line 3
    iput-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/z$a;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/z;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/z$a;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public k()Lcom/mbridge/msdk/thrid/okio/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/z$a;->b:Lcom/mbridge/msdk/thrid/okio/e;

    .line 2
    .line 3
    return-object v0
.end method
