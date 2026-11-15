.class public Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$ArtistCredit;,
        Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;,
        Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Artist;,
        Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$TextRepresentation;,
        Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Area;,
        Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$ReleaseEvent;
    }
.end annotation


# instance fields
.field private artistCredit:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artist-credit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$ArtistCredit;",
            ">;"
        }
    .end annotation
.end field

.field private disambiguation:Ljava/lang/String;

.field private firstReleaseDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first-release-date"
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private length:I

.field private releases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private video:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->releases:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->releases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;->getDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;->getDate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->firstReleaseDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Official"

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAlbumYear()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->firstReleaseDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->firstReleaseDate:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->artistCredit:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->artistCredit:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$ArtistCredit;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$ArtistCredit;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMusicName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getReleaseMbid()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->releases:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->releases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;->getDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;->getDate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->firstReleaseDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Official"

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean$Release;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
