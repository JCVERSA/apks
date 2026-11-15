.class public final enum Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum ALBUM:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum ARTIST:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum COMMENT:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum GENRE:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum TITLE:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum TRACK:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum YEAR:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;
    .locals 7

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    filled-new-array/range {v0 .. v6}, [Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    const-string v1, "ARTIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    const-string v1, "ALBUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    const-string v1, "GENRE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    const-string v1, "TITLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    const-string v1, "YEAR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    const-string v1, "TRACK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    const-string v1, "COMMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->$values()[Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->$VALUES:[Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->$VALUES:[Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    return-object v0
.end method
