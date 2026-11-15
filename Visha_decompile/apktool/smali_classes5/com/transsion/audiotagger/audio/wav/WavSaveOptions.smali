.class public final enum Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

.field public static final enum SAVE_ACTIVE:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

.field public static final enum SAVE_BOTH:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

.field public static final enum SAVE_BOTH_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

.field public static final enum SAVE_EXISTING_AND_ACTIVE:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

.field public static final enum SAVE_EXISTING_AND_ACTIVE_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;
    .locals 5

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_ACTIVE:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    sget-object v2, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    sget-object v3, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    sget-object v4, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    const-string v1, "SAVE_EXISTING_AND_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    const-string v1, "SAVE_ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_ACTIVE:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    const-string v1, "SAVE_BOTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    const-string v1, "SAVE_EXISTING_AND_ACTIVE_AND_SYNC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    const-string v1, "SAVE_BOTH_AND_SYNC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    invoke-static {}, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->$values()[Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->$VALUES:[Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->$VALUES:[Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/wav/WavSaveOptions;

    return-object v0
.end method
