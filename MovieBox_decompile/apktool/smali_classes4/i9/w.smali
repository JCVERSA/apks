.class public abstract Li9/w;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li9/m;


# instance fields
.field private final a:Li9/m;


# direct methods
.method public constructor <init>(Li9/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li9/w;->a:Li9/m;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Li9/w;->a:Li9/m;

    invoke-interface {v0, p1}, Li9/m;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li9/w;->a:Li9/m;

    invoke-interface {v0, p1, p2}, Li9/m;->advancePeekPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public b([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Li9/w;->a:Li9/m;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Li9/m;->b([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Li9/w;->a:Li9/m;

    .line 2
    .line 3
    invoke-interface {v0}, Li9/m;->getLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Li9/w;->a:Li9/m;

    .line 2
    .line 3
    invoke-interface {v0}, Li9/m;->getPeekPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Li9/w;->a:Li9/m;

    .line 2
    .line 3
    invoke-interface {v0}, Li9/m;->getPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public peekFully([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Li9/w;->a:Li9/m;

    invoke-interface {v0, p1, p2, p3}, Li9/m;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li9/w;->a:Li9/m;

    invoke-interface {v0, p1, p2, p3, p4}, Li9/m;->peekFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Li9/w;->a:Li9/m;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Li9/m;->read([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public readFully([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Li9/w;->a:Li9/m;

    invoke-interface {v0, p1, p2, p3}, Li9/m;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li9/w;->a:Li9/m;

    invoke-interface {v0, p1, p2, p3, p4}, Li9/m;->readFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public resetPeekPosition()V
    .locals 1

    .line 1
    iget-object v0, p0, Li9/w;->a:Li9/m;

    .line 2
    .line 3
    invoke-interface {v0}, Li9/m;->resetPeekPosition()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public skip(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Li9/w;->a:Li9/m;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Li9/m;->skip(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public skipFully(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Li9/w;->a:Li9/m;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Li9/m;->skipFully(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
