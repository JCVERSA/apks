.class public final enum Lcom/transsion/audiotagger/audio/wav/WavOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/wav/WavOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/wav/WavOptions;

.field public static final enum READ_ID3_ONLY:Lcom/transsion/audiotagger/audio/wav/WavOptions;

.field public static final enum READ_ID3_ONLY_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

.field public static final enum READ_ID3_UNLESS_ONLY_INFO:Lcom/transsion/audiotagger/audio/wav/WavOptions;

.field public static final enum READ_ID3_UNLESS_ONLY_INFO_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

.field public static final enum READ_INFO_ONLY:Lcom/transsion/audiotagger/audio/wav/WavOptions;

.field public static final enum READ_INFO_ONLY_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

.field public static final enum READ_INFO_UNLESS_ONLY_ID3:Lcom/transsion/audiotagger/audio/wav/WavOptions;

.field public static final enum READ_INFO_UNLESS_ONLY_ID3_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/wav/WavOptions;
    .locals 8

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_ID3_ONLY:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_INFO_ONLY:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    sget-object v2, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    sget-object v3, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_INFO_UNLESS_ONLY_ID3:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    sget-object v4, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_ID3_ONLY_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    sget-object v5, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_INFO_ONLY_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    sget-object v6, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    sget-object v7, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_INFO_UNLESS_ONLY_ID3_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    filled-new-array/range {v0 .. v7}, [Lcom/transsion/audiotagger/audio/wav/WavOptions;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;

    const-string v1, "READ_ID3_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_ID3_ONLY:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;

    const-string v1, "READ_INFO_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_INFO_ONLY:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;

    const-string v1, "READ_ID3_UNLESS_ONLY_INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;

    const-string v1, "READ_INFO_UNLESS_ONLY_ID3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_INFO_UNLESS_ONLY_ID3:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;

    const-string v1, "READ_ID3_ONLY_AND_SYNC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_ID3_ONLY_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;

    const-string v1, "READ_INFO_ONLY_AND_SYNC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_INFO_ONLY_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;

    const-string v1, "READ_ID3_UNLESS_ONLY_INFO_AND_SYNC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;

    const-string v1, "READ_INFO_UNLESS_ONLY_ID3_AND_SYNC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_INFO_UNLESS_ONLY_ID3_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    invoke-static {}, Lcom/transsion/audiotagger/audio/wav/WavOptions;->$values()[Lcom/transsion/audiotagger/audio/wav/WavOptions;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;->$VALUES:[Lcom/transsion/audiotagger/audio/wav/WavOptions;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/wav/WavOptions;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/wav/WavOptions;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/wav/WavOptions;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavOptions;->$VALUES:[Lcom/transsion/audiotagger/audio/wav/WavOptions;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/wav/WavOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/wav/WavOptions;

    return-object v0
.end method
