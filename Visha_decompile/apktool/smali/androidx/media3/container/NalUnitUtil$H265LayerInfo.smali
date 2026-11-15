.class public final Landroidx/media3/container/NalUnitUtil$H265LayerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265LayerInfo"
.end annotation


# instance fields
.field public final layerIdInVps:I

.field public final viewId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->layerIdInVps:I

    iput p2, p0, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    return-void
.end method
