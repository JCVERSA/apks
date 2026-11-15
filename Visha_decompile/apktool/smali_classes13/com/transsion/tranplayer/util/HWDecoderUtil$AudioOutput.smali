.class public final enum Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/util/HWDecoderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

.field public static final enum ALL:Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

.field public static final enum AUDIOTRACK:Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

.field public static final enum OPENSLES:Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    const-string v1, "OPENSLES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    new-instance v1, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    const-string v2, "AUDIOTRACK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;->AUDIOTRACK:Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    new-instance v2, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    const-string v3, "ALL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;->ALL:Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    move-result-object v0

    sput-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;->$VALUES:[Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;
    .locals 1

    const-class v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    return-object p0
.end method

.method public static values()[Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;
    .locals 1

    sget-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;->$VALUES:[Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    invoke-virtual {v0}, [Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/tranplayer/util/HWDecoderUtil$AudioOutput;

    return-object v0
.end method
