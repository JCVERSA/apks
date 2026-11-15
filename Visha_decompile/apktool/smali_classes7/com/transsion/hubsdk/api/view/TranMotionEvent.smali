.class public Lcom/transsion/hubsdk/api/view/TranMotionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FLAG_TOUCH_FROM_CONNECT:I = 0x80000

.field private static final FLAG_TOUCH_FROM_CONNECT_SHOWIM:I = 0x200000

.field private static final FLAG_TOUCH_FROM_PADEXTEND:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "TranMotionEvent"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospMotionEvent;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranMotionEventAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->TAG:Ljava/lang/String;

    const-string v0, "TranThubMotionEventManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubMotionEvent;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->TAG:Ljava/lang/String;

    const-string v0, "TranAospMotionEventManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospMotionEvent;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospMotionEvent;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospMotionEvent;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospMotionEvent;

    :cond_2
    return-object p1
.end method

.method public getSourceConnectMotionFlag()I
    .locals 0

    const/high16 p0, 0x80000

    return p0
.end method

.method public getSourceConnectMotionPadExtendFlag()I
    .locals 0

    const/high16 p0, 0x400000

    return p0
.end method

.method public getSourceConnectMotionShowIMFlag()I
    .locals 0

    const/high16 p0, 0x200000

    return p0
.end method

.method public obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;
    .locals 18

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranMotionEventAdapter;

    move-result-object v0

    move-wide/from16 v1, p1

    invoke-interface/range {v0 .. v17}, Lcom/transsion/hubsdk/interfaces/view/ITranMotionEventAdapter;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public setTouchFromConnect(Landroid/view/InputEvent;Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranMotionEvent;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranMotionEventAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranMotionEventAdapter;->setTouchFromConnect(Landroid/view/InputEvent;Z)V

    return-void
.end method
