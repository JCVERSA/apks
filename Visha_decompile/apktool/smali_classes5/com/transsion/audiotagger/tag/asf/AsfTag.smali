.class public final Lcom/transsion/audiotagger/tag/asf/AsfTag;
.super Lcom/transsion/audiotagger/audio/generic/AbstractTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/tag/asf/AsfTag$AsfFieldIterator;
    }
.end annotation


# static fields
.field public static final COMMON_FIELDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final tagFieldToAsfField:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            "Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final copyFields:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ACOUSTID_FINGERPRINT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ACOUSTID_FINGERPRINT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ACOUSTID_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ACOUSTID_ID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ALBUM_ARTIST_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTISTS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ALBUM_ARTISTS:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTISTS_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ALBUM_ARTISTS_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ALBUM_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->AMAZON_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->AMAZON_ID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARRANGER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ARRANGER:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARRANGER_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ARRANGER_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->AUTHOR:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTISTS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ARTISTS:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTISTS_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ARTISTS_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ARTIST_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->BARCODE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->BARCODE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->BPM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->BPM:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CATALOG_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->CATALOG_NO:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CHOIR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->CHOIR:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CHOIR_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->CHOIR_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CLASSICAL_CATALOG:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->CLASSICAL_CATALOG:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CLASSICAL_NICKNAME:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->CLASSICAL_NICKNAME:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->DESCRIPTION:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COMPOSER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->COMPOSER:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COMPOSER_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->COMPOSER_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CONDUCTOR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->CONDUCTOR:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CONDUCTOR_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->CONDUCTOR_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COPYRIGHT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->COPYRIGHT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COUNTRY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->COUNTRY:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM1:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->CUSTOM1:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM2:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->CUSTOM2:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM3:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->CUSTOM3:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM4:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->CUSTOM4:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->CUSTOM5:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->CUSTOM5:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->DISC_NO:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_SUBTITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->DISC_SUBTITLE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DJMIXER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->DJMIXER:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_ELECTRONIC:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOOD_ELECTRONIC:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ENCODER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ENCODER:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ENGINEER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ENGINEER:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ENSEMBLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ENSEMBLE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ENSEMBLE_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ENSEMBLE_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->FBPM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->FBPM:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->GENRE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->GROUP:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->GROUP:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->GROUPING:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->GROUPING:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->INSTRUMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->INSTRUMENT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->INVOLVED_PERSON:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->INVOLVED_PERSON:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ISRC:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ISRC:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->IS_CLASSICAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->IS_CLASSICAL:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->IS_COMPILATION:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->IS_COMPILATION:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->IS_SOUNDTRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->IS_SOUNDTRACK:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->KEY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->INITIAL_KEY:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->LANGUAGE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->LANGUAGE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->LYRICIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->LYRICIST:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->LYRICS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->LYRICS:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MEDIA:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MEDIA:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MIXER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MIXER:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOOD:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_ACOUSTIC:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOOD_ACOUSTIC:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_AGGRESSIVE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOOD_AGGRESSIVE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_AROUSAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOOD_AROUSAL:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_DANCEABILITY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOOD_DANCEABILITY:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_HAPPY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOOD_HAPPY:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_INSTRUMENTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOOD_INSTRUMENTAL:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_PARTY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOOD_PARTY:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_RELAXED:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOOD_RELAXED:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_SAD:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOOD_SAD:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOOD_VALENCE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOOD_VALENCE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOVEMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOVEMENT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOVEMENT_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOVEMENT_NO:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOVEMENT_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MOVEMENT_TOTAL:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_ARTISTID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_ARTISTID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_DISC_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_DISC_ID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_ORIGINAL_RELEASE_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_ORIGINAL_RELEASEID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASEID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_GROUP_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASEGROUPID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TRACK_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASETRACKID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_TRACK_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_TRACK_ID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORKID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_COMPOSITION:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_COMPOSITION:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_COMPOSITION_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_COMPOSITION_ID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_ID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_TYPE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_ID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_TYPE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_ID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_TYPE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_ID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_TYPE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_ID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_TYPE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_ID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_TYPE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MUSICIP_ID:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->MUSICIP_ID:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->OCCASION:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->OCCASION:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->OPUS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->OPUS:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORCHESTRA:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ORCHESTRA:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORCHESTRA_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ORCHESTRA_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORIGINAL_ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ORIGINAL_ALBUM:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORIGINAL_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ORIGINAL_ARTIST:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORIGINAL_LYRICIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ORIGINAL_LYRICIST:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ORIGINAL_YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->ORIGINAL_YEAR:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PART:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->PART:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PART_NUMBER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->PART_NUMBER:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PART_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->PART_TYPE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PERFORMER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->PERFORMER:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PERFORMER_NAME:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->PERFORMER_NAME:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PERFORMER_NAME_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->PERFORMER_NAME_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PERIOD:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->PERIOD:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->PRODUCER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->PRODUCER:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->QUALITY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->QUALITY:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->RANKING:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->RANKING:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->RATING:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->USER_RATING:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->RECORD_LABEL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->RECORD_LABEL:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->REMIXER:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->REMIXER:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->SCRIPT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->SCRIPT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->SINGLE_DISC_TRACK_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->SINGLE_DISC_TRACK_NO:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->SUBTITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->SUBTITLE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TAGS:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->TAGS:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TEMPO:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->TEMPO:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TIMBRE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->TIMBRE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->TITLE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE_MOVEMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v7, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->TITLE_MOVEMENT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE_SORT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v7, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->TITLE_SORT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TONALITY:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v7, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->TONALITY:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v7, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->TRACK:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_DISCOGS_ARTIST_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->URL_DISCOGS_ARTIST_SITE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_DISCOGS_RELEASE_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->URL_DISCOGS_RELEASE_SITE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_LYRICS_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->URL_LYRICS_SITE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->URL_OFFICIAL_ARTIST_SITE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->URL_OFFICIAL_RELEASE_SITE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->WORK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->WORK:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->WORK_TYPE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->WORK_TYPE:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->YEAR:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/tag/asf/AsfTag;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/Tag;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/asf/AsfTag;-><init>(Z)V

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->copyFrom(Lcom/transsion/audiotagger/tag/Tag;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/asf/AsfTag;->copyFields:Z

    return-void
.end method

.method private copyFrom(Lcom/transsion/audiotagger/tag/TagField;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->isCopyingFields()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    instance-of p0, p1, Lcom/transsion/audiotagger/tag/asf/AsfTagField;

    if-eqz p0, :cond_0

    .line 7
    :try_start_0
    move-object p0, p1

    check-cast p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/TagField;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object p1, p0

    goto :goto_1

    .line 8
    :catch_0
    new-instance p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;

    check-cast p1, Lcom/transsion/audiotagger/tag/asf/AsfTagField;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;->getDescriptor()Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTagField;-><init>(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V

    goto :goto_0

    .line 9
    :cond_0
    instance-of p0, p1, Lcom/transsion/audiotagger/tag/TagTextField;

    if-eqz p0, :cond_1

    .line 10
    move-object p0, p1

    check-cast p0, Lcom/transsion/audiotagger/tag/TagTextField;

    invoke-interface {p0}, Lcom/transsion/audiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance v0, Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_1

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Asf Tag Field class:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private copyFrom(Lcom/transsion/audiotagger/tag/Tag;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/Tag;->getFields()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/TagField;

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->copyFrom(Lcom/transsion/audiotagger/tag/TagField;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isValidField(Lcom/transsion/audiotagger/tag/TagField;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/asf/AsfTagField;

    if-nez v0, :cond_1

    return p0

    :cond_1
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public addCopyright(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->createCopyrightField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->isValidField(Lcom/transsion/audiotagger/tag/TagField;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->isMultiValued(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->copyFrom(Lcom/transsion/audiotagger/tag/TagField;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->copyFrom(Lcom/transsion/audiotagger/tag/TagField;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addRating(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->createRatingField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public createArtworkField([B)Lcom/transsion/audiotagger/tag/asf/AsfTagCoverField;
    .locals 2

    new-instance p0, Lcom/transsion/audiotagger/tag/asf/AsfTagCoverField;

    sget-object v0, Lcom/transsion/audiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/transsion/audiotagger/tag/asf/AsfTagCoverField;-><init>([BILjava/lang/String;Ljava/lang/String;)V

    return-object p0
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

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;

    move-result-object p0

    return-object p0
.end method

.method public createCopyrightField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;
    .locals 1

    new-instance p0, Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;

    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->COPYRIGHT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-direct {p0, v0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;-><init>(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/asf/AsfTagCoverField;

    move-result-object p0

    return-object p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/asf/AsfTagCoverField;
    .locals 3

    .line 3
    new-instance p0, Lcom/transsion/audiotagger/tag/asf/AsfTagCoverField;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v0

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getPictureType()I

    move-result v1

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTagCoverField;-><init>([BILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public varargs createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 10
    aget-object v1, p2, v0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 11
    sget-object v1, Lcom/transsion/audiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    if-eqz v1, :cond_0

    .line 12
    aget-object p1, p2, v0

    invoke-virtual {p0, v1, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->createField(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;

    move-result-object p0

    return-object p0

    .line 13
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;
    .locals 1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 4
    sget-object p0, Lcom/transsion/audiotagger/tag/asf/AsfTag$1;->$SwitchMap$com$transsion$audiotagger$tag$asf$AsfFieldKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 5
    new-instance p0, Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Banner Image cannot be created using this method"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cover Art cannot be created using this method"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createRatingField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;
    .locals 1

    new-instance p0, Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;

    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->RATING:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-direct {p0, v0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;-><init>(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)V

    return-object p0
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void
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

    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
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

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

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

    check-cast v1, Lcom/transsion/audiotagger/tag/asf/AsfTagCoverField;

    invoke-static {}, Lcom/transsion/audiotagger/tag/images/ArtworkFactory;->getNew()Lcom/transsion/audiotagger/tag/images/Artwork;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/asf/AsfTagCoverField;->getRawImageData()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setBinaryData([B)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/asf/AsfTagCoverField;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/asf/AsfTagCoverField;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/asf/AsfTagCoverField;->getPictureType()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/tag/images/Artwork;->setPictureType(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAsfFields()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/transsion/audiotagger/tag/asf/AsfTagField;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->isCopyingFields()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/asf/AsfTag$AsfFieldIterator;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/tag/asf/AsfTag$AsfFieldIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Since the field conversion is not enabled, this method cannot be executed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCopyright()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->COPYRIGHT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

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

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFirst(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getFirstCopyright()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->COPYRIGHT:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/asf/AsfTagField;

    move-result-object p0

    return-object p0
.end method

.method public getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/asf/AsfTagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/asf/AsfTagField;

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getFirstRating()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->RATING:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRating()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->RATING:Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;

    .line 2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

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

.method public hasField(Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;)Z
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

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

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCopyingFields()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/asf/AsfTag;->copyFields:Z

    return p0
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->createCopyrightField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->isValidField(Lcom/transsion/audiotagger/tag/TagField;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->copyFrom(Lcom/transsion/audiotagger/tag/TagField;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    :cond_0
    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->createRatingField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method
