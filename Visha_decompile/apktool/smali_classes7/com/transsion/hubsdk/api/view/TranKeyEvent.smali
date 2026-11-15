.class public Lcom/transsion/hubsdk/api/view/TranKeyEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranKeyEvent"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospTranKeyEvent;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubTranKeyEvent;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranKeyEventAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->TAG:Ljava/lang/String;

    const-string v0, "TranThubTranKeyEvent"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubTranKeyEvent;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubTranKeyEvent;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubTranKeyEvent;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubTranKeyEvent;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->TAG:Ljava/lang/String;

    const-string v0, "TranAospTranKeyEvent"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospTranKeyEvent;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospTranKeyEvent;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospTranKeyEvent;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospTranKeyEvent;

    :cond_2
    return-object p1
.end method

.method public obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .locals 16

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/transsion/hubsdk/api/view/TranKeyEvent;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranKeyEventAdapter;

    move-result-object v1

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    invoke-interface/range {v1 .. v15}, Lcom/transsion/hubsdk/interfaces/view/ITranKeyEventAdapter;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method
