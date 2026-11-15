.class public Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;
.super Lcom/transsion/audiotagger/audio/generic/AbstractTag;
.source "SourceFile"


# static fields
.field private static final tagFieldToMp4Field:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            "Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ACOUSTID_FINGERPRINT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ACOUSTID_FINGERPRINT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ACOUSTID_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ACOUSTID_ID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ALBUM_ARTIST_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTISTS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ALBUM_ARTISTS:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTISTS_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ALBUM_ARTISTS_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ALBUM_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->AMAZON_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ASIN:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARRANGER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARRANGER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARRANGER_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARRANGER_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTISTS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARTISTS:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARTIST_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTISTS_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARTISTS_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->BARCODE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->BARCODE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->BPM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->BPM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CATALOG_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->CATALOGNO:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CHOIR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->CHOIR:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CHOIR_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->CHOIR_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CLASSICAL_CATALOG:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->CLASSICAL_CATALOG:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CLASSICAL_NICKNAME:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->CLASSICAL_NICKNAME:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COMPOSER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->COMPOSER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COMPOSER_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->COMPOSER_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CONDUCTOR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->CONDUCTOR:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COUNTRY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->COUNTRY:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CONDUCTOR_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->CONDUCTOR_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COPYRIGHT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->COPYRIGHT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM1:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_1:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM2:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_2:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM3:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_3:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM4:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_4:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM5:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_5:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_SUBTITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->DISC_SUBTITLE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DJMIXER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->DJMIXER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_ELECTRONIC:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOOD_ELECTRONIC:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ENCODER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ENCODER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ENGINEER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ENGINEER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ENSEMBLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ENSEMBLE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ENSEMBLE_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ENSEMBLE_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->FBPM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->FBPM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->GROUP:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GROUP:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->GROUPING:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GROUPING:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->INSTRUMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->INSTRUMENT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->INVOLVED_PERSON:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->INVOLVED_PEOPLE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ISRC:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ISRC:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->IS_COMPILATION:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->IS_CLASSICAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->IS_CLASSICAL:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->IS_SOUNDTRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->IS_SOUNDTRACK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->KEY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->KEY:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->LANGUAGE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->LANGUAGE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->LYRICIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->LYRICIST:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->LYRICS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->LYRICS:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MEDIA:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MEDIA:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MIXER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MIXER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOOD:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_ACOUSTIC:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOOD_ACOUSTIC:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_AGGRESSIVE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOOD_AGGRESSIVE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_AROUSAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOOD_AROUSAL:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_DANCEABILITY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOOD_DANCEABILITY:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_HAPPY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOOD_HAPPY:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_INSTRUMENTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOOD_INSTRUMENTAL:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_PARTY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOOD_PARTY:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_RELAXED:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOOD_RELAXED:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_SAD:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOOD_SAD:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_VALENCE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOOD_VALENCE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOVEMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOVEMENT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOVEMENT_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOVEMENT_NO:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOVEMENT_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MOVEMENT_TOTAL:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_ARTISTID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ARTISTID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_DISC_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_DISCID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_ORIGINAL_RELEASE_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ORIGINALALBUMID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUMARTISTID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUMID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->RELEASECOUNTRY:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_GROUP_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_RELEASE_GROUPID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUM_STATUS:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TRACK_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_RELEASE_TRACKID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUM_TYPE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_TRACK_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_TRACKID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORKID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_COMPOSITION_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_COMPOSITION_ID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_ID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_COMPOSITION:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_COMPOSITION:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_TYPE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_ID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_TYPE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_ID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_TYPE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_ID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_TYPE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_ID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_TYPE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_ID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_TYPE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICIP_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MUSICIP_PUID:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->OCCASION:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MM_OCCASION:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->OPUS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->OPUS:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORCHESTRA:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ORCHESTRA:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORCHESTRA_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ORCHESTRA_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORIGINAL_ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_ALBUM_TITLE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORIGINAL_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_ARTIST:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORIGINAL_LYRICIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_LYRICIST:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORIGINAL_YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_YEAR:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PART:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->PART:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PART_NUMBER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->PART_NUMBER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PART_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->PART_TYPE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PERFORMER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->PERFORMER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PERFORMER_NAME:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->PERFORMER_NAME:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PERFORMER_NAME_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->PERFORMER_NAME_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PERIOD:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->PERIOD:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PRODUCER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->PRODUCER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->QUALITY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->MM_QUALITY:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->RANKING:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->RANKING:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->RATING:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->SCORE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->RECORD_LABEL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->LABEL:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->REMIXER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->REMIXER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->SCRIPT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->SCRIPT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->SINGLE_DISC_TRACK_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->SINGLE_DISC_TRACK_NO:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->SUBTITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->SUBTITLE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TAGS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->TAGS:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TEMPO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->TEMPO:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TIMBRE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->TIMBRE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE_MOVEMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->TITLE_MOVEMENT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->TITLE_SORT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TONALITY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->TONALITY:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_DISCOGS_ARTIST_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->URL_DISCOGS_ARTIST_SITE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_DISCOGS_RELEASE_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->URL_DISCOGS_RELEASE_SITE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_LYRICS_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->URL_LYRICS_SITE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->WORK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->WORK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->DAY:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->WORK_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->WORK_TYPE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;-><init>()V

    return-void
.end method

.method private createGenreField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4GenreField;->isValidGenre(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4GenreField;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public varargs addField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->setField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public createArtworkField([B)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;-><init>([B)V

    return-object p0
.end method

.method public createCompilationField(Z)Lcom/transsion/audiotagger/tag/TagField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagByteField;->TRUE_VALUE:Ljava/lang/String;

    new-instance p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagByteField;

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v1

    invoke-direct {p1, v0, p0, v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    return-object p1

    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagByteField;->FALSE_VALUE:Ljava/lang/String;

    new-instance p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagByteField;

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v1

    invoke-direct {p1, v0, p0, v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    return-object p1
.end method

.method public varargs createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    .line 2
    aget-object p2, p2, v0

    .line 3
    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    if-eq p1, v1, :cond_3

    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_7

    .line 5
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;

    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 7
    :cond_1
    invoke-static {p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4GenreField;->isValidGenre(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4GenreField;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 9
    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;

    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 10
    :cond_3
    :goto_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v1, :cond_4

    .line 11
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    invoke-direct {p0, v2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;-><init>(I)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 12
    :cond_4
    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_5

    .line 13
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    invoke-direct {p0, v0, v2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;-><init>(II)V

    return-object p0

    .line 14
    :cond_5
    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_6

    .line 15
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {p0, v2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(I)V

    return-object p0

    .line 16
    :cond_6
    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_7

    .line 17
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {p0, v0, v2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 18
    :cond_7
    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->createField(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 19
    :goto_1
    new-instance p1, Lcom/transsion/audiotagger/tag/FieldDataInvalidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a number as required"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/transsion/audiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 20
    :cond_8
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0

    .line 21
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;-><init>([B)V

    return-object p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p2, :cond_f

    if-eqz p1, :cond_e

    .line 22
    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    if-ne p1, v0, :cond_2

    .line 23
    const-string p1, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->createCompilationField(Z)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->createCompilationField(Z)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 26
    :cond_2
    sget-object p0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    if-ne p1, p0, :cond_4

    .line 27
    invoke-static {p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4GenreField;->isValidGenre(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 28
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4GenreField;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 29
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->NOT_STANDARD_MP_GENRE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_4
    sget-object p0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    if-ne p1, p0, :cond_5

    .line 31
    new-instance p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 32
    :cond_5
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;->DISC_NO:Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne p0, v0, :cond_6

    .line 33
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 34
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;->TRACK_NO:Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne p0, v0, :cond_7

    .line 35
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 36
    :cond_7
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;->BYTE:Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne p0, v0, :cond_8

    .line 37
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagByteField;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    return-object p0

    .line 38
    :cond_8
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;->NUMBER:Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne p0, v0, :cond_9

    .line 39
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 40
    :cond_9
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;->REVERSE_DNS:Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne p0, v0, :cond_a

    .line 41
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;-><init>(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V

    return-object p0

    .line 42
    :cond_a
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;->ARTWORK:Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    if-eq p0, v0, :cond_d

    .line 43
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;->TEXT:Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne p0, v0, :cond_b

    .line 44
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 45
    :cond_b
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object p0

    sget-object p2, Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;->UNKNOWN:Lcom/transsion/audiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne p0, p2, :cond_c

    .line 46
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->DO_NOT_KNOW_HOW_TO_CREATE_THIS_ATOM_TYPE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->DO_NOT_KNOW_HOW_TO_CREATE_THIS_ATOM_TYPE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_e
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0

    .line 50
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->KEY:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_0

    .line 3
    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->KEY_OLD:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->deleteField(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 6
    sget-object p1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-super {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    .line 10
    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->setTrackNo(I)V

    return-void

    .line 11
    :cond_2
    sget-object v3, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v3, :cond_4

    .line 12
    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    .line 14
    invoke-super {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3
    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    .line 16
    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->setTrackTotal(I)V

    return-void

    .line 17
    :cond_4
    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_6

    .line 18
    sget-object p1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 20
    invoke-super {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 22
    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->setDiscNo(I)V

    return-void

    .line 23
    :cond_6
    sget-object v3, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v3, :cond_8

    .line 24
    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    .line 26
    invoke-super {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_7
    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 28
    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->setDiscTotal(I)V

    return-void

    .line 29
    :cond_8
    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_9

    .line 30
    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    .line 31
    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_9
    invoke-super {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 33
    :cond_a
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public get(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;",
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

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

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
    .locals 3
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/TagField;

    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_0

    check-cast v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_1

    check-cast v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_2

    check-cast v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_3

    check-cast v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lcom/transsion/audiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->get(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/TagField;

    check-cast v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;

    invoke-static {}, Lcom/transsion/audiotagger/tag/images/ArtworkFactory;->getNew()Lcom/transsion/audiotagger/tag/images/Artwork;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->getData()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setBinaryData([B)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->getFieldType()Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->getMimeTypeForImageType(Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 3
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

    if-eqz p1, :cond_10

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->KEY:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->KEY_OLD:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    sget-object p0, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, p0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/TagField;

    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1

    :cond_6
    sget-object p0, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, p0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/TagField;

    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    return-object v1

    :cond_9
    sget-object p0, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, p0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/TagField;

    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-lez v0, :cond_a

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    return-object v1

    :cond_c
    sget-object p0, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, p0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/TagField;

    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-lez v0, :cond_d

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    return-object v1

    :cond_f
    return-object v0

    :cond_10
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getFirst(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public bridge synthetic getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;

    move-result-object p0

    return-object p0
.end method

.method public getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;

    return-object p0
.end method

.method public getFirstField(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;)Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_4

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/TagField;

    sget-object p2, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, p2, :cond_0

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p2, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, p2, :cond_1

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p2, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, p2, :cond_2

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p2, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, p2, :cond_3

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method public hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

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

.method public hasField(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

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

    sget-object p0, Lcom/transsion/audiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public varargs setField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p2

    .line 2
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    .line 3
    invoke-interface {p2}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->deleteField(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->deleteField(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;)V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    .line 14
    check-cast p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    .line 15
    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-lez v2, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v1

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-lez v2, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v0

    .line 21
    :cond_3
    new-instance p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p1, v1, v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;-><init>(II)V

    .line 22
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto :goto_2

    .line 23
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto :goto_2

    .line 24
    :cond_5
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    .line 27
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 28
    check-cast p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 29
    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-lez v2, :cond_7

    .line 32
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v1

    .line 33
    :cond_7
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-lez v2, :cond_8

    .line 34
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v0

    .line 35
    :cond_8
    new-instance p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p1, v1, v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(II)V

    .line 36
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto :goto_2

    .line 37
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto :goto_2

    .line 38
    :cond_a
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    :goto_2
    return-void
.end method

.method public setField(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->createField(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mpeg4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
