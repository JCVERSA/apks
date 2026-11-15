.class public abstract Lorg/schabi/newpipe/extractor/InfoItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/InfoItem$InfoType;
    }
.end annotation


# instance fields
.field private final infoType:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

.field private final name:Ljava/lang/String;

.field private final serviceId:I

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->thumbnails:Ljava/util/List;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/InfoItem;->infoType:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    iput p2, p0, Lorg/schabi/newpipe/extractor/InfoItem;->serviceId:I

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/InfoItem;->url:Ljava/lang/String;

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/InfoItem;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->infoType:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceId()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->serviceId:I

    return p0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->thumbnails:Ljava/util/List;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/InfoItem;->thumbnails:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/InfoItem;->url:Ljava/lang/String;

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/InfoItem;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[url=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", name=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
