.class public final synthetic Lf64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/h;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/g$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf64;->a:Lcom/google/android/exoplayer2/drm/h;

    return-void
.end method


# virtual methods
.method public final onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 6

    iget-object v0, p0, Lf64;->a:Lcom/google/android/exoplayer2/drm/h;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/h;->c(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/g$e;Landroid/media/MediaDrm;[BLjava/util/List;Z)V

    return-void
.end method
