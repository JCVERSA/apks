.class public final enum Lcom/transsion/audiotagger/tag/reference/Tagger;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/reference/Tagger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum BEATUNES:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum FOOBAR2000:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum GODFATHER:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum ITUNES:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum JAIKOZ:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum JRIVER:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum MEDIAPLAYER:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum MEDIA_MONKEY:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum MP3TAG:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum MUSICHI:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum PICARD:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum SONGBIRD:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum TAGSCANNER:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum TAG_AND_RENAME:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum WINAMP:Lcom/transsion/audiotagger/tag/reference/Tagger;

.field public static final enum XIPH:Lcom/transsion/audiotagger/tag/reference/Tagger;


# instance fields
.field private compatability:I

.field private desc:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/reference/Tagger;
    .locals 16

    sget-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->ITUNES:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/Tagger;->MEDIAPLAYER:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v2, Lcom/transsion/audiotagger/tag/reference/Tagger;->WINAMP:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v3, Lcom/transsion/audiotagger/tag/reference/Tagger;->MP3TAG:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v4, Lcom/transsion/audiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v5, Lcom/transsion/audiotagger/tag/reference/Tagger;->TAG_AND_RENAME:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v6, Lcom/transsion/audiotagger/tag/reference/Tagger;->PICARD:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v7, Lcom/transsion/audiotagger/tag/reference/Tagger;->JAIKOZ:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v8, Lcom/transsion/audiotagger/tag/reference/Tagger;->TAGSCANNER:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v9, Lcom/transsion/audiotagger/tag/reference/Tagger;->XIPH:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v10, Lcom/transsion/audiotagger/tag/reference/Tagger;->FOOBAR2000:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v11, Lcom/transsion/audiotagger/tag/reference/Tagger;->BEATUNES:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v12, Lcom/transsion/audiotagger/tag/reference/Tagger;->SONGBIRD:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v13, Lcom/transsion/audiotagger/tag/reference/Tagger;->JRIVER:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v14, Lcom/transsion/audiotagger/tag/reference/Tagger;->GODFATHER:Lcom/transsion/audiotagger/tag/reference/Tagger;

    sget-object v15, Lcom/transsion/audiotagger/tag/reference/Tagger;->MUSICHI:Lcom/transsion/audiotagger/tag/reference/Tagger;

    filled-new-array/range {v0 .. v15}, [Lcom/transsion/audiotagger/tag/reference/Tagger;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/4 v1, 0x0

    const-string v2, "iTunes"

    const-string v3, "ITUNES"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->ITUNES:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/4 v1, 0x1

    const-string v2, "Windows Media Player"

    const-string v3, "MEDIAPLAYER"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->MEDIAPLAYER:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/4 v1, 0x2

    const-string v2, "Winamp"

    const-string v3, "WINAMP"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->WINAMP:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/4 v1, 0x3

    const-string v2, "Mp3 Tag"

    const-string v3, "MP3TAG"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->MP3TAG:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/4 v1, 0x4

    const-string v2, "Media Monkey"

    const-string v3, "MEDIA_MONKEY"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/4 v1, 0x5

    const-string v2, "Tag and Rename"

    const-string v3, "TAG_AND_RENAME"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->TAG_AND_RENAME:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/4 v1, 0x6

    const-string v2, "Picard"

    const-string v3, "PICARD"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->PICARD:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/4 v1, 0x7

    const-string v2, "Jaikoz"

    const-string v3, "JAIKOZ"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->JAIKOZ:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/16 v1, 0x8

    const-string v2, "Tagscanner"

    const-string v3, "TAGSCANNER"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->TAGSCANNER:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/16 v1, 0x9

    const-string v2, "Xiph"

    const-string v3, "XIPH"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->XIPH:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/16 v1, 0xa

    const-string v2, "Foobar2000"

    const-string v3, "FOOBAR2000"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->FOOBAR2000:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/16 v1, 0xb

    const-string v2, "Beatunes"

    const-string v3, "BEATUNES"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->BEATUNES:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/16 v1, 0xc

    const-string v2, "Songbird"

    const-string v3, "SONGBIRD"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->SONGBIRD:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/16 v1, 0xd

    const-string v2, "JRiver"

    const-string v3, "JRIVER"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->JRIVER:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/16 v1, 0xe

    const-string v2, "The Godfather"

    const-string v3, "GODFATHER"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->GODFATHER:Lcom/transsion/audiotagger/tag/reference/Tagger;

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    const/16 v1, 0xf

    const-string v2, "Musichi"

    const-string v3, "MUSICHI"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/transsion/audiotagger/tag/reference/Tagger;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->MUSICHI:Lcom/transsion/audiotagger/tag/reference/Tagger;

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/Tagger;->$values()[Lcom/transsion/audiotagger/tag/reference/Tagger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->$VALUES:[Lcom/transsion/audiotagger/tag/reference/Tagger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/audiotagger/tag/reference/Tagger;->compatability:I

    iput-object p4, p0, Lcom/transsion/audiotagger/tag/reference/Tagger;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/reference/Tagger;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/reference/Tagger;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/reference/Tagger;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/reference/Tagger;->$VALUES:[Lcom/transsion/audiotagger/tag/reference/Tagger;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/reference/Tagger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/reference/Tagger;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/reference/Tagger;->desc:Ljava/lang/String;

    return-object p0
.end method
