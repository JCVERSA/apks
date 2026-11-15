.class public final enum Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

.field public static final enum ID3_THEN_INFO:Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

.field public static final enum INFO_THEN_ID3:Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;->INFO_THEN_ID3:Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;->ID3_THEN_INFO:Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    filled-new-array {v0, v1}, [Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    const-string v1, "INFO_THEN_ID3"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;->INFO_THEN_ID3:Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    const-string v1, "ID3_THEN_INFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;->ID3_THEN_INFO:Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    invoke-static {}, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;->$values()[Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;->$VALUES:[Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;->$VALUES:[Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/wav/WavSaveOrder;

    return-object v0
.end method
