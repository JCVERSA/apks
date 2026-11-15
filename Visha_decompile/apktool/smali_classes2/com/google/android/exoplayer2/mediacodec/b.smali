.class public final Lcom/google/android/exoplayer2/mediacodec/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/c$b;


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/mediacodec/c$a;)Lcom/google/android/exoplayer2/mediacodec/c;
    .locals 3

    sget v0, Lblb;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/b;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_1

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/c$a;->c:Lcom/google/android/exoplayer2/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-static {v0}, Lqp6;->f(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lblb;->e0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMCodecAdapterFactory"

    invoke-static {v2, v1}, Lop5;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/a$b;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->b:Z

    invoke-direct {v1, v0, p0}, Lcom/google/android/exoplayer2/mediacodec/a$b;-><init>(IZ)V

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/a$b;->d(Lcom/google/android/exoplayer2/mediacodec/c$a;)Lcom/google/android/exoplayer2/mediacodec/a;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/mediacodec/f$b;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/f$b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/f$b;->a(Lcom/google/android/exoplayer2/mediacodec/c$a;)Lcom/google/android/exoplayer2/mediacodec/c;

    move-result-object p0

    return-object p0
.end method
