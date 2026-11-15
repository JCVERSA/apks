.class public Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "SourceFile"


# instance fields
.field private description:Lorg/schabi/newpipe/extractor/stream/Description;

.field private playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

.field private streamCount:J

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->PLAYLIST:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->streamCount:J

    return-void
.end method


# virtual methods
.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object p0
.end method

.method public getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object p0
.end method

.method public getStreamCount()J
    .locals 2

    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->streamCount:J

    return-wide v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderName:Ljava/lang/String;

    return-object p0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isUploaderVerified()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderVerified:Z

    return p0
.end method

.method public setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    return-void
.end method

.method public setPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-void
.end method

.method public setStreamCount(J)V
    .locals 0

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->streamCount:J

    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderUrl:Ljava/lang/String;

    return-void
.end method

.method public setUploaderVerified(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderVerified:Z

    return-void
.end method
