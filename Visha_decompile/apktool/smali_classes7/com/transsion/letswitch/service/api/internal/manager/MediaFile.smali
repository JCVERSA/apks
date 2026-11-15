.class public Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/letswitch/service/api/internal/manager/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final AUDIO_MIDI:Ljava/lang/String; = "audio/midi"

.field public static final FILE_TYPE_3GA:I = 0xc1

.field public static final FILE_TYPE_3GPP:I = 0x12f

.field public static final FILE_TYPE_3GPP2:I = 0x130

.field public static final FILE_TYPE_3GPP3:I = 0xc7

.field public static final FILE_TYPE_AAC:I = 0x6c

.field public static final FILE_TYPE_AMR:I = 0x68

.field public static final FILE_TYPE_APE:I = 0x6f

.field public static final FILE_TYPE_ARW:I = 0x324

.field public static final FILE_TYPE_ASF:I = 0x132

.field public static final FILE_TYPE_AVI:I = 0x135

.field public static final FILE_TYPE_AWB:I = 0x69

.field public static final FILE_TYPE_BMP:I = 0x194

.field public static final FILE_TYPE_CAF:I = 0x70

.field public static final FILE_TYPE_CR2:I = 0x321

.field public static final FILE_TYPE_DNG:I = 0x320

.field public static final FILE_TYPE_FL:I = 0x259

.field public static final FILE_TYPE_FLA:I = 0xc4

.field public static final FILE_TYPE_FLAC:I = 0x6e

.field public static final FILE_TYPE_FLV:I = 0x18e

.field public static final FILE_TYPE_GIF:I = 0x192

.field public static final FILE_TYPE_HEIF:I = 0x197

.field public static final FILE_TYPE_HTML:I = 0x2bd

.field public static final FILE_TYPE_HTTPLIVE:I = 0x1f8

.field public static final FILE_TYPE_IMY:I = 0xcb

.field public static final FILE_TYPE_JPEG:I = 0x191

.field public static final FILE_TYPE_M3U:I = 0x1f5

.field public static final FILE_TYPE_M4A:I = 0x66

.field public static final FILE_TYPE_M4V:I = 0x12e

.field public static final FILE_TYPE_MID:I = 0xc9

.field public static final FILE_TYPE_MKA:I = 0x6d

.field public static final FILE_TYPE_MKV:I = 0x133

.field public static final FILE_TYPE_MP2PS:I = 0x189

.field public static final FILE_TYPE_MP2TS:I = 0x134

.field public static final FILE_TYPE_MP3:I = 0x65

.field public static final FILE_TYPE_MP4:I = 0x12d

.field public static final FILE_TYPE_MPO:I = 0x1f3

.field public static final FILE_TYPE_MS_EXCEL:I = 0x2c1

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x2c2

.field public static final FILE_TYPE_MS_WORD:I = 0x2c0

.field public static final FILE_TYPE_NEF:I = 0x322

.field public static final FILE_TYPE_NRW:I = 0x323

.field public static final FILE_TYPE_OGG:I = 0x6b

.field public static final FILE_TYPE_OGM:I = 0x18a

.field public static final FILE_TYPE_ORF:I = 0x326

.field public static final FILE_TYPE_PDF:I = 0x2be

.field public static final FILE_TYPE_PEF:I = 0x328

.field public static final FILE_TYPE_PLS:I = 0x1f6

.field public static final FILE_TYPE_PNG:I = 0x193

.field public static final FILE_TYPE_QT:I = 0xc8

.field public static final FILE_TYPE_QUICKTIME_AUDIO:I = 0xc2

.field public static final FILE_TYPE_QUICKTIME_VIDEO:I = 0x18d

.field public static final FILE_TYPE_RA:I = 0xc6

.field public static final FILE_TYPE_RAF:I = 0x327

.field public static final FILE_TYPE_RM:I = 0x18f

.field public static final FILE_TYPE_RMVB:I = 0x18c

.field public static final FILE_TYPE_RV:I = 0x18b

.field public static final FILE_TYPE_RW2:I = 0x325

.field public static final FILE_TYPE_SMF:I = 0xca

.field public static final FILE_TYPE_SRW:I = 0x329

.field public static final FILE_TYPE_TEXT:I = 0x2bc

.field public static final FILE_TYPE_WAV:I = 0x67

.field public static final FILE_TYPE_WBMP:I = 0x195

.field public static final FILE_TYPE_WEBM:I = 0x136

.field public static final FILE_TYPE_WEBP:I = 0x196

.field public static final FILE_TYPE_WMA:I = 0x6a

.field public static final FILE_TYPE_WMV:I = 0x131

.field public static final FILE_TYPE_WPL:I = 0x1f7

.field public static final FILE_TYPE_XML:I = 0x2bf

.field public static final FILE_TYPE_ZIP:I = 0x2c3

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x65

.field private static final FIRST_DRM_FILE_TYPE:I = 0x259

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x191

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xc9

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x1f5

.field private static final FIRST_RAW_IMAGE_FILE_TYPE:I = 0x320

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x12d

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xc7

.field private static final LAST_DRM_FILE_TYPE:I = 0x259

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x1f3

.field private static final LAST_MIDI_FILE_TYPE:I = 0xcb

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x1f8

.field private static final LAST_RAW_IMAGE_FILE_TYPE:I = 0x329

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x18f

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/letswitch/service/api/internal/manager/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sFormatToMimeTypeMap:Landroid/util/SparseArray;

    const-string v0, "MP3"

    const/16 v1, 0x65

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MPGA"

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "M4A"

    const/16 v1, 0x66

    const-string v2, "audio/mp4"

    const/16 v3, 0x300b

    invoke-static {v0, v1, v2, v3, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "audio/x-wav"

    const/16 v1, 0x3008

    const-string v2, "WAV"

    const/16 v6, 0x67

    invoke-static {v2, v6, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x68

    const-string v1, "audio/amr"

    const-string v2, "AMR"

    invoke-static {v2, v0, v1}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x69

    const-string v1, "audio/amr-wb"

    const-string v2, "AWB"

    invoke-static {v2, v0, v1}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OGG"

    const/16 v1, 0x6b

    const-string v2, "audio/ogg"

    const v6, 0xb902

    invoke-static {v0, v1, v2, v6, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v2, "application/ogg"

    invoke-static {v0, v1, v2, v6, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "OGA"

    invoke-static {v0, v1, v2, v6, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "audio/aac"

    const v1, 0xb903

    const-string v2, "AAC"

    const/16 v6, 0x6c

    invoke-static {v2, v6, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "audio/aac-adts"

    const-string v2, "AAC"

    invoke-static {v2, v6, v0, v1, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x6d

    const-string v1, "audio/x-matroska"

    const-string v2, "MKA"

    invoke-static {v2, v0, v1}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MID"

    const/16 v1, 0xc9

    const-string v2, "audio/midi"

    invoke-static {v0, v1, v2}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MIDI"

    invoke-static {v0, v1, v2}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "XMF"

    invoke-static {v0, v1, v2}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTTTL"

    invoke-static {v0, v1, v2}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xca

    const-string v6, "audio/sp-midi"

    const-string v7, "SMF"

    invoke-static {v7, v0, v6}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xcb

    const-string v6, "audio/imelody"

    const-string v7, "IMY"

    invoke-static {v7, v0, v6}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTX"

    invoke-static {v0, v1, v2}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OTA"

    invoke-static {v0, v1, v2}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MXMF"

    invoke-static {v0, v1, v2}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "video/mpeg"

    const-string v1, "MPEG"

    const/16 v2, 0x12d

    invoke-static {v1, v2, v0, v3, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MPG"

    const-string v1, "video/mpeg"

    invoke-static {v0, v2, v1, v3, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MP4"

    const-string v1, "video/mp4"

    invoke-static {v0, v2, v1, v3, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x12e

    const-string v1, "video/mp4"

    const-string v2, "M4V"

    invoke-static {v2, v0, v1, v3, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0xc8

    const-string v1, "video/quicktime"

    const-string v2, "MOV"

    invoke-static {v2, v0, v1, v3, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "3GP"

    const/16 v1, 0x12f

    const-string v2, "video/3gpp"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x12f

    const-string v1, "video/3gpp"

    const-string v2, "3GPP"

    invoke-static {v2, v0, v1, v3, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x130

    const-string v1, "video/3gpp2"

    const-string v2, "3G2"

    invoke-static {v2, v0, v1, v3, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v1, "video/3gpp2"

    const-string v2, "3GPP2"

    invoke-static {v2, v0, v1, v3, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x133

    const-string v1, "video/x-matroska"

    const-string v2, "MKV"

    invoke-static {v2, v0, v1}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x136

    const-string v1, "video/webm"

    const-string v2, "WEBM"

    invoke-static {v2, v0, v1}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x134

    const-string v1, "video/mp2ts"

    const-string v2, "TS"

    invoke-static {v2, v0, v1}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x135

    const-string v1, "video/avi"

    const-string v2, "AVI"

    invoke-static {v2, v0, v1}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "image/jpeg"

    const/16 v1, 0x3801

    const-string v2, "JPG"

    const/16 v3, 0x191

    invoke-static {v2, v3, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "image/jpeg"

    const-string v2, "JPEG"

    invoke-static {v2, v3, v0, v1, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "image/gif"

    const/16 v1, 0x3807

    const-string v2, "GIF"

    const/16 v3, 0x192

    invoke-static {v2, v3, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "image/png"

    const/16 v1, 0x380b

    const-string v2, "PNG"

    const/16 v3, 0x193

    invoke-static {v2, v3, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "image/x-ms-bmp"

    const/16 v1, 0x3804

    const-string v2, "BMP"

    const/16 v3, 0x194

    invoke-static {v2, v3, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "WBMP"

    const/16 v1, 0x195

    const-string v2, "image/vnd.wap.wbmp"

    const/16 v3, 0x3800

    invoke-static {v0, v1, v2, v3, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x196

    const-string v1, "image/webp"

    const-string v2, "WEBP"

    invoke-static {v2, v0, v1, v3, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "image/x-adobe-dng"

    const/16 v1, 0x3811

    const-string v2, "DNG"

    const/16 v6, 0x320

    invoke-static {v2, v6, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "CR2"

    const/16 v1, 0x321

    const-string v2, "image/x-canon-cr2"

    const/16 v6, 0x380d

    invoke-static {v0, v1, v2, v6, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "image/x-nikon-nef"

    const/16 v1, 0x3802

    const-string v2, "NEF"

    const/16 v7, 0x322

    invoke-static {v2, v7, v0, v1, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x323

    const-string v1, "image/x-nikon-nrw"

    const-string v2, "NRW"

    invoke-static {v2, v0, v1, v6, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x324

    const-string v1, "image/x-sony-arw"

    const-string v2, "ARW"

    invoke-static {v2, v0, v1, v6, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x325

    const-string v1, "image/x-panasonic-rw2"

    const-string v2, "RW2"

    invoke-static {v2, v0, v1, v6, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x326

    const-string v1, "image/x-olympus-orf"

    const-string v2, "ORF"

    invoke-static {v2, v0, v1, v6, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x327

    const-string v1, "image/x-fuji-raf"

    const-string v2, "RAF"

    invoke-static {v2, v0, v1, v3, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x328

    const-string v1, "image/x-pentax-pef"

    const-string v2, "PEF"

    invoke-static {v2, v0, v1, v6, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x329

    const-string v1, "image/x-samsung-srw"

    const-string v2, "SRW"

    invoke-static {v2, v0, v1, v6, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "audio/x-mpegurl"

    const v1, 0xba11

    const-string v2, "M3U"

    const/16 v3, 0x1f5

    invoke-static {v2, v3, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "application/x-mpegurl"

    const-string v2, "M3U"

    invoke-static {v2, v3, v0, v1, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "audio/x-scpls"

    const v1, 0xba14

    const-string v2, "PLS"

    const/16 v3, 0x1f6

    invoke-static {v2, v3, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "application/vnd.ms-wpl"

    const v1, 0xba10

    const-string v2, "WPL"

    const/16 v3, 0x1f7

    invoke-static {v2, v3, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "application/vnd.apple.mpegurl"

    const-string v1, "M3U8"

    const/16 v2, 0x1f8

    invoke-static {v1, v2, v0}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "audio/mpegurl"

    invoke-static {v1, v2, v0}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "audio/x-mpegurl"

    invoke-static {v1, v2, v0}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x259

    const-string v1, "application/x-android-drm-fl"

    const-string v2, "FL"

    invoke-static {v2, v0, v1}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "text/plain"

    const/16 v1, 0x3004

    const-string v2, "TXT"

    const/16 v3, 0x2bc

    invoke-static {v2, v3, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "text/html"

    const/16 v1, 0x3005

    const-string v2, "HTM"

    const/16 v3, 0x2bd

    invoke-static {v2, v3, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "text/html"

    const-string v2, "HTML"

    invoke-static {v2, v3, v0, v1, v5}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x2be

    const-string v1, "application/pdf"

    const-string v2, "PDF"

    invoke-static {v2, v0, v1}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DOC"

    const/16 v1, 0x2c0

    const-string v2, "application/msword"

    const v3, 0xba83

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "DOC"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "DOCX"

    const-string v2, "application/msword"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "XLSX"

    const/16 v1, 0x2c1

    const-string v2, "application/vnd.ms-excel"

    const v3, 0xba85

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "XLSX"

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "XLS"

    const-string v2, "application/vnd.ms-excel"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "application/vnd.ms-powerpoint"

    const v1, 0xba86

    const-string v2, "PPT"

    const/16 v3, 0x2c2

    invoke-static {v2, v3, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "audio/flac"

    const v1, 0xb906

    const-string v2, "FLAC"

    const/16 v3, 0x6e

    invoke-static {v2, v3, v0, v1, v4}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const/16 v0, 0x2c3

    const-string v1, "application/zip"

    const-string v2, "ZIP"

    invoke-static {v2, v0, v1}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x189

    const-string v1, "video/mp2p"

    const-string v2, "MPG"

    invoke-static {v2, v0, v1}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "video/mp2p"

    const-string v2, "MPEG"

    invoke-static {v2, v0, v1}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 1

    .line 3
    invoke-static {p0, p1, p2}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    sget-object p1, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 6
    sget-object p0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sFormatToMimeTypeMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/internal/manager/MediaFile$MediaFileType;
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v1, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile$MediaFileType;

    return-object p0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0x3000

    return p0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->getFileType(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/internal/manager/MediaFile$MediaFileType;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->sFormatToMimeTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isAudioFileType(I)Z
    .locals 1

    const/16 v0, 0x65

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc7

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xc9

    if-lt p0, v0, :cond_2

    const/16 v0, 0xcb

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDocumentFileType(I)Z
    .locals 1

    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2be

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2c0

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDrmFileType(I)Z
    .locals 1

    const/16 v0, 0x259

    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImageFileType(I)Z
    .locals 1

    const/16 v0, 0x191

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f3

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x320

    if-lt p0, v0, :cond_2

    const/16 v0, 0x329

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/transsion/letswitch/service/api/internal/manager/MediaFile;->isPlayListFileType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1

    const/16 v0, 0x1f5

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f8

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRawImageFileType(I)Z
    .locals 1

    const/16 v0, 0x320

    if-lt p0, v0, :cond_0

    const/16 v0, 0x329

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoFileType(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-lt p0, v0, :cond_0

    const/16 v0, 0x18f

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_2

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
