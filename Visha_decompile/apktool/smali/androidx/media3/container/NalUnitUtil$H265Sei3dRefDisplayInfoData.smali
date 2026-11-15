.class public final Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265Sei3dRefDisplayInfoData"
.end annotation


# instance fields
.field public final exponentRefDisplayWidth:I

.field public final exponentRefViewingDist:I

.field public final leftViewId:I

.field public final mantissaRefDisplayWidth:I

.field public final mantissaRefViewingDist:I

.field public final numRefDisplays:I

.field public final precRefDisplayWidth:I

.field public final precRefViewingDist:I

.field public final rightViewId:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->precRefDisplayWidth:I

    iput p2, p0, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->precRefViewingDist:I

    iput p3, p0, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->numRefDisplays:I

    iput p4, p0, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->leftViewId:I

    iput p5, p0, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->rightViewId:I

    iput p6, p0, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->exponentRefDisplayWidth:I

    iput p7, p0, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->mantissaRefDisplayWidth:I

    iput p8, p0, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->exponentRefViewingDist:I

    iput p9, p0, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->mantissaRefViewingDist:I

    return-void
.end method
