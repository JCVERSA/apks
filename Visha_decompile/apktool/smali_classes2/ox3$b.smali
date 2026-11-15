.class public final Lox3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lox3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lwx3;

.field public final b:I

.field public final c:Lsx3$a;


# direct methods
.method public constructor <init>(Lwx3;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lox3$b;->a:Lwx3;

    .line 4
    iput p2, p0, Lox3$b;->b:I

    .line 5
    new-instance p1, Lsx3$a;

    invoke-direct {p1}, Lsx3$a;-><init>()V

    iput-object p1, p0, Lox3$b;->c:Lsx3$a;

    return-void
.end method

.method public synthetic constructor <init>(Lwx3;ILox3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lox3$b;-><init>(Lwx3;I)V

    return-void
.end method


# virtual methods
.method public a(Lpk3;J)Lre0$e;
    .locals 9

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lox3$b;->b(Lpk3;)J

    move-result-wide v2

    invoke-interface {p1}, Lpk3;->getPeekPosition()J

    move-result-wide v4

    iget-object v6, p0, Lox3$b;->a:Lwx3;

    iget v6, v6, Lwx3;->c:I

    const/4 v7, 0x6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {p1, v6}, Lpk3;->advancePeekPosition(I)V

    invoke-virtual {p0, p1}, Lox3$b;->b(Lpk3;)J

    move-result-wide v6

    invoke-interface {p1}, Lpk3;->getPeekPosition()J

    move-result-wide p0

    cmp-long v8, v2, p2

    if-gtz v8, :cond_0

    cmp-long v8, v6, p2

    if-lez v8, :cond_0

    invoke-static {v4, v5}, Lre0$e;->e(J)Lre0$e;

    move-result-object p0

    return-object p0

    :cond_0
    cmp-long p2, v6, p2

    if-gtz p2, :cond_1

    invoke-static {v6, v7, p0, p1}, Lre0$e;->f(JJ)Lre0$e;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v2, v3, v0, v1}, Lre0$e;->d(JJ)Lre0$e;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lpk3;)J
    .locals 6

    :goto_0
    invoke-interface {p1}, Lpk3;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lox3$b;->a:Lwx3;

    iget v1, p0, Lox3$b;->b:I

    iget-object v2, p0, Lox3$b;->c:Lsx3$a;

    invoke-static {p1, v0, v1, v2}, Lsx3;->h(Lpk3;Lwx3;ILsx3$a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lpk3;->advancePeekPosition(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lpk3;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lpk3;->getPeekPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lpk3;->advancePeekPosition(I)V

    iget-object p0, p0, Lox3$b;->a:Lwx3;

    iget-wide p0, p0, Lwx3;->j:J

    return-wide p0

    :cond_1
    iget-object p0, p0, Lox3$b;->c:Lsx3$a;

    iget-wide p0, p0, Lsx3$a;->a:J

    return-wide p0
.end method
