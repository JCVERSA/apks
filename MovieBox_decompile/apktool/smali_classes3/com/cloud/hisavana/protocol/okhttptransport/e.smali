.class final Lcom/cloud/hisavana/protocol/okhttptransport/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/protocol/okhttptransport/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/protocol/okhttptransport/e$b;,
        Lcom/cloud/hisavana/protocol/okhttptransport/e$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/protocol/okhttptransport/e$b;

.field private final b:Lcom/cloud/hisavana/protocol/okhttptransport/e$c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/e$b;Lcom/cloud/hisavana/protocol/okhttptransport/e$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e;->a:Lcom/cloud/hisavana/protocol/okhttptransport/e$b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e;->b:Lcom/cloud/hisavana/protocol/okhttptransport/e$c;

    .line 7
    .line 8
    return-void
.end method

.method static b(Ljava/util/concurrent/ExecutorService;)Lcom/cloud/hisavana/protocol/okhttptransport/e;
    .locals 3

    .line 1
    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/e;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/hisavana/protocol/okhttptransport/e$b;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/cloud/hisavana/protocol/okhttptransport/e$b;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/cloud/hisavana/protocol/okhttptransport/e$c;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/protocol/okhttptransport/e;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/e$b;Lcom/cloud/hisavana/protocol/okhttptransport/e$c;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public a(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    const-wide/32 v2, 0x100000

    .line 12
    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e;->a:Lcom/cloud/hisavana/protocol/okhttptransport/e$b;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$b;->a(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e;->b:Lcom/cloud/hisavana/protocol/okhttptransport/e$c;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c;->a(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method
