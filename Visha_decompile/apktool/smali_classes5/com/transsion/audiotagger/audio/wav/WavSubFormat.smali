.class public final enum Lcom/transsion/audiotagger/audio/wav/WavSubFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/wav/WavSubFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

.field public static final enum FORMAT_ALAW:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

.field public static final enum FORMAT_EXTENSIBLE:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

.field public static final enum FORMAT_FLOAT:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

.field public static final enum FORMAT_GSM_COMPRESSED:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

.field public static final enum FORMAT_MULAW:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

.field public static final enum FORMAT_PCM:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/audiotagger/audio/wav/WavSubFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/wav/WavSubFormat;
    .locals 6

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_PCM:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_FLOAT:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    sget-object v2, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_ALAW:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    sget-object v3, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_MULAW:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    sget-object v4, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_EXTENSIBLE:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    sget-object v5, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_GSM_COMPRESSED:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    filled-new-array/range {v0 .. v5}, [Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    const-string v1, "WAV PCM"

    const-string v2, "FORMAT_PCM"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_PCM:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    const-string v1, "WAV IEEE_FLOAT"

    const-string v2, "FORMAT_FLOAT"

    const/4 v5, 0x3

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_FLOAT:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    const/4 v1, 0x6

    const-string v2, "WAV A-LAW"

    const-string v4, "FORMAT_ALAW"

    const/4 v6, 0x2

    invoke-direct {v0, v4, v6, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_ALAW:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    const/4 v1, 0x7

    const-string v2, "WAV \u00b5-LAW"

    const-string v4, "FORMAT_MULAW"

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_MULAW:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    const v1, 0xfffe

    const-string v2, "EXTENSIBLE"

    const-string v4, "FORMAT_EXTENSIBLE"

    const/4 v5, 0x4

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_EXTENSIBLE:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    const/16 v1, 0x31

    const-string v2, "GSM_COMPRESSED"

    const-string v4, "FORMAT_GSM_COMPRESSED"

    const/4 v5, 0x5

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_GSM_COMPRESSED:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    invoke-static {}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->$values()[Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->$VALUES:[Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->lookup:Ljava/util/Map;

    invoke-static {}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->values()[Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->lookup:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
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

    iput p3, p0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->code:I

    iput-object p4, p0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->description:Ljava/lang/String;

    return-void
.end method

.method public static getByCode(Ljava/lang/Integer;)Lcom/transsion/audiotagger/audio/wav/WavSubFormat;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/wav/WavSubFormat;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/wav/WavSubFormat;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->$VALUES:[Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->code:I

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->description:Ljava/lang/String;

    return-object p0
.end method
