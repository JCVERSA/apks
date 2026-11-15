.class public Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/graphics/ITranHardwareRendererManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubHardwareRendererManager"


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

.method public static synthetic a(Landroid/graphics/RenderNode;II)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager;->lambda$createHardwareBitmap$0(Landroid/graphics/RenderNode;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createHardwareBitmap$0(Landroid/graphics/RenderNode;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/graphics/TranHardwareRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;
    .locals 1

    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Ly2b;

    invoke-direct {v0, p1, p2, p3}, Ly2b;-><init>(Landroid/graphics/RenderNode;II)V

    sget-object p1, Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method
