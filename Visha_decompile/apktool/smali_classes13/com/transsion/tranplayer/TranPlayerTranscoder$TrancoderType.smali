.class public final enum Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/TranPlayerTranscoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrancoderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

.field public static final enum TYPE_METADATA_CMD:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

.field public static final enum TYPE_NONE:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

.field public static final enum TYPE_TRANSCODE_AAC:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

.field public static final enum TYPE_TRANSCODE_COMBINE_FILES:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

.field public static final enum TYPE_TRANSCODE_TO_GIF:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

.field public static final enum TYPE_TRANSCODE_TO_GIF_CMD:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

.field public static final enum TYPE_TRANSCODE_TO_MP3:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    const-string v1, "TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_NONE:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    new-instance v1, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    const-string v2, "TYPE_TRANSCODE_TO_MP3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_TRANSCODE_TO_MP3:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    new-instance v2, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    const-string v3, "TYPE_TRANSCODE_AAC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_TRANSCODE_AAC:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    new-instance v3, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    const-string v4, "TYPE_TRANSCODE_COMBINE_FILES"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_TRANSCODE_COMBINE_FILES:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    new-instance v4, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    const-string v5, "TYPE_TRANSCODE_TO_GIF"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_TRANSCODE_TO_GIF:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    new-instance v5, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    const-string v6, "TYPE_TRANSCODE_TO_GIF_CMD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_TRANSCODE_TO_GIF_CMD:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    new-instance v6, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    const-string v7, "TYPE_METADATA_CMD"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_METADATA_CMD:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    filled-new-array/range {v0 .. v6}, [Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    move-result-object v0

    sput-object v0, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->$VALUES:[Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;
    .locals 1

    const-class v0, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;
    .locals 1

    sget-object v0, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->$VALUES:[Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    invoke-virtual {v0}, [Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    return-object v0
.end method
