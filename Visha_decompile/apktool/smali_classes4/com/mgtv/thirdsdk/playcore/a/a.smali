.class public Lcom/mgtv/thirdsdk/playcore/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/a/a;->f:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/a/a;->f:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/mgtv/thirdsdk/playcore/a/a;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/a/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/a/a;->a:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/a/a;->a:I

    return p0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/a/a;->c:I

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/a/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/a/a;->c:I

    return p0
.end method

.method public f()J
    .locals 4

    iget-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/a/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
