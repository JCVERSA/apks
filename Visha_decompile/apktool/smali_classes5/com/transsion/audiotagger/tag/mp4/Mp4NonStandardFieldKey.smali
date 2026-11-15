.class public final enum Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum AAPR:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum ADCP:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum ALFN:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum AMIM:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum APTY:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;


# instance fields
.field private description:Ljava/lang/String;

.field private fieldName:Ljava/lang/String;

.field private tagger:Lcom/transsion/audiotagger/tag/reference/Tagger;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;
    .locals 5

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->AAPR:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->ALFN:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->AMIM:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->ADCP:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->APTY:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    new-instance v6, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    sget-object v7, Lcom/transsion/audiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lcom/transsion/audiotagger/tag/reference/Tagger;

    const-string v1, "AAPR"

    const/4 v2, 0x0

    const-string v3, "AApr"

    const-string v4, "MM3 Album Art Attributes"

    move-object v0, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/audiotagger/tag/reference/Tagger;)V

    sput-object v6, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->AAPR:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    new-instance v6, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    const-string v3, "Alfn"

    const-string v4, "MM3 Album Art Unknown"

    const-string v1, "ALFN"

    const/4 v2, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/audiotagger/tag/reference/Tagger;)V

    sput-object v6, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->ALFN:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    new-instance v6, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    const-string v3, "AMIM"

    const-string v4, "MM3 Album Art MimeType"

    const-string v1, "AMIM"

    const/4 v2, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/audiotagger/tag/reference/Tagger;)V

    sput-object v6, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->AMIM:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    new-instance v6, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    const-string v3, "Adcp"

    const-string v4, "MM3 Album Art Description"

    const-string v1, "ADCP"

    const/4 v2, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/audiotagger/tag/reference/Tagger;)V

    sput-object v6, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->ADCP:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    new-instance v6, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    const-string v3, "Apty"

    const-string v4, "MM3 Album Art ID3 Picture Type"

    const-string v1, "APTY"

    const/4 v2, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/audiotagger/tag/reference/Tagger;)V

    sput-object v6, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->APTY:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    invoke-static {}, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->$values()[Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->$VALUES:[Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/audiotagger/tag/reference/Tagger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/tag/reference/Tagger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->fieldName:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->description:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->tagger:Lcom/transsion/audiotagger/tag/reference/Tagger;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->$VALUES:[Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    return-object v0
.end method


# virtual methods
.method public geTagger()Lcom/transsion/audiotagger/tag/reference/Tagger;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->tagger:Lcom/transsion/audiotagger/tag/reference/Tagger;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->fieldName:Ljava/lang/String;

    return-object p0
.end method
