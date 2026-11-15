.class public final synthetic Lcom/google/android/exoplayer2/drm/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/s$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/drm/s;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/o;->a:Lcom/google/android/exoplayer2/drm/s$a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/o;->b:Lcom/google/android/exoplayer2/drm/s;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/exoplayer2/drm/o;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/o;->a:Lcom/google/android/exoplayer2/drm/s$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/o;->b:Lcom/google/android/exoplayer2/drm/s;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/exoplayer2/drm/o;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/s$a;->d(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
