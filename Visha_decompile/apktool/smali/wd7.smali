.class public final synthetic Lwd7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic c:Lcom/google/common/util/concurrent/g;

.field public final synthetic d:Landroidx/media3/exoplayer/drm/DrmSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/g;Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd7;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput-object p2, p0, Lwd7;->c:Lcom/google/common/util/concurrent/g;

    iput-object p3, p0, Lwd7;->d:Landroidx/media3/exoplayer/drm/DrmSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lwd7;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iget-object v1, p0, Lwd7;->c:Lcom/google/common/util/concurrent/g;

    iget-object p0, p0, Lwd7;->d:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v0, v1, p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->c(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/g;Landroidx/media3/exoplayer/drm/DrmSession;)V

    return-void
.end method
