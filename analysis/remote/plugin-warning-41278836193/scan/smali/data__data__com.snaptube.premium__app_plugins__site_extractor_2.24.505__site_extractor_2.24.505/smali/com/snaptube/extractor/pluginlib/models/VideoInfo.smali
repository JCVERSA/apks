.class public Lcom/snaptube/extractor/pluginlib/models/VideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/snaptube/extractor/pluginlib/models/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_TITLE_LENGTH:I = 0x32

.field public static final VIDEO_TYPE_LIVING:I = 0x2

.field public static final VIDEO_TYPE_POST_LIVE:I = 0x1


# instance fields
.field private alert:Ljava/lang/String;

.field private allFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;"
        }
    .end annotation
.end field

.field private artist:Ljava/lang/String;

.field private audioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private bitrateEstimate:J

.field private durationInSecond:J

.field private extractFrom:Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

.field private extractorType:Ljava/lang/String;

.field private formats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;"
        }
    .end annotation
.end field

.field private hasMoreData:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private transient isAllFormatsLoaded:Z

.field private isTitleExtracted:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private metaKey:Ljava/lang/String;

.field private multiMedia:Z

.field private playingFormat:Lcom/snaptube/extractor/pluginlib/models/Format;

.field private previewFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/youtube/q;",
            ">;"
        }
    .end annotation
.end field

.field private reportData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private source:Ljava/lang/String;

.field private subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnailUrl:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/youtube/v;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private videoType:I

.field private ytServerAbrStream:Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;->g:Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->extractFrom:Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isTitleExtracted:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;->g:Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->extractFrom:Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isTitleExtracted:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->title:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->thumbnailUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->alert:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->durationInSecond:J

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->source:Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    .line 13
    const-class v2, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->hasMoreData:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->metaKey:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->artist:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->subtitles:Ljava/util/List;

    .line 18
    const-class v1, Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->audioTracks:Ljava/util/List;

    .line 21
    const-class v1, Lcom/snaptube/extractor/pluginlib/models/AudioTrack;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->lambda$sortFormatsByOrder$0(Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;)I

    move-result p0

    return p0
.end method

.method public static filterM4A(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/snaptube/extractor/pluginlib/models/Format;->isAudio()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isM4aTag(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    if-nez v2, :cond_4

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_4
    return-object v0

    .line 65
    :cond_5
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/snaptube/extractor/pluginlib/models/VideoInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "title"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setTitle(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "thumbnailUrl"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setThumbnailUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "alert"

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setAlert(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "durationInSecond"

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-long v1, v1

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setDurationInSecond(J)V

    .line 41
    .line 42
    .line 43
    const-string v1, "source"

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setSource(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "hasMoreData"

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-direct {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setHasMoreData(Z)V

    .line 60
    .line 61
    .line 62
    const-string v1, "metaKey"

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setMetaKey(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "artist"

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setArtist(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "extractorType"

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setExtractorType(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v1, "multiMedia"

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setMultiMedia(Z)V

    .line 96
    .line 97
    .line 98
    const-string v1, "videoType"

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setVideoType(I)V

    .line 105
    .line 106
    .line 107
    const-string v1, "titleExtracted"

    .line 108
    .line 109
    const/4 v3, 0x1

    .line 110
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setTitleExtracted(Z)V

    .line 115
    .line 116
    .line 117
    const-string v1, "formats"

    .line 118
    .line 119
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_1

    .line 124
    .line 125
    new-instance v3, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-ge v4, v5, :cond_0

    .line 136
    .line 137
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-static {v5}, Lcom/snaptube/extractor/pluginlib/models/Format;->fromJson(Lorg/json/JSONObject;)Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    add-int/lit8 v4, v4, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0, v3}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setFormats(Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    :cond_1
    const-string v1, "audioTracks"

    .line 155
    .line 156
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-eqz v1, :cond_3

    .line 161
    .line 162
    new-instance v3, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .line 166
    .line 167
    const/4 v4, 0x0

    .line 168
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-ge v4, v5, :cond_2

    .line 173
    .line 174
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-static {v5}, Lcom/snaptube/extractor/pluginlib/models/AudioTrack;->fromJson(Lorg/json/JSONObject;)Lcom/snaptube/extractor/pluginlib/models/AudioTrack;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    add-int/lit8 v4, v4, 0x1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_2
    invoke-virtual {v0, v3}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setAudioTracks(Ljava/util/List;)V

    .line 189
    .line 190
    .line 191
    :cond_3
    const-string v1, "allFormats"

    .line 192
    .line 193
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    if-eqz v1, :cond_5

    .line 198
    .line 199
    new-instance v3, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    const/4 v4, 0x0

    .line 205
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-ge v4, v5, :cond_4

    .line 210
    .line 211
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-static {v5}, Lcom/snaptube/extractor/pluginlib/models/Format;->fromJson(Lorg/json/JSONObject;)Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    add-int/lit8 v4, v4, 0x1

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_4
    invoke-virtual {v0, v3}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setAllFormats(Ljava/util/List;)V

    .line 226
    .line 227
    .line 228
    :cond_5
    const-string v1, "subtitles"

    .line 229
    .line 230
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    if-eqz v1, :cond_7

    .line 235
    .line 236
    new-instance v3, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .line 240
    .line 241
    const/4 v4, 0x0

    .line 242
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-ge v4, v5, :cond_6

    .line 247
    .line 248
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-static {v5}, Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;->fromJson(Lorg/json/JSONObject;)Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    add-int/lit8 v4, v4, 0x1

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_6
    invoke-virtual {v0, v3}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setSubtitles(Ljava/util/List;)V

    .line 263
    .line 264
    .line 265
    :cond_7
    const-string v1, "frames"

    .line 266
    .line 267
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    if-eqz v1, :cond_9

    .line 272
    .line 273
    new-instance v3, Ljava/util/ArrayList;

    .line 274
    .line 275
    const/16 v4, 0x19

    .line 276
    .line 277
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    .line 279
    .line 280
    const/4 v4, 0x0

    .line 281
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    if-ge v4, v5, :cond_8

    .line 286
    .line 287
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-static {v5}, Lcom/snaptube/extractor/pluginlib/youtube/q;->a(Lorg/json/JSONObject;)Lcom/snaptube/extractor/pluginlib/youtube/q;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    add-int/lit8 v4, v4, 0x1

    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_8
    invoke-virtual {v0, v3}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setPreviewFrames(Ljava/util/List;)V

    .line 302
    .line 303
    .line 304
    :cond_9
    const-string v1, "reportData"

    .line 305
    .line 306
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    if-eqz v1, :cond_a

    .line 311
    .line 312
    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->jsonObject2map(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setReportData(Ljava/util/Map;)V

    .line 317
    .line 318
    .line 319
    :cond_a
    const-string v1, "thumbnails"

    .line 320
    .line 321
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    if-eqz v1, :cond_c

    .line 326
    .line 327
    new-instance v3, Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .line 331
    .line 332
    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-ge v2, v4, :cond_b

    .line 337
    .line 338
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-static {v4}, Lcom/snaptube/extractor/pluginlib/youtube/v;->a(Lorg/json/JSONObject;)Lcom/snaptube/extractor/pluginlib/youtube/v;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    add-int/lit8 v2, v2, 0x1

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_b
    invoke-virtual {v0, v3}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setThumbnails(Ljava/util/List;)V

    .line 353
    .line 354
    .line 355
    :cond_c
    const-string v1, "ytServerAbrStream"

    .line 356
    .line 357
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;->a(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    invoke-virtual {v0, p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setYtServerAbrStream(Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;)V

    .line 366
    .line 367
    .line 368
    return-object v0
.end method

.method private getClosestFormatForYoutube(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isMp3Tag(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isWebM2Mp3Tag(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_4

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_2
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isMp3Tag(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isWebM2Mp3Tag(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-static {v0, p1}, Lcom/snaptube/extractor/pluginlib/utils/P;->e(Ljava/util/List;Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_5
    invoke-static {p1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->queryCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_6

    .line 85
    .line 86
    const/4 p1, 0x0

    .line 87
    return-object p1

    .line 88
    :cond_6
    invoke-virtual {p0, p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getClosestFormat(Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;)Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1
.end method

.method private isUrlValid(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    const-string v1, "http"

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const-string v1, "https"

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    const-string v1, "intent"

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    return v0

    .line 54
    :cond_1
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :catchall_0
    return v0
.end method

.method public static isVideoInfoValid(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method private static jsonObject2map(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$sortFormatsByOrder$0(Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/Format;->getOrder()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getOrder()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sub-int/2addr p0, p1

    .line 10
    int-to-long p0, p0

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private static map2JsonObject(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .line 34
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    nop

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-object v0
.end method

.method private removeInvalidFormats(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {p0, v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isUrlValid(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-object v0
.end method

.method private setHasMoreData(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->hasMoreData:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public clone()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    .line 3
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 6
    invoke-virtual {v3}, Lcom/snaptube/extractor/pluginlib/models/Format;->clone()Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setFormats(Ljava/util/List;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->audioTracks:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->audioTracks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setAudioTracks(Ljava/util/List;)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->reportData:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->reportData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setReportData(Ljava/util/Map;)V

    :cond_4
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->clone()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlert()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->alert:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAllFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->allFormats:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->artist:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/AudioTrack;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->audioTracks:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBitrateEstimate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->bitrateEstimate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getClosestFormat(Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getClosestFormat(Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;Z)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p1

    return-object p1
.end method

.method public getClosestFormat(Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;Z)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 7

    .line 14
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getQualityId()I

    move-result v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getCodecId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getOrder(II)I

    move-result v0

    .line 16
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v3, 0x7fffffff

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 17
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isAudio()Z

    move-result v5

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->isAudio()Z

    move-result v6

    if-eq v5, v6, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 18
    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 19
    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getOriginCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    move-result-object v5

    if-nez v5, :cond_3

    .line 20
    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->queryCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_4

    .line 21
    invoke-virtual {v5}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isNeedNativeMux()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->getOrder()I

    move-result v5

    sub-int v5, v0, v5

    .line 23
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lt v6, v3, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ne v6, v3, :cond_1

    if-lez v5, :cond_1

    .line 24
    :cond_5
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move v3, v1

    move-object v1, v4

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public getClosestFormat(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isYoutube()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getClosestFormatForYoutube(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isFacebook()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/snaptube/extractor/pluginlib/utils/g;->b(Ljava/util/List;Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isInstagram()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/snaptube/extractor/pluginlib/utils/n;->c(Ljava/util/List;Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isTikTok()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/snaptube/extractor/pluginlib/utils/H;->a(Ljava/util/List;Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 11
    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snaptube/extractor/pluginlib/models/Format;

    return-object p1

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultFormat()Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 24
    :goto_1
    return-object v0
.end method

.method public getDurationInSecond()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->durationInSecond:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getExtractFrom()Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->extractFrom:Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtractorType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->extractorType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormatsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getFullTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMetaKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->metaKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayingFormat()Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->playingFormat:Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreloadFormat()Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/youtube/q;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->previewFrames:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReportData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->reportData:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->source:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubtitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->subtitles:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->thumbnailUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/youtube/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->thumbnails:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lj/c;->d()Lj/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj/c;->g()Lj/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lj/b;->q()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->title:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->title:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v2, 0x32

    .line 27
    .line 28
    if-le v1, v2, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_1
    return-object v0
.end method

.method public getTitleExtracted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isTitleExtracted:Z

    .line 2
    .line 3
    return v0
.end method

.method public getVideoType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->videoType:I

    .line 2
    .line 3
    return v0
.end method

.method public getYtServerAbrStream()Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->ytServerAbrStream:Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAllFormatsLoaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isAllFormatsLoaded:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFacebook()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/g;->f(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isInstagram()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/n;->f(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isMultiMedia()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->multiMedia:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTikTok()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/H;->b(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isTitleOrThumbnailInValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->title:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isTitleExtracted:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->thumbnailUrl:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    :cond_0
    return v1
.end method

.method public isYoutube()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/P;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method public mergeFormats(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getAlias()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getAlias()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getAlias()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    return-void
.end method

.method public putReportData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->reportData:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->reportData:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->reportData:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setAlert(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->alert:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAllFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->allFormats:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setAllFormatsLoaded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isAllFormatsLoaded:Z

    .line 2
    .line 3
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->artist:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAudioTracks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/AudioTrack;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->audioTracks:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setBitrateEstimate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->bitrateEstimate:J

    .line 2
    .line 3
    return-void
.end method

.method public setDurationInSecond(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->durationInSecond:J

    .line 2
    .line 3
    return-void
.end method

.method public setExtractFrom(Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->extractFrom:Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    .line 2
    .line 3
    return-void
.end method

.method public setExtractorType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->extractorType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setFormats(Ljava/util/List;Z)V

    return-void
.end method

.method public setFormats(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->removeInvalidFormats(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public setMetaKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->metaKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMultiMedia(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->multiMedia:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPlayingFormat(Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->playingFormat:Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 2
    .line 3
    return-void
.end method

.method public setPreviewFrames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/youtube/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->previewFrames:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setReportData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->reportData:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->source:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSubtitles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->subtitles:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->thumbnailUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/youtube/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->thumbnails:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    .line 4
    .line 5
    invoke-static {p1, v0}, Ljava/text/Normalizer;->isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->title:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->title:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public setTitleExtracted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isTitleExtracted:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->videoType:I

    .line 2
    .line 3
    return-void
.end method

.method public setYtServerAbrStream(Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->ytServerAbrStream:Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;

    .line 2
    .line 3
    return-void
.end method

.method public shouldFold(Lcom/snaptube/extractor/pluginlib/models/Format;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getQuality()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getQuality()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ne v3, v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getCodec()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getCodec()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ge v2, v3, :cond_1

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :cond_2
    return v1
.end method

.method public sortFormatsByOrder()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lcom/snaptube/extractor/pluginlib/models/a;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/snaptube/extractor/pluginlib/models/a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "title"

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFullTitle()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v1, "thumbnailUrl"

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "alert"

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getAlert()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v1, "durationInSecond"

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string v1, "source"

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v1, "hasMoreData"

    .line 52
    .line 53
    iget-boolean v2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->hasMoreData:Z

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    const-string v1, "metaKey"

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getMetaKey()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    const-string v1, "artist"

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getArtist()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v1, "extractorType"

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractorType()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    const-string v1, "multiMedia"

    .line 86
    .line 87
    iget-boolean v2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->multiMedia:Z

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    const-string v1, "videoType"

    .line 93
    .line 94
    iget v2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->videoType:I

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    const-string v1, "titleExtracted"

    .line 100
    .line 101
    iget-boolean v2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isTitleExtracted:Z

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    new-instance v1, Lorg/json/JSONArray;

    .line 107
    .line 108
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-eqz v2, :cond_0

    .line 116
    .line 117
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_0

    .line 126
    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/snaptube/extractor/pluginlib/models/Format;->toJson()Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    const-string v2, "formats"

    .line 142
    .line 143
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    new-instance v1, Lorg/json/JSONArray;

    .line 147
    .line 148
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->audioTracks:Ljava/util/List;

    .line 152
    .line 153
    if-eqz v2, :cond_1

    .line 154
    .line 155
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_1

    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Lcom/snaptube/extractor/pluginlib/models/AudioTrack;

    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/snaptube/extractor/pluginlib/models/AudioTrack;->toJson()Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_1
    const-string v2, "audioTracks"

    .line 180
    .line 181
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    .line 183
    .line 184
    new-instance v1, Lorg/json/JSONArray;

    .line 185
    .line 186
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->allFormats:Ljava/util/List;

    .line 190
    .line 191
    if-eqz v2, :cond_2

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_2

    .line 202
    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    check-cast v3, Lcom/snaptube/extractor/pluginlib/models/Format;

    .line 208
    .line 209
    invoke-virtual {v3}, Lcom/snaptube/extractor/pluginlib/models/Format;->toJson()Lorg/json/JSONObject;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_2
    const-string v2, "allFormats"

    .line 218
    .line 219
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    .line 221
    .line 222
    new-instance v1, Lorg/json/JSONArray;

    .line 223
    .line 224
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getPreviewFrames()Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    if-eqz v2, :cond_3

    .line 232
    .line 233
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-eqz v3, :cond_3

    .line 242
    .line 243
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    check-cast v3, Lcom/snaptube/extractor/pluginlib/youtube/q;

    .line 248
    .line 249
    invoke-virtual {v3}, Lcom/snaptube/extractor/pluginlib/youtube/q;->j()Lorg/json/JSONObject;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_3
    const-string v2, "frames"

    .line 258
    .line 259
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    .line 261
    .line 262
    const-string v1, "reportData"

    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getReportData()Ljava/util/Map;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-static {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->map2JsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    .line 274
    .line 275
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->subtitles:Ljava/util/List;

    .line 276
    .line 277
    if-eqz v1, :cond_5

    .line 278
    .line 279
    new-instance v1, Lorg/json/JSONArray;

    .line 280
    .line 281
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 282
    .line 283
    .line 284
    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->subtitles:Ljava/util/List;

    .line 285
    .line 286
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-eqz v3, :cond_4

    .line 295
    .line 296
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    check-cast v3, Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;

    .line 301
    .line 302
    invoke-static {v3}, Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;->toJson(Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;)Lorg/json/JSONObject;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_4
    const-string v2, "subtitles"

    .line 311
    .line 312
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    .line 314
    .line 315
    :cond_5
    new-instance v1, Lorg/json/JSONArray;

    .line 316
    .line 317
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnails()Ljava/util/List;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    if-eqz v2, :cond_6

    .line 325
    .line 326
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-eqz v3, :cond_6

    .line 335
    .line 336
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    check-cast v3, Lcom/snaptube/extractor/pluginlib/youtube/v;

    .line 341
    .line 342
    invoke-virtual {v3}, Lcom/snaptube/extractor/pluginlib/youtube/v;->b()Lorg/json/JSONObject;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 347
    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_6
    const-string v2, "thumbnails"

    .line 351
    .line 352
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    .line 354
    .line 355
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->ytServerAbrStream:Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;

    .line 356
    .line 357
    if-eqz v1, :cond_7

    .line 358
    .line 359
    const-string v2, "ytServerAbrStream"

    .line 360
    .line 361
    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;->c()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .line 367
    .line 368
    :cond_7
    return-object v0

    .line 369
    :catch_0
    const/4 v0, 0x0

    .line 370
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->title:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->thumbnailUrl:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->alert:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->durationInSecond:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->source:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->formats:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->hasMoreData:Z

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->metaKey:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->artist:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->subtitles:Ljava/util/List;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->audioTracks:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
