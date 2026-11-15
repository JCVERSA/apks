.class public final enum Lcom/hunantv/media/report/ReportParams$VideoType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/report/ReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hunantv/media/report/ReportParams$VideoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum AD_BOOT:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum AD_MID:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum AD_PRE:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum ALPHA_PLAY:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum AUDIO:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum AUDIO_FM:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum FANTUAN:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum FILM:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum GAME:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum GIF_CREATOR:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum GIF_PREVIEW_IMAGE:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum GIF_PREVIEW_VIDEO:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum HOME:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum HOME_PREVIEW:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum HOME_PREVIEW_DY_FEED:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum HOME_PREVIEW_FEED:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum IMMERSIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum INTERACTIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum LIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum LOCAL:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum MINI_FILM:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum NONE:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum SECRET_SPACE:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum SHORT:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum SMALL_ROUTINE:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum SOCIAL_AUDIO_CHAT:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum SOCIAL_PLAY:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum STAR_ROOM_LIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum TRY_WATCHING:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum VIP_RECOMMEND:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum VOD_AUDIO:Lcom/hunantv/media/report/ReportParams$VideoType;

.field public static final enum VOD_FEED:Lcom/hunantv/media/report/ReportParams$VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    new-instance v1, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v0, v1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->NONE:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v2, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v1, v2

    const-string v3, "VOD"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v3, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v2, v3

    const-string v4, "LIVE"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hunantv/media/report/ReportParams$VideoType;->LIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v4, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v3, v4

    const-string v5, "LOCAL"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/hunantv/media/report/ReportParams$VideoType;->LOCAL:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v5, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v4, v5

    const-string v6, "AD_PRE"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_PRE:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v6, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v5, v6

    const-string v7, "AD_MID"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_MID:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v7, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v6, v7

    const-string v8, "SHORT"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/hunantv/media/report/ReportParams$VideoType;->SHORT:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v8, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v7, v8

    const-string v9, "HOME"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/hunantv/media/report/ReportParams$VideoType;->HOME:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v9, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v8, v9

    const-string v10, "FILM"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/hunantv/media/report/ReportParams$VideoType;->FILM:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v10, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v9, v10

    const-string v11, "AD_BOOT"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_BOOT:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v11, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v10, v11

    const-string v12, "GAME"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/hunantv/media/report/ReportParams$VideoType;->GAME:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v12, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v11, v12

    const-string v13, "HOME_PREVIEW"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/hunantv/media/report/ReportParams$VideoType;->HOME_PREVIEW:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v13, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v12, v13

    const-string v14, "IMMERSIVE"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/hunantv/media/report/ReportParams$VideoType;->IMMERSIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v14, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v13, v14

    const-string v15, "VOD_FEED"

    move-object/from16 v33, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD_FEED:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v14, v0

    const-string v15, "FANTUAN"

    move-object/from16 v34, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->FANTUAN:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object v15, v0

    const-string v1, "VIP_RECOMMEND"

    move-object/from16 v35, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->VIP_RECOMMEND:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v16, v0

    const-string v1, "INTERACTIVE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->INTERACTIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v17, v0

    const-string v1, "HOME_PREVIEW_FEED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->HOME_PREVIEW_FEED:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v18, v0

    const-string v1, "HOME_PREVIEW_DY_FEED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->HOME_PREVIEW_DY_FEED:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v19, v0

    const-string v1, "SOCIAL_PLAY"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->SOCIAL_PLAY:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v20, v0

    const-string v1, "STAR_ROOM_LIVE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->STAR_ROOM_LIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v21, v0

    const-string v1, "GIF_PREVIEW_VIDEO"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->GIF_PREVIEW_VIDEO:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v22, v0

    const-string v1, "GIF_PREVIEW_IMAGE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->GIF_PREVIEW_IMAGE:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v23, v0

    const-string v1, "GIF_CREATOR"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->GIF_CREATOR:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v24, v0

    const-string v1, "AUDIO"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->AUDIO:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v25, v0

    const-string v1, "VOD_AUDIO"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD_AUDIO:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v26, v0

    const-string v1, "SOCIAL_AUDIO_CHAT"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->SOCIAL_AUDIO_CHAT:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v27, v0

    const-string v1, "TRY_WATCHING"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->TRY_WATCHING:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v28, v0

    const-string v1, "AUDIO_FM"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->AUDIO_FM:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v29, v0

    const-string v1, "ALPHA_PLAY"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->ALPHA_PLAY:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v30, v0

    const-string v1, "MINI_FILM"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->MINI_FILM:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v31, v0

    const-string v1, "SECRET_SPACE"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->SECRET_SPACE:Lcom/hunantv/media/report/ReportParams$VideoType;

    new-instance v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v32, v0

    const-string v1, "SMALL_ROUTINE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/hunantv/media/report/ReportParams$VideoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->SMALL_ROUTINE:Lcom/hunantv/media/report/ReportParams$VideoType;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    filled-new-array/range {v0 .. v32}, [Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->$VALUES:[Lcom/hunantv/media/report/ReportParams$VideoType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams$VideoType;
    .locals 1

    const-class v0, Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/report/ReportParams$VideoType;

    return-object p0
.end method

.method public static values()[Lcom/hunantv/media/report/ReportParams$VideoType;
    .locals 1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->$VALUES:[Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {v0}, [Lcom/hunantv/media/report/ReportParams$VideoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hunantv/media/report/ReportParams$VideoType;

    return-object v0
.end method
