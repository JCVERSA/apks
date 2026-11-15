.class Lcom/facebook/biddingkit/logging/EventLogUtils$LimitLineProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/logging/EventLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitLineProcessor"
.end annotation


# instance fields
.field final mOutput:Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessor;

.field mRemaining:I


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/biddingkit/logging/EventLogUtils$LimitLineProcessor;->mOutput:Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessor;

    iput p2, p0, Lcom/facebook/biddingkit/logging/EventLogUtils$LimitLineProcessor;->mRemaining:I

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/logging/EventLogUtils$LimitLineProcessor;->mOutput:Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessor;

    invoke-interface {p0}, Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessor;->flush()V

    return-void
.end method

.method public process(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/facebook/biddingkit/logging/EventLogUtils$LimitLineProcessor;->mRemaining:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/EventLogUtils$LimitLineProcessor;->mOutput:Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessor;

    invoke-interface {v0, p1}, Lcom/facebook/biddingkit/logging/EventLogUtils$LineProcessor;->process(Ljava/lang/String;)V

    iget p1, p0, Lcom/facebook/biddingkit/logging/EventLogUtils$LimitLineProcessor;->mRemaining:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/facebook/biddingkit/logging/EventLogUtils$LimitLineProcessor;->mRemaining:I

    :cond_0
    return-void
.end method
