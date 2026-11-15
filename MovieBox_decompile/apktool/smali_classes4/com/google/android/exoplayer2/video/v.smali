.class public final synthetic Lcom/google/android/exoplayer2/video/v;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/video/w$a;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/w$a;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/v;->a:Lcom/google/android/exoplayer2/video/w$a;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/v;->b:J

    .line 7
    .line 8
    iput p4, p0, Lcom/google/android/exoplayer2/video/v;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/v;->a:Lcom/google/android/exoplayer2/video/w$a;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/exoplayer2/video/v;->b:J

    .line 4
    .line 5
    iget v3, p0, Lcom/google/android/exoplayer2/video/v;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/video/w$a;->e(Lcom/google/android/exoplayer2/video/w$a;JI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
