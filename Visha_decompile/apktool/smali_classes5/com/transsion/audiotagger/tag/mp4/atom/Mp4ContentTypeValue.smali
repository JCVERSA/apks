.class public final enum Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum AUDIO_BOOK:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum BOOKLET:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum BOOKMARK:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum MOVIE:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum MUSIC_VIDEO:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum NORMAL:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum SHORT_FILM:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum TV_SHOW:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;
    .locals 8

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->MOVIE:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->NORMAL:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->AUDIO_BOOK:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    sget-object v3, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->BOOKMARK:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    sget-object v4, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->MUSIC_VIDEO:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    sget-object v5, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->SHORT_FILM:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    sget-object v6, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->TV_SHOW:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    sget-object v7, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->BOOKLET:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    filled-new-array/range {v0 .. v7}, [Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const/4 v1, 0x0

    const-string v2, "Movie"

    const-string v3, "MOVIE"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->MOVIE:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const/4 v1, 0x1

    const-string v2, "Normal"

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->NORMAL:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const/4 v1, 0x2

    const-string v2, "AudioBook"

    const-string v3, "AUDIO_BOOK"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->AUDIO_BOOK:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "BOOKMARK"

    const/4 v2, 0x3

    const-string v3, "Whacked Bookmark"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->BOOKMARK:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "MUSIC_VIDEO"

    const/4 v2, 0x4

    const-string v3, "Music Video"

    const/4 v5, 0x6

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->MUSIC_VIDEO:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "Short Film"

    const/16 v2, 0x9

    const-string v3, "SHORT_FILM"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->SHORT_FILM:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "TV Show"

    const/16 v2, 0xa

    const-string v3, "TV_SHOW"

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->TV_SHOW:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "Booklet"

    const/16 v2, 0xb

    const-string v3, "BOOKLET"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->BOOKLET:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    invoke-static {}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->$values()[Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->$VALUES:[Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->description:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->$VALUES:[Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->id:I

    return p0
.end method

.method public getIdAsString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4ContentTypeValue;->id:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
