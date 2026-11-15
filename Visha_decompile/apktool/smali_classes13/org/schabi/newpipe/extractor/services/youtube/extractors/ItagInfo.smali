.class final Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final content:Ljava/lang/String;

.field private isUrl:Z

.field private final itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->content:Ljava/lang/String;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getIsUrl()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->isUrl:Z

    return p0
.end method

.method public getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object p0
.end method

.method public setIsUrl(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->isUrl:Z

    return-void
.end method
