.class public abstract Lk2/c0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/s;


# instance fields
.field private final a:Lk2/s;


# direct methods
.method public constructor <init>(Lk2/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk2/c0;->a:Lk2/s;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    invoke-interface {v0, p1}, Lk2/s;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    invoke-interface {v0, p1, p2}, Lk2/s;->advancePeekPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public b([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lk2/s;->b([BII)I

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
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    .line 2
    .line 3
    invoke-interface {v0}, Lk2/s;->getLength()J

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
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    .line 2
    .line 3
    invoke-interface {v0}, Lk2/s;->getPeekPosition()J

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
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    .line 2
    .line 3
    invoke-interface {v0}, Lk2/s;->getPosition()J

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
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    invoke-interface {v0, p1, p2, p3}, Lk2/s;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    invoke-interface {v0, p1, p2, p3, p4}, Lk2/s;->peekFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lk2/s;->read([BII)I

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
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    invoke-interface {v0, p1, p2, p3}, Lk2/s;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    invoke-interface {v0, p1, p2, p3, p4}, Lk2/s;->readFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public resetPeekPosition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    .line 2
    .line 3
    invoke-interface {v0}, Lk2/s;->resetPeekPosition()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public skip(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lk2/s;->skip(I)I

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
    iget-object v0, p0, Lk2/c0;->a:Lk2/s;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lk2/s;->skipFully(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
