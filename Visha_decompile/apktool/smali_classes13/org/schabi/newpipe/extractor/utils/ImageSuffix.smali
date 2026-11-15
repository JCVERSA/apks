.class public final Lorg/schabi/newpipe/extractor/utils/ImageSuffix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final height:I

.field private final resolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

.field private final suffix:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->suffix:Ljava/lang/String;

    iput p2, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->height:I

    iput p3, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->width:I

    const-string p1, "estimatedResolutionLevel is null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->resolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->height:I

    return p0
.end method

.method public getResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->resolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->width:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->suffix:Ljava/lang/String;

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->height:I

    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->width:I

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->resolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageSuffix {suffix="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resolutionLevel="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
