.class public Lcom/transsion/audiotagger/tag/id3/reference/MediaMonkeyPlayerRating;
.super Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;
.source "SourceFile"


# static fields
.field private static rating:Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/reference/MediaMonkeyPlayerRating;->rating:Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/reference/MediaMonkeyPlayerRating;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/reference/MediaMonkeyPlayerRating;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/reference/MediaMonkeyPlayerRating;->rating:Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/reference/MediaMonkeyPlayerRating;->rating:Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;

    return-object v0
.end method


# virtual methods
.method public convertRatingFromFiveStarScale(I)I
    .locals 2

    if-ltz p1, :cond_5

    const/4 p0, 0x5

    if-gt p1, p0, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    goto :goto_0

    :cond_1
    const/16 v0, 0xc4

    goto :goto_0

    :cond_2
    const/16 v0, 0x80

    goto :goto_0

    :cond_3
    const/16 v0, 0x40

    :cond_4
    :goto_0
    return v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convert Ratings from Five Star Scale accepts values from 0 to 5 not:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public convertRatingToFiveStarScale(I)I
    .locals 2

    const/4 p0, 0x0

    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    :goto_0
    move p0, v0

    goto :goto_2

    :cond_1
    const/16 v1, 0x8

    if-gt p1, v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p0, 0x12

    if-gt p1, p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0x1c

    if-gt p1, p0, :cond_4

    goto :goto_0

    :cond_4
    if-gt p1, p0, :cond_5

    goto :goto_0

    :cond_5
    if-gt p1, p0, :cond_6

    goto :goto_0

    :cond_6
    if-gt p1, p0, :cond_7

    goto :goto_0

    :cond_7
    const/16 p0, 0x1d

    const/4 v1, 0x2

    if-gt p1, p0, :cond_8

    :goto_1
    move p0, v1

    goto :goto_2

    :cond_8
    const/16 p0, 0x27

    if-gt p1, p0, :cond_9

    goto :goto_0

    :cond_9
    const/16 p0, 0x31

    if-gt p1, p0, :cond_a

    goto :goto_0

    :cond_a
    const/16 p0, 0x71

    if-gt p1, p0, :cond_b

    goto :goto_1

    :cond_b
    const/16 p0, 0xa7

    if-gt p1, p0, :cond_c

    const/4 p0, 0x3

    goto :goto_2

    :cond_c
    const/16 p0, 0xda

    if-gt p1, p0, :cond_d

    const/4 p0, 0x4

    goto :goto_2

    :cond_d
    const/4 p0, 0x5

    :goto_2
    return p0
.end method
