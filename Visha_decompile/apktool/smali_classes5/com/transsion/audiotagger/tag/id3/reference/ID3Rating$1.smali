.class synthetic Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$transsion$audiotagger$tag$reference$Tagger:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/Tagger;->values()[Lcom/transsion/audiotagger/tag/reference/Tagger;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating$1;->$SwitchMap$com$transsion$audiotagger$tag$reference$Tagger:[I

    :try_start_0
    sget-object v1, Lcom/transsion/audiotagger/tag/reference/Tagger;->ITUNES:Lcom/transsion/audiotagger/tag/reference/Tagger;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating$1;->$SwitchMap$com$transsion$audiotagger$tag$reference$Tagger:[I

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lcom/transsion/audiotagger/tag/reference/Tagger;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/reference/ID3Rating$1;->$SwitchMap$com$transsion$audiotagger$tag$reference$Tagger:[I

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/Tagger;->MEDIAPLAYER:Lcom/transsion/audiotagger/tag/reference/Tagger;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
