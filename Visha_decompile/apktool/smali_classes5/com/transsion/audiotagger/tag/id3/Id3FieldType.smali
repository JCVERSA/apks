.class public final enum Lcom/transsion/audiotagger/tag/id3/Id3FieldType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/id3/Id3FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

.field public static final enum BINARY:Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

.field public static final enum TEXT:Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

.field public static final enum USER_DEFINED_TEXT:Lcom/transsion/audiotagger/tag/id3/Id3FieldType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/id3/Id3FieldType;
    .locals 3

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;->TEXT:Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;->USER_DEFINED_TEXT:Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;->BINARY:Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;->TEXT:Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    const-string v1, "USER_DEFINED_TEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;->USER_DEFINED_TEXT:Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    const-string v1, "BINARY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;->BINARY:Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;->$values()[Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;->$VALUES:[Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/Id3FieldType;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/id3/Id3FieldType;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/Id3FieldType;->$VALUES:[Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/id3/Id3FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/id3/Id3FieldType;

    return-object v0
.end method
