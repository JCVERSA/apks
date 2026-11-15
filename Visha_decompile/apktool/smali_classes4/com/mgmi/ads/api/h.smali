.class public final enum Lcom/mgmi/ads/api/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgmi/ads/api/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgmi/ads/api/h;

.field public static final enum AD_ONPAUSE:Lcom/mgmi/ads/api/h;

.field public static final enum AD_ONRESUME:Lcom/mgmi/ads/api/h;

.field public static final enum AD_PLAY_END:Lcom/mgmi/ads/api/h;

.field public static final enum AD_PLAY_ERROR:Lcom/mgmi/ads/api/h;

.field public static final enum AD_PLAY_FIRST_FRAME:Lcom/mgmi/ads/api/h;

.field public static final enum AD_PREPARED:Lcom/mgmi/ads/api/h;

.field public static final enum CLEAR_ALL_MIDDER_AD:Lcom/mgmi/ads/api/h;

.field public static final enum CLICK_AD:Lcom/mgmi/ads/api/h;

.field public static final enum CONTENT_FIRST_FRAME:Lcom/mgmi/ads/api/h;

.field public static final enum CONTENT_ONEND:Lcom/mgmi/ads/api/h;

.field public static final enum DISPLAY_IS_INVISIBLE:Lcom/mgmi/ads/api/h;

.field public static final enum DISPLAY_IS_VISIBLE:Lcom/mgmi/ads/api/h;

.field public static final enum DISPLAY_MUTIL_SCREEN:Lcom/mgmi/ads/api/h;

.field public static final enum DISPLAY_TYPE_FULL_SCREEN:Lcom/mgmi/ads/api/h;

.field public static final enum DISPLAY_TYPE_FULL_VIDEO:Lcom/mgmi/ads/api/h;

.field public static final enum FLOAT_MODE:Lcom/mgmi/ads/api/h;

.field public static final enum FULLSCREEN:Lcom/mgmi/ads/api/h;

.field public static final enum HARLFSCREEN:Lcom/mgmi/ads/api/h;

.field public static final enum HIDE_AD_REASON_SCREEN:Lcom/mgmi/ads/api/h;

.field public static final enum HIDE_AD_REASON_VIDEO_BAR:Lcom/mgmi/ads/api/h;

.field public static final enum IS_DISMISS_SCHEME:Lcom/mgmi/ads/api/h;

.field public static final enum IS_SHOW_SCHEME:Lcom/mgmi/ads/api/h;

.field public static final enum MEDIA_NORMAL_SIZE:Lcom/mgmi/ads/api/h;

.field public static final enum MEDIA_SMALL_SIZE:Lcom/mgmi/ads/api/h;

.field public static final enum NORMAL_MODE:Lcom/mgmi/ads/api/h;

.field public static final enum ONLAYOUT:Lcom/mgmi/ads/api/h;

.field public static final enum ON_CLICK_CLOSEAD:Lcom/mgmi/ads/api/h;

.field public static final enum PAUSE:Lcom/mgmi/ads/api/h;

.field public static final enum PAUSEPLAYER:Lcom/mgmi/ads/api/h;

.field public static final enum PAUSE_CORNER:Lcom/mgmi/ads/api/h;

.field public static final enum PIP_ENTER:Lcom/mgmi/ads/api/h;

.field public static final enum PIP_QUIT:Lcom/mgmi/ads/api/h;

.field public static final enum PIP_SIZE_CHANGED:Lcom/mgmi/ads/api/h;

.field public static final enum PULLTOFULLSCREEN:Lcom/mgmi/ads/api/h;

.field public static final enum RESUME:Lcom/mgmi/ads/api/h;

.field public static final enum RESUMEPLAYER:Lcom/mgmi/ads/api/h;

.field public static final enum RESUME_CORNER:Lcom/mgmi/ads/api/h;

.field public static final enum SET_DISPLAY_SIZE:Lcom/mgmi/ads/api/h;

.field public static final enum SHOW_TIME_ANIM_END:Lcom/mgmi/ads/api/h;

.field public static final enum SHOW_TIME_CLICK_FULL_SCREEN:Lcom/mgmi/ads/api/h;

.field public static final enum TURN_OFF_AD_SOUND:Lcom/mgmi/ads/api/h;

.field public static final enum TURN_ON_AD_SOUND:Lcom/mgmi/ads/api/h;

.field public static final enum UPDATE_VIP_TXT:Lcom/mgmi/ads/api/h;


# direct methods
.method static constructor <clinit>()V
    .locals 46

    new-instance v1, Lcom/mgmi/ads/api/h;

    move-object v0, v1

    const-string v2, "AD_PREPARED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mgmi/ads/api/h;->AD_PREPARED:Lcom/mgmi/ads/api/h;

    new-instance v2, Lcom/mgmi/ads/api/h;

    move-object v1, v2

    const-string v3, "AD_PLAY_FIRST_FRAME"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mgmi/ads/api/h;->AD_PLAY_FIRST_FRAME:Lcom/mgmi/ads/api/h;

    new-instance v3, Lcom/mgmi/ads/api/h;

    move-object v2, v3

    const-string v4, "AD_PLAY_ERROR"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mgmi/ads/api/h;->AD_PLAY_ERROR:Lcom/mgmi/ads/api/h;

    new-instance v4, Lcom/mgmi/ads/api/h;

    move-object v3, v4

    const-string v5, "AD_ONPAUSE"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/mgmi/ads/api/h;->AD_ONPAUSE:Lcom/mgmi/ads/api/h;

    new-instance v5, Lcom/mgmi/ads/api/h;

    move-object v4, v5

    const-string v6, "AD_ONRESUME"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mgmi/ads/api/h;->AD_ONRESUME:Lcom/mgmi/ads/api/h;

    new-instance v6, Lcom/mgmi/ads/api/h;

    move-object v5, v6

    const-string v7, "AD_PLAY_END"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/mgmi/ads/api/h;->AD_PLAY_END:Lcom/mgmi/ads/api/h;

    new-instance v7, Lcom/mgmi/ads/api/h;

    move-object v6, v7

    const-string v8, "CONTENT_ONEND"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mgmi/ads/api/h;->CONTENT_ONEND:Lcom/mgmi/ads/api/h;

    new-instance v8, Lcom/mgmi/ads/api/h;

    move-object v7, v8

    const-string v9, "PAUSE"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/mgmi/ads/api/h;->PAUSE:Lcom/mgmi/ads/api/h;

    new-instance v9, Lcom/mgmi/ads/api/h;

    move-object v8, v9

    const-string v10, "RESUME"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mgmi/ads/api/h;->RESUME:Lcom/mgmi/ads/api/h;

    new-instance v10, Lcom/mgmi/ads/api/h;

    move-object v9, v10

    const-string v11, "PAUSEPLAYER"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/mgmi/ads/api/h;->PAUSEPLAYER:Lcom/mgmi/ads/api/h;

    new-instance v11, Lcom/mgmi/ads/api/h;

    move-object v10, v11

    const-string v12, "RESUMEPLAYER"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/mgmi/ads/api/h;->RESUMEPLAYER:Lcom/mgmi/ads/api/h;

    new-instance v12, Lcom/mgmi/ads/api/h;

    move-object v11, v12

    const-string v13, "FULLSCREEN"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/mgmi/ads/api/h;->FULLSCREEN:Lcom/mgmi/ads/api/h;

    new-instance v13, Lcom/mgmi/ads/api/h;

    move-object v12, v13

    const-string v14, "HARLFSCREEN"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/mgmi/ads/api/h;->HARLFSCREEN:Lcom/mgmi/ads/api/h;

    new-instance v14, Lcom/mgmi/ads/api/h;

    move-object v13, v14

    const-string v15, "CONTENT_FIRST_FRAME"

    move-object/from16 v43, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/mgmi/ads/api/h;->CONTENT_FIRST_FRAME:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object v14, v0

    const-string v15, "DISPLAY_TYPE_FULL_VIDEO"

    move-object/from16 v44, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->DISPLAY_TYPE_FULL_VIDEO:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object v15, v0

    const-string v1, "DISPLAY_TYPE_FULL_SCREEN"

    move-object/from16 v45, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->DISPLAY_TYPE_FULL_SCREEN:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v16, v0

    const-string v1, "DISPLAY_MUTIL_SCREEN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->DISPLAY_MUTIL_SCREEN:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v17, v0

    const-string v1, "SET_DISPLAY_SIZE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->SET_DISPLAY_SIZE:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v18, v0

    const-string v1, "ONLAYOUT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->ONLAYOUT:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v19, v0

    const-string v1, "CLICK_AD"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->CLICK_AD:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v20, v0

    const-string v1, "HIDE_AD_REASON_SCREEN"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->HIDE_AD_REASON_SCREEN:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v21, v0

    const-string v1, "HIDE_AD_REASON_VIDEO_BAR"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->HIDE_AD_REASON_VIDEO_BAR:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v22, v0

    const-string v1, "PULLTOFULLSCREEN"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->PULLTOFULLSCREEN:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v23, v0

    const-string v1, "ON_CLICK_CLOSEAD"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->ON_CLICK_CLOSEAD:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v24, v0

    const-string v1, "CLEAR_ALL_MIDDER_AD"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->CLEAR_ALL_MIDDER_AD:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v25, v0

    const-string v1, "SHOW_TIME_ANIM_END"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->SHOW_TIME_ANIM_END:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v26, v0

    const-string v1, "SHOW_TIME_CLICK_FULL_SCREEN"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->SHOW_TIME_CLICK_FULL_SCREEN:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v27, v0

    const-string v1, "DISPLAY_IS_INVISIBLE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->DISPLAY_IS_INVISIBLE:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v28, v0

    const-string v1, "DISPLAY_IS_VISIBLE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->DISPLAY_IS_VISIBLE:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v29, v0

    const-string v1, "PIP_ENTER"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->PIP_ENTER:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v30, v0

    const-string v1, "PIP_SIZE_CHANGED"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->PIP_SIZE_CHANGED:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v31, v0

    const-string v1, "PIP_QUIT"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->PIP_QUIT:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v32, v0

    const-string v1, "TURN_ON_AD_SOUND"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->TURN_ON_AD_SOUND:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v33, v0

    const-string v1, "TURN_OFF_AD_SOUND"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->TURN_OFF_AD_SOUND:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v34, v0

    const-string v1, "MEDIA_NORMAL_SIZE"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->MEDIA_NORMAL_SIZE:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v35, v0

    const-string v1, "MEDIA_SMALL_SIZE"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->MEDIA_SMALL_SIZE:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v36, v0

    const-string v1, "UPDATE_VIP_TXT"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->UPDATE_VIP_TXT:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v37, v0

    const-string v1, "IS_SHOW_SCHEME"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->IS_SHOW_SCHEME:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v38, v0

    const-string v1, "IS_DISMISS_SCHEME"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->IS_DISMISS_SCHEME:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v39, v0

    const-string v1, "PAUSE_CORNER"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->PAUSE_CORNER:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v40, v0

    const-string v1, "RESUME_CORNER"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->RESUME_CORNER:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v41, v0

    const-string v1, "FLOAT_MODE"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->FLOAT_MODE:Lcom/mgmi/ads/api/h;

    new-instance v0, Lcom/mgmi/ads/api/h;

    move-object/from16 v42, v0

    const-string v1, "NORMAL_MODE"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/mgmi/ads/api/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgmi/ads/api/h;->NORMAL_MODE:Lcom/mgmi/ads/api/h;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    filled-new-array/range {v0 .. v42}, [Lcom/mgmi/ads/api/h;

    move-result-object v0

    sput-object v0, Lcom/mgmi/ads/api/h;->$VALUES:[Lcom/mgmi/ads/api/h;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mgmi/ads/api/h;
    .locals 1

    const-class v0, Lcom/mgmi/ads/api/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ads/api/h;

    return-object p0
.end method

.method public static values()[Lcom/mgmi/ads/api/h;
    .locals 1

    sget-object v0, Lcom/mgmi/ads/api/h;->$VALUES:[Lcom/mgmi/ads/api/h;

    invoke-virtual {v0}, [Lcom/mgmi/ads/api/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgmi/ads/api/h;

    return-object v0
.end method
