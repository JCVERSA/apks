.class public final enum Lcom/transsion/audiotagger/audio/SupportedFileFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/SupportedFileFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum AIF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum AIFC:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum AIFF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum DSF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum FLAC:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum M4A:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum M4B:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum M4P:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum MP3:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum MP4:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum OGG:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum RA:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum RM:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum WAV:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

.field public static final enum WMA:Lcom/transsion/audiotagger/audio/SupportedFileFormat;


# instance fields
.field private filesuffix:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/SupportedFileFormat;
    .locals 15

    sget-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->OGG:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v1, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->MP3:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v2, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->FLAC:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v3, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->MP4:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v4, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->M4A:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v5, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->M4P:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v6, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->WMA:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v7, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->WAV:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v8, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->RA:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v9, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->RM:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v10, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->M4B:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v11, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->AIF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v12, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->AIFF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v13, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->AIFC:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    sget-object v14, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->DSF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    filled-new-array/range {v0 .. v14}, [Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/4 v1, 0x0

    const-string v2, "ogg"

    const-string v3, "OGG"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->OGG:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/4 v1, 0x1

    const-string v2, "mp3"

    const-string v3, "MP3"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->MP3:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/4 v1, 0x2

    const-string v2, "flac"

    const-string v3, "FLAC"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->FLAC:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/4 v1, 0x3

    const-string v2, "mp4"

    const-string v3, "MP4"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->MP4:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/4 v1, 0x4

    const-string v2, "m4a"

    const-string v3, "M4A"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->M4A:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/4 v1, 0x5

    const-string v2, "m4p"

    const-string v3, "M4P"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->M4P:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/4 v1, 0x6

    const-string v2, "wma"

    const-string v3, "WMA"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->WMA:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/4 v1, 0x7

    const-string v2, "wav"

    const-string v3, "WAV"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->WAV:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/16 v1, 0x8

    const-string v2, "ra"

    const-string v3, "RA"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->RA:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/16 v1, 0x9

    const-string v2, "rm"

    const-string v3, "RM"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->RM:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/16 v1, 0xa

    const-string v2, "m4b"

    const-string v3, "M4B"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->M4B:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/16 v1, 0xb

    const-string v2, "aif"

    const-string v3, "AIF"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->AIF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/16 v1, 0xc

    const-string v2, "aiff"

    const-string v3, "AIFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->AIFF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/16 v1, 0xd

    const-string v2, "aifc"

    const-string v3, "AIFC"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->AIFC:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    const/16 v1, 0xe

    const-string v2, "dsf"

    const-string v3, "DSF"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->DSF:Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-static {}, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->$values()[Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->$VALUES:[Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->filesuffix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/SupportedFileFormat;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/SupportedFileFormat;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->$VALUES:[Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/SupportedFileFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/SupportedFileFormat;

    return-object v0
.end method


# virtual methods
.method public getFilesuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/SupportedFileFormat;->filesuffix:Ljava/lang/String;

    return-object p0
.end method
