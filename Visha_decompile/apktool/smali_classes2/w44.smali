.class public abstract Lw44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpk3;


# instance fields
.field public final a:Lpk3;


# direct methods
.method public constructor <init>(Lpk3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw44;->a:Lpk3;

    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0, p1}, Lpk3;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0, p1, p2}, Lpk3;->advancePeekPosition(IZ)Z

    move-result p0

    return p0
.end method

.method public getLength()J
    .locals 2

    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0}, Lpk3;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 2

    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0}, Lpk3;->getPeekPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0}, Lpk3;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public peek([BII)I
    .locals 0

    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0, p1, p2, p3}, Lpk3;->peek([BII)I

    move-result p0

    return p0
.end method

.method public peekFully([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0, p1, p2, p3}, Lpk3;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0, p1, p2, p3, p4}, Lpk3;->peekFully([BIIZ)Z

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 0

    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0, p1, p2, p3}, Lpk3;->read([BII)I

    move-result p0

    return p0
.end method

.method public readFully([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0, p1, p2, p3}, Lpk3;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0, p1, p2, p3, p4}, Lpk3;->readFully([BIIZ)Z

    move-result p0

    return p0
.end method

.method public resetPeekPosition()V
    .locals 0

    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0}, Lpk3;->resetPeekPosition()V

    return-void
.end method

.method public skip(I)I
    .locals 0

    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0, p1}, Lpk3;->skip(I)I

    move-result p0

    return p0
.end method

.method public skipFully(I)V
    .locals 0

    iget-object p0, p0, Lw44;->a:Lpk3;

    invoke-interface {p0, p1}, Lpk3;->skipFully(I)V

    return-void
.end method
