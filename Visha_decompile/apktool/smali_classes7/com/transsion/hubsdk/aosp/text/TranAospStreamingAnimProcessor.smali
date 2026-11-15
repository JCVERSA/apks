.class public Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/text/ITranStreamingAnimProcessorAdapter;


# static fields
.field private static final CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final METHOD_handleStreamingOutput:Ljava/lang/reflect/Method;

.field private static final METHOD_obtain:Ljava/lang/reflect/Method;

.field private static final METHOD_setAnimCallback:Ljava/lang/reflect/Method;

.field private static final METHOD_setEndAnimParams:Ljava/lang/reflect/Method;

.field private static final METHOD_setInputConnection:Ljava/lang/reflect/Method;

.field private static final METHOD_setStartAnimParams:Ljava/lang/reflect/Method;

.field private static final METHOD_setUpdateAnimParams:Ljava/lang/reflect/Method;


# instance fields
.field private final mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "com.transsion.text.StreamingAnimProcessor"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->CLASS:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "obtain"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_obtain:Ljava/lang/reflect/Method;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/CharSequence;

    const-class v3, Landroid/view/View;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "handleStreamingOutput"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_handleStreamingOutput:Ljava/lang/reflect/Method;

    const-class v2, Landroid/view/inputmethod/InputConnection;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setInputConnection"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setInputConnection:Ljava/lang/reflect/Method;

    const-class v2, Ljava/lang/Runnable;

    filled-new-array {v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setAnimCallback"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setAnimCallback:Ljava/lang/reflect/Method;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v5, v1, v1}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setStartAnimParams"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setStartAnimParams:Ljava/lang/reflect/Method;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v5

    move-object v6, v1

    move-object v7, v9

    move-object v8, v9

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setUpdateAnimParams"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setUpdateAnimParams:Ljava/lang/reflect/Method;

    const-string v2, "setEndAnimParams"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setEndAnimParams:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_obtain:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public handleStreamingOutput(Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_handleStreamingOutput:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAnimCallback(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setAnimCallback:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEndAnimParams(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setEndAnimParams:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setInputConnection:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStartAnimParams(JJII)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setStartAnimParams:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUpdateAnimParams(IIJJIFFF)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->METHOD_setUpdateAnimParams:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/text/TranAospStreamingAnimProcessor;->mInstance:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    invoke-static {p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p7

    invoke-static {p10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p8

    filled-new-array/range {p1 .. p8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
