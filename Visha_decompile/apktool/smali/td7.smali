.class public final synthetic Ltd7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic c:I

.field public final synthetic d:[B

.field public final synthetic e:Lcom/google/common/util/concurrent/g;

.field public final synthetic f:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;I[BLcom/google/common/util/concurrent/g;Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltd7;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput p2, p0, Ltd7;->c:I

    iput-object p3, p0, Ltd7;->d:[B

    iput-object p4, p0, Ltd7;->e:Lcom/google/common/util/concurrent/g;

    iput-object p5, p0, Ltd7;->f:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ltd7;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iget v1, p0, Ltd7;->c:I

    iget-object v2, p0, Ltd7;->d:[B

    iget-object v3, p0, Ltd7;->e:Lcom/google/common/util/concurrent/g;

    iget-object p0, p0, Ltd7;->f:Landroidx/media3/common/Format;

    invoke-static {v0, v1, v2, v3, p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->d(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;I[BLcom/google/common/util/concurrent/g;Landroidx/media3/common/Format;)V

    return-void
.end method
