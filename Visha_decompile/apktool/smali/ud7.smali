.class public final synthetic Lud7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic c:Landroidx/media3/exoplayer/drm/DrmSession;

.field public final synthetic d:Lcom/google/common/util/concurrent/g;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Landroidx/media3/exoplayer/drm/DrmSession;Lcom/google/common/util/concurrent/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud7;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput-object p2, p0, Lud7;->c:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object p3, p0, Lud7;->d:Lcom/google/common/util/concurrent/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lud7;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iget-object v1, p0, Lud7;->c:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object p0, p0, Lud7;->d:Lcom/google/common/util/concurrent/g;

    invoke-static {v0, v1, p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->a(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Landroidx/media3/exoplayer/drm/DrmSession;Lcom/google/common/util/concurrent/g;)V

    return-void
.end method
