.class public final enum Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;

.field public static final enum VERSION_ONE:Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;


# instance fields
.field private displayName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;->VERSION_ONE:Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;

    filled-new-array {v0}, [Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;

    const/4 v1, 0x0

    const-string v2, "Ogg Vorbis v1"

    const-string v3, "VERSION_ONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;->VERSION_ONE:Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;

    invoke-static {}, Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;->$values()[Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;->$VALUES:[Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;

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

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;->$VALUES:[Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/ogg/VorbisVersion;->displayName:Ljava/lang/String;

    return-object p0
.end method
