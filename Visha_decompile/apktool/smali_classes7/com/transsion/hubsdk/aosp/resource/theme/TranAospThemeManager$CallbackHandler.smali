.class Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager$CallbackHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackHandler"
.end annotation


# instance fields
.field private final mCallback:Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager$CallbackHandler;->mCallback:Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    new-array p3, p1, [Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager$CallbackHandler;->mCallback:Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager$CallbackHandler;->mCallback:Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager$CallbackHandler;->mCallback:Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;

    invoke-static {p1, p0, p3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
