.class synthetic Lcom/transsion/audiotagger/audio/AudioFile$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/audio/AudioFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->values()[Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/audiotagger/audio/AudioFile$1;->$SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version:[I

    :try_start_0
    sget-object v1, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->ID3_V22:Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile$1;->$SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version:[I

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->ID3_V23:Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile$1;->$SwitchMap$com$transsion$audiotagger$tag$reference$ID3V2Version:[I

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/ID3V2Version;->ID3_V24:Lcom/transsion/audiotagger/tag/reference/ID3V2Version;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
