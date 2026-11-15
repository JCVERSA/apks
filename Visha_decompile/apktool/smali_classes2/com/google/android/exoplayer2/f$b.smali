.class public final Lcom/google/android/exoplayer2/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:J

.field public d:F

.field public e:J

.field public f:J

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f7851ec    # 0.97f

    iput v0, p0, Lcom/google/android/exoplayer2/f$b;->a:F

    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/google/android/exoplayer2/f$b;->b:F

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f$b;->c:J

    const v0, 0x33d6bf95    # 1.0E-7f

    iput v0, p0, Lcom/google/android/exoplayer2/f$b;->d:F

    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Lblb;->t0(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f$b;->e:J

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lblb;->t0(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f$b;->f:J

    const v0, 0x3f7fbe77    # 0.999f

    iput v0, p0, Lcom/google/android/exoplayer2/f$b;->g:F

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/f;
    .locals 13

    new-instance v12, Lcom/google/android/exoplayer2/f;

    iget v1, p0, Lcom/google/android/exoplayer2/f$b;->a:F

    iget v2, p0, Lcom/google/android/exoplayer2/f$b;->b:F

    iget-wide v3, p0, Lcom/google/android/exoplayer2/f$b;->c:J

    iget v5, p0, Lcom/google/android/exoplayer2/f$b;->d:F

    iget-wide v6, p0, Lcom/google/android/exoplayer2/f$b;->e:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/f$b;->f:J

    iget v10, p0, Lcom/google/android/exoplayer2/f$b;->g:F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/f;-><init>(FFJFJJFLcom/google/android/exoplayer2/f$a;)V

    return-object v12
.end method
