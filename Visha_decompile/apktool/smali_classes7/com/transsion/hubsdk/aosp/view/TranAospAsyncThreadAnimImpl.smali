.class public Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospAsyncThreadAnimImpl"

.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAsyncThreadAnimImplInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.view.AsyncThreadAnimImpl"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->mAsyncThreadAnimImplInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public asyncAnimScheduleTraversals(Landroid/view/View;)Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->mAsyncThreadAnimImplInstance:Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "TranAospAsyncThreadAnimImpl"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Landroid/view/View;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asyncAnimScheduleTraversals"

    invoke-static {v0, v4, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->mAsyncThreadAnimImplInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "asyncAnimScheduleTraversals method is null!"

    invoke-static {v2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :goto_0
    const-string p0, "mObject or target is null!"

    invoke-static {v2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public init(Landroid/os/Looper;)V
    .locals 4

    sget-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    const-string v1, "TranAospAsyncThreadAnimImpl"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-class v2, Landroid/os/Looper;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->mAsyncThreadAnimImplInstance:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "Method getInstance not found in sClass or mObject is null"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "AsyncThreadAnimImpl Class or looper is null, cannot initialize"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->mAsyncThreadAnimImplInstance:Ljava/lang/Object;

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;F)Z
    .locals 4

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "TranAospAsyncThreadAnimImpl"

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-class v2, Landroid/view/View;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setViewAlpha"

    invoke-static {p0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "setViewAlpha method is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    :goto_0
    const-string p0, "AsyncThreadAnimImpl Class or View target is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setViewScaleX(Landroid/view/View;F)Z
    .locals 4

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "TranAospAsyncThreadAnimImpl"

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-class v2, Landroid/view/View;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setViewScaleX"

    invoke-static {p0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "setViewScaleX method is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    :goto_0
    const-string p0, "AsyncThreadAnimImpl Class or View target is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setViewScaleY(Landroid/view/View;F)Z
    .locals 4

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "TranAospAsyncThreadAnimImpl"

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-class v2, Landroid/view/View;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setViewScaleY"

    invoke-static {p0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "setViewScaleY method is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    :goto_0
    const-string p0, "AsyncThreadAnimImpl Class or View target is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setViewTranslationX(Landroid/view/View;F)Z
    .locals 4

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "TranAospAsyncThreadAnimImpl"

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-class v2, Landroid/view/View;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setViewTranslationX"

    invoke-static {p0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "setViewTranslationX method is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    :goto_0
    const-string p0, "AsyncThreadAnimImpl Class or View target is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setViewTranslationY(Landroid/view/View;F)Z
    .locals 4

    sget-object p0, Lcom/transsion/hubsdk/aosp/view/TranAospAsyncThreadAnimImpl;->sClass:Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "TranAospAsyncThreadAnimImpl"

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-class v2, Landroid/view/View;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setViewTranslationY"

    invoke-static {p0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "setViewTranslationY method is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    :goto_0
    const-string p0, "AsyncThreadAnimImpl Class or View target is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
