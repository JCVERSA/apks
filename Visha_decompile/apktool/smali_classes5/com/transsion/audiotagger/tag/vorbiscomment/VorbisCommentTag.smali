.class public Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;
.super Lcom/transsion/audiotagger/audio/generic/AbstractTag;
.source "SourceFile"


# static fields
.field public static final DEFAULT_VENDOR:Ljava/lang/String; = "jaudiotagger"

.field private static tagFieldToOggField:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            "Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ACOUSTID_FINGERPRINT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ACOUSTID_FINGERPRINT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ACOUSTID_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ACOUSTID_ID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTISTS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTISTS:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTISTS_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTISTSSORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTISTSORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMSORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->AMAZON_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ASIN:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARRANGER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARRANGER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARRANGER_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARRANGER_SORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTISTS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARTISTS:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTISTS_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARTISTS_SORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARTISTSORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->BARCODE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->BARCODE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->BPM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->BPM:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CATALOG_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CATALOGNUMBER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CHOIR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CHOIR:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CHOIR_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CHOIR_SORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CLASSICAL_CATALOG:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CLASSICAL_CATALOG:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CLASSICAL_NICKNAME:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CLASSICAL_NICKNAME:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COMPOSER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COMPOSER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COMPOSER_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COMPOSERSORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COPYRIGHT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COPYRIGHT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CONDUCTOR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CONDUCTOR:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CONDUCTOR_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CONDUCTOR_SORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COUNTRY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COUNTRY:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->METADATA_BLOCK_PICTURE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM1:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CUSTOM1:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM2:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CUSTOM2:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM3:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CUSTOM3:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM4:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CUSTOM4:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM5:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CUSTOM5:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->DISCNUMBER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_SUBTITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->DISCSUBTITLE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->DISCTOTAL:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DJMIXER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->DJMIXER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ENCODER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ENGINEER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ENGINEER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ENSEMBLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ENSEMBLE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ENSEMBLE_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ENSEMBLE_SORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->FBPM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->FBPM:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->GENRE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->GROUP:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->GROUP:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->GROUPING:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->GROUPING:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->INSTRUMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->INSTRUMENT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->INVOLVED_PERSON:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->INVOLVED_PERSON:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ISRC:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ISRC:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->IS_CLASSICAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->IS_CLASSICAL:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->IS_COMPILATION:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COMPILATION:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->IS_SOUNDTRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->IS_SOUNDTRACK:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->KEY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->KEY:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->LANGUAGE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->LANGUAGE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->LYRICIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->LYRICIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->LYRICS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->LYRICS:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MEDIA:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MEDIA:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MIXER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MIXER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_ACOUSTIC:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_ACOUSTIC:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_AGGRESSIVE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_AGGRESSIVE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_AROUSAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_AROUSAL:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_DANCEABILITY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_DANCEABILITY:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_ELECTRONIC:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_ELECTRONIC:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_HAPPY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_HAPPY:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_INSTRUMENTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_INSTRUMENTAL:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_PARTY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_PARTY:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_RELAXED:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_RELAXED:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_SAD:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_SAD:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_VALENCE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_VALENCE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOVEMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOVEMENT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOVEMENT_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOVEMENT_NO:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOVEMENT_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOVEMENT_TOTAL:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_ARTISTID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_ARTISTID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_DISC_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_DISCID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_ORIGINAL_RELEASE_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_ORIGINAL_ALBUMID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_ALBUMARTISTID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_ALBUMID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->RELEASECOUNTRY:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_GROUP_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_RELEASEGROUPID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_ALBUMSTATUS:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TRACK_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_RELEASETRACKID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_ALBUMTYPE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_TRACK_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_TRACKID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_COMPOSITION:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_COMPOSITION:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_COMPOSITION_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_COMPOSITION_ID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORKID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_ID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_TYPE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_ID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_TYPE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_ID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_TYPE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_ID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_TYPE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_ID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_TYPE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_ID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_TYPE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICIP_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICIP_PUID:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->OCCASION:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->OCCASION:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->OPUS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->OPUS:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORCHESTRA:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ORCHESTRA:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORCHESTRA_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ORCHESTRA_SORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORIGINAL_ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ORIGINAL_ALBUM:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORIGINAL_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ORIGINAL_ARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORIGINAL_LYRICIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ORIGINAL_LYRICIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORIGINAL_YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ORIGINAL_YEAR:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PART:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PART:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PART_NUMBER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PART_NUMBER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PART_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PART_TYPE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PERFORMER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PERFORMER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PERFORMER_NAME:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PERFORMER_NAME:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PERFORMER_NAME_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PERFORMER_NAME_SORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PERIOD:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PERIOD:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PRODUCER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PRODUCER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->QUALITY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->QUALITY:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->RANKING:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->RANKING:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->RATING:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->RATING:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->RECORD_LABEL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->LABEL:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->REMIXER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->REMIXER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->SCRIPT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->SCRIPT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->SINGLE_DISC_TRACK_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->SINGLE_DISC_TRACK_NO:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->SUBTITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->SUBTITLE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TAGS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TAGS:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TEMPO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TEMPO:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TIMBRE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TIMBRE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TITLE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE_MOVEMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TITLE_MOVEMENT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TITLESORT:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TONALITY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TONALITY:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TRACKNUMBER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TRACKTOTAL:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_DISCOGS_ARTIST_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_DISCOGS_ARTIST_SITE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_DISCOGS_RELEASE_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_DISCOGS_RELEASE_SITE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_LYRICS_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_LYRICS_SITE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_OFFICIAL_ARTIST_SITE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_OFFICIAL_RELEASE_SITE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->WORK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->WORK:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->WORK_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->WORK_TYPE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->DATE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;-><init>()V

    return-void
.end method

.method private createMetadataBlockDataPicture(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->isLinked()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getPictureType()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "-->"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->setImageFromData()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v1

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getPictureType()I

    move-result v2

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getWidth()I

    move-result v5

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/tag/FieldDataInvalidException;

    const-string p1, "Unable to create MetadataBlockDataPicture from buffered"

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createNewTag()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;
    .locals 2

    new-instance v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;-><init>()V

    const-string v1, "jaudiotagger"

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->setVendor(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public varargs addField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 7
    aget-object p2, p2, v0

    if-eqz p2, :cond_6

    .line 8
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_5

    .line 9
    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getVorbisAlbumArtistSaveOptions()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 12
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void

    .line 14
    :cond_1
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 16
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_2
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void

    .line 19
    :cond_3
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 21
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_4
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void

    .line 24
    :cond_5
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    :goto_0
    return-void

    .line 26
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addField(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    :goto_0
    return-void
.end method

.method public addField(Lcom/transsion/audiotagger/tag/images/Artwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public createCompilationField(Z)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->IS_COMPILATION:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0
.end method

.method public varargs createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createMetadataBlockDataPicture(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getRawContent()[B

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/util/Base64Coder;->encode([B)[C

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 10
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->METADATA_BLOCK_PICTURE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 3
    new-instance p0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createField(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0

    if-eqz p2, :cond_0

    .line 6
    new-instance p0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteArtworkField()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->METADATA_BLOCK_PICTURE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERARTMIME:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    return-void
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_3

    .line 2
    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getVorbisAlbumArtistSaveOptions()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    .line 5
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    return-void

    .line 6
    :cond_1
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    return-void

    .line 7
    :cond_2
    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 8
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    return-void

    .line 9
    :cond_3
    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    :goto_0
    return-void

    .line 11
    :cond_4
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public get(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getArtworkBinaryData()[B
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirst(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/vorbiscomment/util/Base64Coder;->decode([C)[B

    move-result-object p0

    return-object p0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->getArtworkBinaryData()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->getArtworkBinaryData()[B

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/transsion/audiotagger/tag/images/ArtworkFactory;->getNew()Lcom/transsion/audiotagger/tag/images/Artwork;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->getArtworkMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/audiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->getArtworkBinaryData()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/audiotagger/tag/images/Artwork;->setBinaryData([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->METADATA_BLOCK_PICTURE:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->get(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/TagField;

    :try_start_0
    check-cast v1, Lcom/transsion/audiotagger/tag/TagTextField;

    invoke-interface {v1}, Lcom/transsion/audiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/audiotagger/tag/vorbiscomment/util/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v2}, Lcom/transsion/audiotagger/tag/images/ArtworkFactory;->createArtworkFromMetadataBlockDataPicture(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)Lcom/transsion/audiotagger/tag/images/Artwork;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/transsion/audiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method public getArtworkMimeType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERARTMIME:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirst(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getFirst(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_7

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions:[I

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getVorbisAlbumArtisReadOptions()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0

    :cond_1
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1

    :cond_3
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p1

    :cond_5
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Z
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAllowedEncoding(Ljava/nio/charset/Charset;)Z
    .locals 0

    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setArtworkField([BLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/util/Base64Coder;->encode([B)[C

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    new-instance p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;

    sget-object v1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;

    sget-object v1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERARTMIME:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public varargs setField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 7
    aget-object p2, p2, v0

    if-eqz p2, :cond_6

    .line 8
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_5

    .line 9
    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getVorbisAlbumArtistSaveOptions()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 12
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void

    .line 14
    :cond_1
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 16
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_2
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void

    .line 19
    :cond_3
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 21
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_4
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void

    .line 24
    :cond_5
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    :goto_0
    return-void

    .line 26
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setField(Lcom/transsion/audiotagger/tag/images/Artwork;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 2
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirst(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    .line 4
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERARTMIME:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    :cond_0
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "jaudiotagger"

    :cond_0
    new-instance v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;

    sget-object v1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OGG "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
