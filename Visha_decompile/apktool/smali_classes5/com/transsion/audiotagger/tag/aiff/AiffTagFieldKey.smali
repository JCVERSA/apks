.class public final enum Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;

.field public static final enum TIMESTAMP:Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;


# instance fields
.field private fieldName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;->TIMESTAMP:Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;

    filled-new-array {v0}, [Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;

    const-string v1, "TIMESTAMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;->TIMESTAMP:Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;

    invoke-static {}, Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;->$values()[Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;->$VALUES:[Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;

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

    iput-object p3, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;->fieldName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;->$VALUES:[Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;

    return-object v0
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/aiff/AiffTagFieldKey;->fieldName:Ljava/lang/String;

    return-object p0
.end method
