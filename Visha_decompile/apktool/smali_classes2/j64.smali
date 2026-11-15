.class public final synthetic Lj64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/h;

.field public final synthetic b:Lcom/google/android/exoplayer2/drm/g$c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/g$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj64;->a:Lcom/google/android/exoplayer2/drm/h;

    iput-object p2, p0, Lj64;->b:Lcom/google/android/exoplayer2/drm/g$c;

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 7

    iget-object v0, p0, Lj64;->a:Lcom/google/android/exoplayer2/drm/h;

    iget-object v1, p0, Lj64;->b:Lcom/google/android/exoplayer2/drm/g$c;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/h;->d(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/g$c;Landroid/media/MediaDrm;[BII[B)V

    return-void
.end method
