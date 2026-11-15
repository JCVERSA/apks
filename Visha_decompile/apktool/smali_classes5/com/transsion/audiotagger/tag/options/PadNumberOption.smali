.class public final enum Lcom/transsion/audiotagger/tag/options/PadNumberOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/options/PadNumberOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/options/PadNumberOption;

.field public static final enum PAD_ONE_ZERO:Lcom/transsion/audiotagger/tag/options/PadNumberOption;

.field public static final enum PAD_THREE_ZERO:Lcom/transsion/audiotagger/tag/options/PadNumberOption;

.field public static final enum PAD_TWO_ZERO:Lcom/transsion/audiotagger/tag/options/PadNumberOption;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/options/PadNumberOption;
    .locals 3

    sget-object v0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    sget-object v1, Lcom/transsion/audiotagger/tag/options/PadNumberOption;->PAD_TWO_ZERO:Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    sget-object v2, Lcom/transsion/audiotagger/tag/options/PadNumberOption;->PAD_THREE_ZERO:Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    const-string v1, "PAD_ONE_ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/options/PadNumberOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    new-instance v0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    const-string v1, "PAD_TWO_ZERO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/options/PadNumberOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;->PAD_TWO_ZERO:Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    new-instance v0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    const-string v1, "PAD_THREE_ZERO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/options/PadNumberOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;->PAD_THREE_ZERO:Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    invoke-static {}, Lcom/transsion/audiotagger/tag/options/PadNumberOption;->$values()[Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;->$VALUES:[Lcom/transsion/audiotagger/tag/options/PadNumberOption;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/options/PadNumberOption;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/options/PadNumberOption;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;->$VALUES:[Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/options/PadNumberOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    return-object v0
.end method
