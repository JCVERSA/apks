.class final Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/effect/ByteBufferConcurrentEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PixelBufferObjectInfo"
.end annotation


# instance fields
.field public final id:I

.field public final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;->size:I

    invoke-static {p1}, Landroidx/media3/common/util/GlUtil;->createPixelBufferObject(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;->id:I

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget p0, p0, Landroidx/media3/effect/ByteBufferConcurrentEffect$PixelBufferObjectInfo;->id:I

    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->deleteBuffer(I)V

    return-void
.end method
