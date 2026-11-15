.class synthetic Lcom/transsion/audiotagger/tag/wav/WavTag$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/tag/wav/WavTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/transsion/audiotagger/audio/wav/WavOptions;->values()[Lcom/transsion/audiotagger/audio/wav/WavOptions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag$1;->$SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions:[I

    :try_start_0
    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_ID3_ONLY:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag$1;->$SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions:[I

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_ID3_ONLY_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag$1;->$SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions:[I

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_INFO_ONLY:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag$1;->$SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions:[I

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_INFO_ONLY_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag$1;->$SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions:[I

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag$1;->$SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions:[I

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag$1;->$SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions:[I

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_INFO_UNLESS_ONLY_ID3:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/transsion/audiotagger/tag/wav/WavTag$1;->$SwitchMap$com$transsion$audiotagger$audio$wav$WavOptions:[I

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavOptions;->READ_INFO_UNLESS_ONLY_ID3_AND_SYNC:Lcom/transsion/audiotagger/audio/wav/WavOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
