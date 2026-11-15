.class public final Landroidx/media3/container/NalUnitUtil$H265SpsData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265SpsData"
.end annotation


# instance fields
.field public final bitDepthChromaMinus8:I

.field public final bitDepthLumaMinus8:I

.field public final chromaFormatIdc:I

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final maxNumReorderPics:I

.field public final maxSubLayersMinus1:I

.field public final nalHeader:Landroidx/media3/container/NalUnitUtil$H265NalHeader;

.field public final pixelWidthHeightRatio:F

.field public final profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;ILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;IIIIIIFIIII)V
    .locals 0
    .param p3    # Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->nalHeader:Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    iput p2, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxSubLayersMinus1:I

    iput-object p3, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iput p4, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->chromaFormatIdc:I

    iput p5, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    iput p6, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    iput p7, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->seqParameterSetId:I

    iput p8, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    iput p9, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    iput p10, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    iput p11, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    iput p12, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    iput p13, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    iput p14, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    return-void
.end method
