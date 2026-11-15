.class public abstract Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/transsion/audiotagger/tag/reference/Tagger;)Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating$1;->$SwitchMap$com$transsion$audiotagger$tag$reference$Tagger:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/reference/MediaPlayerRating;->getInstance()Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/reference/MediaPlayerRating;->getInstance()Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/reference/MediaMonkeyPlayerRating;->getInstance()Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/reference/ITunesRating;->getInstance()Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract convertRatingFromFiveStarScale(I)I
.end method

.method public abstract convertRatingToFiveStarScale(I)I
.end method
