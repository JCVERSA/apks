.class public final enum Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

.field public static final enum AUDIO:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

.field public static final enum COMMENT_HEADER:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

.field public static final enum IDENTIFICATION_HEADER:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

.field public static final enum SETUP_HEADER:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;


# instance fields
.field type:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;
    .locals 4

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->AUDIO:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->IDENTIFICATION_HEADER:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->COMMENT_HEADER:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    sget-object v3, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->SETUP_HEADER:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->AUDIO:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    const-string v1, "IDENTIFICATION_HEADER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->IDENTIFICATION_HEADER:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    const-string v1, "COMMENT_HEADER"

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->COMMENT_HEADER:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    const-string v1, "SETUP_HEADER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->SETUP_HEADER:Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    invoke-static {}, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->$values()[Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->$VALUES:[Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->$VALUES:[Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/VorbisPacketType;->type:I

    return p0
.end method
