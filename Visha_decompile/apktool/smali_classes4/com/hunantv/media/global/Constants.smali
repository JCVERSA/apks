.class public Lcom/hunantv/media/global/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/global/Constants$ReportWay;
    }
.end annotation


# static fields
.field public static final APHONE:Ljava/lang/String; = "1"

.field public static final DISABLE_NET_GET:Z = false

.field public static final EXTRA_REPORT_PARAMS:Ljava/lang/String; = "EXTRA_REPORT_PARAMS"

.field public static final FOR_OTT:Z = false

.field public static final IS_CORE2:Z = true

.field public static final IS_DAMANG:Z = false

.field public static final IS_EXTERN_SDK:Z = true

.field public static final IS_OPEN_FUNC_HEADSET_LISTEN:Z = false

.field public static final IS_OPEN_IMGOVSR:Z = false

.field public static final IS_OPEN_MARLINDRM:Z = false

.field public static final IS_OPEN_MGTVDRM:Z = false

.field public static final IS_OPEN_MULTI_CHANNEL:Z = false

.field public static final IS_OPEN_P2P:Z = false

.field public static final IS_OPEN_WANOS2:Z = false

.field public static final IS_OVERSEA:Z = false

.field public static final IS_USE_SHARED_SSL:Z = true

.field public static final IS_VIDEO_UNION_SDK:Z = true

.field public static final OTT:Ljava/lang/String; = "3"

.field public static final PLANTFORM:Ljava/lang/String; = "1"

.field public static final REPORT_BROADCAST_ACTION:Ljava/lang/String; = "mgtv.player.action.PLAYER_REPORT_EVENT"

.field public static final REPORT_VERSION:Ljava/lang/String; = "v1.0.0"

.field public static final REPORT_WAY:Lcom/hunantv/media/global/Constants$ReportWay;

.field public static final THREAD_NAME_TAG:Ljava/lang/String; = "mgtvmp_"

.field public static final USE_OPENSSL_1_0:I = 0x1

.field public static final USE_OPENSSL_1_1:I = 0x2

.field public static final USE_OPENSSL_VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hunantv/media/global/Constants$ReportWay;->LOCAL_BROADCAST:Lcom/hunantv/media/global/Constants$ReportWay;

    sput-object v0, Lcom/hunantv/media/global/Constants;->REPORT_WAY:Lcom/hunantv/media/global/Constants$ReportWay;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
