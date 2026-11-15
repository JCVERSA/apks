.class public final enum Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

.field public static final enum CR:Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

.field public static final enum RX:Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    filled-new-array {v0, v1}, [Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    const/4 v1, 0x0

    const-string v2, "Remix"

    const-string v3, "RX"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    const/4 v1, 0x1

    const-string v2, "Cover"

    const-string v3, "CR"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->$values()[Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->$VALUES:[Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

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

    iput-object p3, p0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->$VALUES:[Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->description:Ljava/lang/String;

    return-object p0
.end method
