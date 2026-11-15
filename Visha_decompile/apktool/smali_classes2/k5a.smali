.class public abstract Lk5a;
.super Lku1;
.source "SourceFile"

# interfaces
.implements Ll2a;


# instance fields
.field public e:Ll2a;

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lku1;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-super {p0}, Lwk0;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk5a;->e:Ll2a;

    return-void
.end method

.method public getCues(J)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lk5a;->e:Ll2a;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2a;

    iget-wide v1, p0, Lk5a;->f:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ll2a;->getCues(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEventTime(I)J
    .locals 2

    iget-object v0, p0, Lk5a;->e:Ll2a;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2a;

    invoke-interface {v0, p1}, Ll2a;->getEventTime(I)J

    move-result-wide v0

    iget-wide p0, p0, Lk5a;->f:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Lk5a;->e:Ll2a;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll2a;

    invoke-interface {p0}, Ll2a;->getEventTimeCount()I

    move-result p0

    return p0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 3

    iget-object v0, p0, Lk5a;->e:Ll2a;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2a;

    iget-wide v1, p0, Lk5a;->f:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ll2a;->getNextEventTimeIndex(J)I

    move-result p0

    return p0
.end method

.method public m(JLl2a;J)V
    .locals 2

    iput-wide p1, p0, Lku1;->c:J

    iput-object p3, p0, Lk5a;->e:Ll2a;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p4, v0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, p4

    :goto_0
    iput-wide p1, p0, Lk5a;->f:J

    return-void
.end method
