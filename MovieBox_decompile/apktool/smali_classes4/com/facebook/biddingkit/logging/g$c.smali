.class Lcom/facebook/biddingkit/logging/g$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/facebook/biddingkit/logging/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/logging/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/facebook/biddingkit/logging/g$d;

.field b:I


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/logging/g$d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/biddingkit/logging/g$c;->a:Lcom/facebook/biddingkit/logging/g$d;

    .line 5
    .line 6
    iput p2, p0, Lcom/facebook/biddingkit/logging/g$c;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/biddingkit/logging/g$c;->b:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/g$c;->a:Lcom/facebook/biddingkit/logging/g$d;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/facebook/biddingkit/logging/g$d;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Lcom/facebook/biddingkit/logging/g$c;->b:I

    .line 11
    .line 12
    add-int/lit8 p1, p1, -0x1

    .line 13
    .line 14
    iput p1, p0, Lcom/facebook/biddingkit/logging/g$c;->b:I

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/logging/g$c;->a:Lcom/facebook/biddingkit/logging/g$d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/biddingkit/logging/g$d;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
