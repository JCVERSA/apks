.class public final Lpje;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lrae;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>(Lrae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpje;->a:Lrae;

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 2

    iget-boolean v0, p0, Lpje;->c:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lpje;->f:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lpje;->d:Z

    iput-boolean p2, p0, Lpje;->c:Z

    return-void

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    iput v1, p0, Lpje;->f:I

    :cond_2
    return-void
.end method

.method public final b(JIZ)V
    .locals 9

    iget-wide v0, p0, Lpje;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    iget v0, p0, Lpje;->e:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_1

    iget-boolean p4, p0, Lpje;->b:Z

    if-eqz p4, :cond_1

    iget-wide v0, p0, Lpje;->g:J

    sub-long v0, p1, v0

    iget-boolean v5, p0, Lpje;->d:Z

    iget-object v2, p0, Lpje;->a:Lrae;

    iget-wide v3, p0, Lpje;->h:J

    long-to-int v6, v0

    const/4 v8, 0x0

    move v7, p3

    invoke-interface/range {v2 .. v8}, Lrae;->g(JIIILqae;)V

    :cond_1
    iget p3, p0, Lpje;->e:I

    const/16 p4, 0xb3

    if-eq p3, p4, :cond_2

    iput-wide p1, p0, Lpje;->g:J

    :cond_2
    return-void
.end method

.method public final c(IJ)V
    .locals 4

    iput p1, p0, Lpje;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpje;->d:Z

    const/4 v1, 0x1

    const/16 v2, 0xb6

    if-eq p1, v2, :cond_0

    const/16 v3, 0xb3

    if-ne p1, v3, :cond_1

    move p1, v3

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lpje;->b:Z

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lpje;->c:Z

    iput v0, p0, Lpje;->f:I

    iput-wide p2, p0, Lpje;->h:J

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpje;->b:Z

    iput-boolean v0, p0, Lpje;->c:Z

    iput-boolean v0, p0, Lpje;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lpje;->e:I

    return-void
.end method
