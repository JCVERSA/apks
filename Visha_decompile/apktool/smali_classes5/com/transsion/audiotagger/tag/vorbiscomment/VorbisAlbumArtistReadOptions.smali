.class public final enum Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

.field public static final enum READ_ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

.field public static final enum READ_ALBUMARTIST_THEN_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

.field public static final enum READ_JRIVER_ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

.field public static final enum READ_JRIVER_THEN_ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;
    .locals 4

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    sget-object v1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_JRIVER_ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_ALBUMARTIST_THEN_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    sget-object v3, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_JRIVER_THEN_ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    const-string v1, "READ_ALBUMARTIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    new-instance v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    const-string v1, "READ_JRIVER_ALBUMARTIST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_JRIVER_ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    new-instance v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    const-string v1, "READ_ALBUMARTIST_THEN_JRIVER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_ALBUMARTIST_THEN_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    new-instance v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    const-string v1, "READ_JRIVER_THEN_ALBUMARTIST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_JRIVER_THEN_ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    invoke-static {}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->$values()[Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->$VALUES:[Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->$VALUES:[Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    return-object v0
.end method
