.class public Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final B_SUPPORT_SINGLE_BUY:Z = false

.field public static final B_SUPPORT_VIP:Z

.field public static MGSDK_SPLASH:Ljava/lang/String; = "950103031"

.field public static final MGTV_ERROR_MESSAGE_300006:Ljava/lang/String;

.field public static final MGTV_ERROR_NETWORK_ERROR:Ljava/lang/String; = "140100"

.field public static final MGTV_RENDER_TYPE_SURFACEVIEW:Ljava/lang/String; = "2"

.field public static final MGTV_RENDER_TYPE_TEXTUREVIEW:Ljava/lang/String; = "1"

.field public static final SUPPORT_SINGLE_PLAY_PAY:Ljava/lang/String; = "2"

.field public static final SUPPORT_VIP:Ljava/lang/String; = "1"

.field public static final SWITCH_RESOLUTION_FAILED:Ljava/lang/String; = "0103"

.field public static final SWITCH_RESOLUTION_NEED_VIP:Ljava/lang/String; = "0104"

.field public static final SWITCH_RESOLUTION_SUCCESS:Ljava/lang/String; = "0000"

.field public static TEST_MGSDK_SPLASH:Ljava/lang/String; = "950103031"

.field public static final TRANSSION_AUTHORIZE_CODE_SUCCESS:Ljava/lang/String; = "0"

.field public static ch_token:Ljava/lang/String; = "c3d01486660ed4ef4ca2f60023878e0e"

.field public static cid:Ljava/lang/String; = "91581"

.field public static comm_content:Ljava/lang/String; = "915817275"

.field public static isAllowRc:Z = true

.field public static isAllowRcAd:Z = true

.field public static isVip:Z = false

.field public static mid:Ljava/lang/String; = "517788"

.field public static mname:Ljava/lang/String; = "Visha"

.field public static oaid:Ljava/lang/String; = ""

.field public static openId:Ljava/lang/String; = ""

.field public static test_ch_token:Ljava/lang/String; = "3945d2d4bd6312d7f8b2dc62853be6f5"

.field public static test_cid:Ljava/lang/String; = "95010"

.field public static test_comm_content:Ljava/lang/String; = "950104564"

.field public static test_detail_content:Ljava/lang/String; = "950102128"

.field public static test_feed_content:Ljava/lang/String; = "950109961"

.field public static test_immer_content:Ljava/lang/String; = "950102663"

.field public static test_mid:Ljava/lang/String; = "895394"

.field public static token:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "300006"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/vishaplayersdk/R$string;->mgtv_errmsg_300006:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvConstant;->MGTV_ERROR_MESSAGE_300006:Ljava/lang/String;

    sget-boolean v0, Lpp3;->L:Z

    sput-boolean v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvConstant;->B_SUPPORT_VIP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
