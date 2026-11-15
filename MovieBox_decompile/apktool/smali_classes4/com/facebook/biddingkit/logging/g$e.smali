.class Lcom/facebook/biddingkit/logging/g$e;
.super Ljava/io/Writer;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/logging/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field final a:Lcom/facebook/biddingkit/logging/g$d;

.field b:[C

.field c:I


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/logging/g$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/biddingkit/logging/g$e;->a:Lcom/facebook/biddingkit/logging/g$d;

    .line 5
    .line 6
    const/16 p1, 0x400

    .line 7
    .line 8
    new-array p1, p1, [C

    .line 9
    .line 10
    iput-object p1, p0, Lcom/facebook/biddingkit/logging/g$e;->b:[C

    .line 11
    .line 12
    return-void
.end method

.method private d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/g$e;->a:Lcom/facebook/biddingkit/logging/g$d;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/biddingkit/logging/g$e;->b:[C

    .line 6
    .line 7
    iget v3, p0, Lcom/facebook/biddingkit/logging/g$e;->c:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/facebook/biddingkit/logging/g$d;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput v4, p0, Lcom/facebook/biddingkit/logging/g$e;->c:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/g$e;->flush()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/biddingkit/logging/g$e;->c:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/biddingkit/logging/g$e;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 5

    .line 1
    move v0, p2

    .line 2
    :goto_0
    add-int v1, p2, p3

    .line 3
    .line 4
    if-ge v0, v1, :cond_2

    .line 5
    .line 6
    aget-char v1, p1, v0

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    iget v2, p0, Lcom/facebook/biddingkit/logging/g$e;->c:I

    .line 13
    .line 14
    iget-object v3, p0, Lcom/facebook/biddingkit/logging/g$e;->b:[C

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    if-ne v2, v4, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    aput-char v1, v3, v2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    iput v2, p0, Lcom/facebook/biddingkit/logging/g$e;->c:I

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/facebook/biddingkit/logging/g$e;->d()V

    .line 28
    .line 29
    .line 30
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return-void
.end method
