.class public final Lcom/google/android/exoplayer2/source/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Lbb;

.field public d:Lcom/google/android/exoplayer2/source/o$a;


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/o$a;->c(JI)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/source/o$a;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/o$a;->d:Lcom/google/android/exoplayer2/source/o$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/o$a;->d:Lcom/google/android/exoplayer2/source/o$a;

    return-object v1
.end method

.method public b(Lbb;Lcom/google/android/exoplayer2/source/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/o$a;->d:Lcom/google/android/exoplayer2/source/o$a;

    return-void
.end method

.method public c(JI)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/o$a;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/o$a;->b:J

    return-void
.end method

.method public d(J)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/o$a;->a:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    iget p0, p0, Lbb;->b:I

    add-int/2addr p1, p0

    return p1
.end method

.method public getAllocation()Lbb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbb;

    return-object p0
.end method

.method public next()Lcb$a;
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/o$a;->d:Lcom/google/android/exoplayer2/source/o$a;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
