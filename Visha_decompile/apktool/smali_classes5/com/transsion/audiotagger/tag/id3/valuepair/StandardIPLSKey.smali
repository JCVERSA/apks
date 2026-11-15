.class public final enum Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

.field public static final enum ARRANGER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

.field public static final enum DJMIXER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

.field public static final enum ENGINEER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

.field public static final enum MIXER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

.field public static final enum PRODUCER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;
    .locals 5

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->ENGINEER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->MIXER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->DJMIXER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->PRODUCER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->ARRANGER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    const/4 v1, 0x0

    const-string v2, "engineer"

    const-string v3, "ENGINEER"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->ENGINEER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    const/4 v1, 0x1

    const-string v2, "mix"

    const-string v3, "MIXER"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->MIXER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    const/4 v1, 0x2

    const-string v2, "DJ-mix"

    const-string v3, "DJMIXER"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->DJMIXER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    const/4 v1, 0x3

    const-string v2, "producer"

    const-string v3, "PRODUCER"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->PRODUCER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    const/4 v1, 0x4

    const-string v2, "arranger"

    const-string v3, "ARRANGER"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->ARRANGER:Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->$values()[Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->$VALUES:[Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->lookup:Ljava/util/Map;

    const-class v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->lookup:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
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

    iput-object p3, p0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    return-object p0
.end method

.method public static isKey(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->get(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->$VALUES:[Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->key:Ljava/lang/String;

    return-object p0
.end method
