.class public Lcom/hunantv/media/player/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/a/a$a;,
        Lcom/hunantv/media/player/a/a$b;
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private b:Lcom/hunantv/media/player/a/b;

.field private c:[Ljava/lang/String;

.field private d:Lcom/hunantv/media/player/a/a$b;

.field private e:J

.field private volatile f:I

.field private g:I

.field private h:I

.field private i:Lcom/hunantv/media/player/a/a$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/a/a;->a:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/hunantv/media/player/a/a;->e:J

    iput v0, p0, Lcom/hunantv/media/player/a/a;->f:I

    iput v0, p0, Lcom/hunantv/media/player/a/a;->g:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/hunantv/media/player/a/a;->h:I

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/player/a/a;)Lcom/hunantv/media/player/a/a$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/a/a;->i:Lcom/hunantv/media/player/a/a$a;

    return-object p0
.end method

.method public static synthetic a(Lcom/hunantv/media/player/a/a;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/hunantv/media/player/a/a;->a:Z

    return p1
.end method

.method public static synthetic a(Lcom/hunantv/media/player/a/a;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/hunantv/media/player/a/a;->c:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/hunantv/media/player/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hunantv/media/player/a/a;->h:I

    return p0
.end method

.method public static synthetic c(Lcom/hunantv/media/player/a/a;)[Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/a/a;->c:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/a/a;->b:Lcom/hunantv/media/player/a/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/a/b;->b()I

    move-result p0

    add-int/2addr p0, p1

    return p0

    :cond_0
    const p0, 0x31128

    add-int/2addr p1, p0

    return p1
.end method

.method public a(Lcom/hunantv/media/player/a/a$a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/hunantv/media/player/a/a;->i:Lcom/hunantv/media/player/a/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/hunantv/media/player/a/a$b;Z)V
    .locals 2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hunantv/media/player/a/a;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/a/a;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/a/a;->c:[Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/player/a/a;->d:Lcom/hunantv/media/player/a/a$b;

    sget-object v0, Lcom/hunantv/media/player/a/a$2;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    new-instance p2, Lcom/hunantv/media/player/a/c;

    invoke-direct {p2}, Lcom/hunantv/media/player/a/c;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/player/a/a;->b:Lcom/hunantv/media/player/a/b;

    invoke-virtual {p2, p3}, Lcom/hunantv/media/player/a/b;->a(Z)Lcom/hunantv/media/player/a/b;

    iget-object p2, p0, Lcom/hunantv/media/player/a/a;->b:Lcom/hunantv/media/player/a/b;

    iget p3, p0, Lcom/hunantv/media/player/a/a;->g:I

    invoke-virtual {p2, p3}, Lcom/hunantv/media/player/a/b;->b(I)V

    iget-object p2, p0, Lcom/hunantv/media/player/a/a;->b:Lcom/hunantv/media/player/a/b;

    invoke-virtual {p2, p1}, Lcom/hunantv/media/player/a/b;->a(Ljava/lang/String;)Lcom/hunantv/media/player/a/b;

    move-result-object p1

    new-instance p2, Lcom/hunantv/media/player/a/a$1;

    invoke-direct {p2, p0}, Lcom/hunantv/media/player/a/a$1;-><init>(Lcom/hunantv/media/player/a/a;)V

    invoke-virtual {p1, p2}, Lcom/hunantv/media/player/a/b;->a(Lcom/hunantv/media/player/a/b$a;)Lcom/hunantv/media/player/a/b;

    new-instance p1, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/hunantv/media/player/a/a;->b:Lcom/hunantv/media/player/a/b;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "mgtvmp_jADns"

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/hunantv/media/player/a/a;->a:Z

    return p0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/hunantv/media/player/a/a;->g:I

    iget-object p0, p0, Lcom/hunantv/media/player/a/a;->b:Lcom/hunantv/media/player/a/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/a/b;->b(I)V

    :cond_0
    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/hunantv/media/player/a/a;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/a/a;->b:Lcom/hunantv/media/player/a/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/a/b;->e()V

    :cond_0
    return-void
.end method

.method public d()Lcom/hunantv/media/player/a/a$b;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/a/a;->d:Lcom/hunantv/media/player/a/a$b;

    return-object p0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/a/a;->b:Lcom/hunantv/media/player/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/a/b;->c()I

    move-result v0

    iput v0, p0, Lcom/hunantv/media/player/a/a;->f:I

    :cond_0
    iget p0, p0, Lcom/hunantv/media/player/a/a;->f:I

    return p0
.end method

.method public f()J
    .locals 4

    iget-wide v0, p0, Lcom/hunantv/media/player/a/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hunantv/media/player/a/a;->e:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v2
.end method
