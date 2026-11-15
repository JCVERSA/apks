.class public final synthetic Lh64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnExpirationUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/h;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/g$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh64;->a:Lcom/google/android/exoplayer2/drm/h;

    return-void
.end method


# virtual methods
.method public final onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V
    .locals 6

    iget-object v0, p0, Lh64;->a:Lcom/google/android/exoplayer2/drm/h;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/h;->e(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/g$d;Landroid/media/MediaDrm;[BJ)V

    return-void
.end method
