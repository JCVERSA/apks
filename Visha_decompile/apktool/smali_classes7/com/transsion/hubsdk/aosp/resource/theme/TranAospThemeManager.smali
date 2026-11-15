.class public Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager$CallbackHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospThemeManager"

.field private static final TARGET_CALLBACK_CLASS:Ljava/lang/String; = "com.transsion.resource.theme.TranThemeManager$ResultCallback"

.field private static final TARGET_CLASS:Ljava/lang/String; = "com.transsion.resource.theme.TranThemeManager"


# instance fields
.field private mTarget:Ljava/lang/Object;

.field private final mTargetCallbackClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.transsion.resource.theme.TranThemeManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetClass:Ljava/lang/Class;

    const-string v0, "com.transsion.resource.theme.TranThemeManager$ResultCallback"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    return-void
.end method

.method private containsNull([Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private convertPackageInfo(Ljava/lang/Object;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 11

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "TranAospThemeManager"

    const-string v1, "convertPackageInfo"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    const-string v1, "id"

    invoke-direct {p0, p1, v1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const-string v1, "author"

    invoke-direct {p0, p1, v1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const-string v1, "version"

    invoke-direct {p0, p1, v1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->getIntFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    const-string v1, "type"

    invoke-direct {p0, p1, v1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->getIntFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v6

    const-string v1, "appDir"

    invoke-direct {p0, p1, v1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    const-string v1, "description"

    invoke-direct {p0, p1, v1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    const-string v1, "running"

    invoke-direct {p0, p1, v1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->getBooleanFieldValue(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v9

    const-string v1, "targetUserId"

    invoke-direct {p0, p1, v1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->getIntFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v10

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZI)V

    return-object v0
.end method

.method private convertPackageInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->convertPackageInfo(Ljava/lang/Object;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getBooleanFieldValue(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p0

    :cond_1
    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getIntFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getTarget()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTarget:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetClass:Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTarget:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private varargs invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetClass:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->containsNull([Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetClass:Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->getTarget()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p2

    if-nez p2, :cond_3

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    invoke-static {p1, p0, p3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method private varargs invokeVoid(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager$CallbackHandler;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager$CallbackHandler;-><init>(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)V

    invoke-static {v0, p0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public disable(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    const-class v2, Landroid/os/Handler;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v0, v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p4}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Ljava/lang/Object;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    const-string p2, "disable"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invokeVoid(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public disable(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    const-class v1, Landroid/os/Handler;

    const-class v2, Ljava/lang/String;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 3
    const-string p2, "disable"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invokeVoid(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public disableAll(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    const-class v1, Landroid/os/Handler;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "disableAll"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invokeVoid(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public disableOne(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    const-class v1, Landroid/os/Handler;

    const-class v2, Ljava/lang/String;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "disableOne"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invokeVoid(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public enable(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    const-class v2, Landroid/os/Handler;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v0, v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p4}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Ljava/lang/Object;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    const-string p2, "enable"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invokeVoid(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public enable(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    const-class v1, Landroid/os/Handler;

    const-class v2, Ljava/lang/String;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 3
    const-string p2, "enable"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invokeVoid(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAospPackageInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "getPackageInfo"

    invoke-direct {p0, v1, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentRunningPackageInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "getCurrentRunningPackageInfoList"

    invoke-direct {p0, v2, v1, v0}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->convertPackageInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentRunningTheme(I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "getCurrentRunningTheme"

    invoke-direct {p0, v1, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->convertPackageInfo(Ljava/lang/Object;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackageInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "getInstalledPackageInfoList"

    invoke-direct {p0, v2, v1, v0}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->convertPackageInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackageInfoList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "getInstalledPackageInfoList"

    invoke-direct {p0, v1, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->convertPackageInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "getPackageInfo"

    invoke-direct {p0, v1, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->convertPackageInfo(Ljava/lang/Object;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    const-class v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getPackageInfo"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->convertPackageInfo(Ljava/lang/Object;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getThemeFile(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1    # Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    const-class v0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    const-class v1, Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getThemeFile"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public getThemeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 2
    const-class v0, Ljava/lang/String;

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getThemeFile"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public getThemeFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 2

    .line 1
    const-class v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getThemeFile"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public install(Ljava/io/File;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    const-class v2, Landroid/os/Handler;

    const-class v3, Ljava/io/File;

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "install"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invokeVoid(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public isIconThemeRunning()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "isIconThemeRunning"

    invoke-direct {p0, v3, v1, v2}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isIconThemeRunning(I)Z
    .locals 2

    .line 3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "isIconThemeRunning"

    invoke-direct {p0, v1, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThemeRunning(I)Z
    .locals 2

    .line 3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "isThemeRunning"

    invoke-direct {p0, v1, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThemeRunning(II)Z
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "isThemeRunning"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public operate(Ljava/lang/String;ILcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    const-class v2, Landroid/os/Handler;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "operate"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invokeVoid(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public toggle(Ljava/lang/String;ILjava/lang/String;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    const-class v5, Landroid/os/Handler;

    const-class v0, Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, p5}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, p1

    move-object v3, p3

    move-object v6, p6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "toggle"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invokeVoid(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public uninstall(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->mTargetCallbackClass:Ljava/lang/Class;

    const-class v1, Landroid/os/Handler;

    const-class v2, Ljava/lang/String;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "uninstall"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;->invokeVoid(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method
