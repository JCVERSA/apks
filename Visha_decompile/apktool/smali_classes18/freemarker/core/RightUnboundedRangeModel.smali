.class abstract Lfreemarker/core/RightUnboundedRangeModel;
.super Lfreemarker/core/RangeModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lfreemarker/core/RangeModel;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getStep()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isAffactedByStringSlicingBug()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isRightAdaptive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isRightUnbounded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract synthetic size()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method
