.class abstract Lfreemarker/core/RangeModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnga;
.implements Ljava/io/Serializable;


# instance fields
.field private final begin:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfreemarker/core/RangeModel;->begin:I

    return-void
.end method


# virtual methods
.method public final get(I)Lzfa;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/RangeModel;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Lfreemarker/core/RangeModel;->begin:I

    int-to-long v0, v0

    invoke-virtual {p0}, Lfreemarker/core/RangeModel;->getStep()I

    move-result p0

    int-to-long v2, p0

    int-to-long p0, p1

    mul-long/2addr v2, p0

    add-long/2addr v0, v2

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    new-instance p0, Lfreemarker/template/SimpleNumber;

    long-to-int p1, v0

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Lfreemarker/template/SimpleNumber;

    invoke-direct {p0, v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(J)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lfreemarker/core/_TemplateModelException;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-string p1, " is out of bounds."

    const-string v1, "Range item index "

    filled-new-array {v1, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p0
.end method

.method public final getBegining()I
    .locals 0

    iget p0, p0, Lfreemarker/core/RangeModel;->begin:I

    return p0
.end method

.method public abstract getStep()I
.end method

.method public abstract isAffactedByStringSlicingBug()Z
.end method

.method public abstract isRightAdaptive()Z
.end method

.method public abstract isRightUnbounded()Z
.end method

.method public abstract synthetic size()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method
