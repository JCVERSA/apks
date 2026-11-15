.class public Lorg/mozilla/javascript/regexp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lorg/mozilla/javascript/regexp/RECompiled;

.field public c:I

.field public d:I

.field public e:[J

.field public f:Lzm8;

.field public g:Lxm8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/regexp/a;->e:[J

    aget-wide p0, p0, p1

    long-to-int p0, p0

    return p0
.end method

.method public b(I)I
    .locals 1

    iget-object p0, p0, Lorg/mozilla/javascript/regexp/a;->e:[J

    aget-wide p0, p0, p1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public c(III)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/a;->g:Lxm8;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lxm8;->g:[J

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/a;->e:[J

    if-ne v0, v1, :cond_0

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/a;->e:[J

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/a;->e:[J

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p2, p3

    const/16 v2, 0x20

    shl-long/2addr p2, v2

    or-long/2addr p2, v0

    aput-wide p2, p0, p1

    return-void
.end method
