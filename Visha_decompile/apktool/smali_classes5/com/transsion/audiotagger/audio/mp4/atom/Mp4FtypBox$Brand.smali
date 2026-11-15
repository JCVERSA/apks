.class public final enum Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Brand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum AES_ENCRYPTED_AUDIO:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum APPLE_AAC_AUDIO:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum APPLE_AUDIO:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum APPLE_AUDIO_ONLY:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_12_BASE_MEDIA:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_12_MPEG7_METADATA:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_1_BASE_MEDIA:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_1_VERSION_1:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_1_VERSION_2:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum JVT_AVC:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum QUICKTIME_MOVIE:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum THREEG_MOBILE_MP4:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;
    .locals 12

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_BASE_MEDIA:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    sget-object v1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_12_BASE_MEDIA:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    sget-object v2, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_VERSION_1:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_VERSION_2:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    sget-object v4, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->QUICKTIME_MOVIE:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    sget-object v5, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->JVT_AVC:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    sget-object v6, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->THREEG_MOBILE_MP4:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AAC_AUDIO:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    sget-object v8, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->AES_ENCRYPTED_AUDIO:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    sget-object v9, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AUDIO:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    sget-object v10, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_12_MPEG7_METADATA:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    sget-object v11, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AUDIO_ONLY:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    filled-new-array/range {v0 .. v11}, [Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v1, "ISO14496_1_BASE_MEDIA"

    const/4 v2, 0x0

    const-string v3, "isom"

    const-string v4, "ISO 14496-1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_BASE_MEDIA:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v1, "iso2"

    const-string v2, "ISO 14496-12"

    const-string v3, "ISO14496_12_BASE_MEDIA"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_12_BASE_MEDIA:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const/4 v1, 0x2

    const-string v2, "mp41"

    const-string v3, "ISO14496_1_VERSION_1"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_VERSION_1:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v1, "mp42"

    const-string v2, "ISO 14496-2:Multi track with BIFS scenes"

    const-string v3, "ISO14496_1_VERSION_2"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_VERSION_2:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v1, "qt  "

    const-string v2, "Original Quicktime"

    const-string v3, "QUICKTIME_MOVIE"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->QUICKTIME_MOVIE:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v1, "avc1"

    const-string v2, "JVT"

    const-string v3, "JVT_AVC"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->JVT_AVC:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v1, "MPA "

    const-string v2, "3G Mobile"

    const-string v3, "THREEG_MOBILE_MP4"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->THREEG_MOBILE_MP4:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v1, "APPLE_AAC_AUDIO"

    const/4 v2, 0x7

    const-string v3, "M4P "

    const-string v4, "Apple Audio"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AAC_AUDIO:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v1, "M4B "

    const-string v2, "Apple encrypted Audio"

    const-string v3, "AES_ENCRYPTED_AUDIO"

    const/16 v5, 0x8

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->AES_ENCRYPTED_AUDIO:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v1, "APPLE_AUDIO"

    const/16 v2, 0x9

    const-string v3, "mp71"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AUDIO:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const/16 v1, 0xa

    const-string v2, "MAIN_SYNTHESIS"

    const-string v4, "ISO14496_12_MPEG7_METADATA"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_12_MPEG7_METADATA:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v1, "M4A "

    const-string v2, "M4A Audio"

    const-string v3, "APPLE_AUDIO_ONLY"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AUDIO_ONLY:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->$values()[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->$VALUES:[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->$VALUES:[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->id:Ljava/lang/String;

    return-object p0
.end method
