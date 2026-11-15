.class public Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiConfig$CoverLastFmAPI;,
        Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiConfig$CoverArtArchiveAPI;,
        Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiConfig$AcoustIDAPI;,
        Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiConfig$MusicBrainzAPI;
    }
.end annotation


# static fields
.field public static final ACOUSTID_API_KEY:Ljava/lang/String; = "fVT58izaST"

.field public static final ACOUSTID_HOST:Ljava/lang/String; = "https://api.acoustid.org"

.field public static final COVER_ART_ARCHIVE_HOST:Ljava/lang/String; = "https://coverartarchive.org"

.field public static final COVER_LAST_FM_HOST:Ljava/lang/String; = "http://ws.audioscrobbler.com"

.field public static final FORMAT_JSON:Ljava/lang/String; = "json"

.field public static final LAST_FM_API_KEY:Ljava/lang/String; = "b937ec4f1c3238e183d0ae8b1a020c3d"

.field public static final MUSICBRAINZ_HOST:Ljava/lang/String; = "https://musicbrainz.org"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
