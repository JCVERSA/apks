.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;

.field private static final TAG:Ljava/lang/String; = "ToastUtils"

.field private static sApplication:Landroid/app/Application;

.field private static sTempToastParams:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;",
            ">;"
        }
    .end annotation
.end field

.field private static sToastInterceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

.field private static sToastStrategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

.field private static sToastStyle:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final cancel()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->hideToast()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->hideLoading()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final hideLoading()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sTempToastParams:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStrategy()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;->cancelToast()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public static final hideToast()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sTempToastParams:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStrategy()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;->cancelToast()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public static final init(Landroid/app/Application;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v0, v1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->init$default(Landroid/app/Application;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final init(Landroid/app/Application;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->init$default(Landroid/app/Application;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final init(Landroid/app/Application;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sput-object p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sApplication:Landroid/app/Application;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->setStrategy(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;)V

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Lcom/cloud/tmc/miniapp/utils/toast/style/BlackToastStyle;

    invoke-direct {p2}, Lcom/cloud/tmc/miniapp/utils/toast/style/BlackToastStyle;-><init>()V

    :cond_1
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->setStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)V

    return-void
.end method

.method public static synthetic init$default(Landroid/app/Application;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->init(Landroid/app/Application;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final isInit()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sApplication:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sToastStrategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sToastStyle:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public static synthetic isInit$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final setInterceptor(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "interceptor"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sToastInterceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    .line 7
    .line 8
    return-void
.end method

.method public static final setStrategy(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "strategy"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sApplication:Landroid/app/Application;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;->registerStrategy(Landroid/app/Application;)V

    .line 9
    .line 10
    .line 11
    sput-object p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sToastStrategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    .line 12
    .line 13
    return-void
.end method

.method public static final setStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "style"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sToastStyle:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 7
    .line 8
    return-void
.end method

.method public static final showAddhomeSuccessToast()V
    .locals 15
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v14, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 2
    .line 3
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_add_home_successful_toast:I

    .line 4
    .line 5
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v0, "getString(R.string.mini_add_home_successful_toast)"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v8, Lcom/cloud/tmc/miniapp/utils/toast/style/AddHomeSuccessToastStyle;

    .line 15
    .line 16
    invoke-direct {v8}, Lcom/cloud/tmc/miniapp/utils/toast/style/AddHomeSuccessToastStyle;-><init>()V

    .line 17
    .line 18
    .line 19
    const/16 v12, 0x3be

    .line 20
    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    move-object v0, v14

    .line 32
    invoke-direct/range {v0 .. v13}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;-><init>(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v14}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static final showLoading(Ljava/lang/CharSequence;)V
    .locals 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x7e

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v10}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showLoading$default(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showLoading(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;)V
    .locals 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x7c

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v10}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showLoading$default(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showLoading(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;I)V
    .locals 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 3
    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x78

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v10}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showLoading$default(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showLoading(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJ)V
    .locals 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 4
    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x70

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v10}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showLoading$default(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showLoading(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZ)V
    .locals 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 5
    const-string v0, "text"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x60

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-static/range {v1 .. v10}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showLoading$default(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showLoading(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;)V
    .locals 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 6
    const-string v0, "text"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v8, 0x0

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v10}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showLoading$default(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showLoading(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;",
            "IJZ",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "text"

    move-object/from16 v3, p0

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v10, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v10, v0, v4, v1, v2}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    const/16 v14, 0x1a0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v0

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v13, p7

    invoke-direct/range {v2 .. v15}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;-><init>(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V

    return-void
.end method

.method public static synthetic showLoading$default(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 5

    .line 1
    and-int/lit8 p9, p8, 0x2

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x4

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p9, :cond_1

    .line 11
    .line 12
    move p9, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move p9, p2

    .line 15
    :goto_0
    and-int/lit8 p2, p8, 0x8

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    const-wide/16 p3, 0x0

    .line 20
    .line 21
    :cond_2
    move-wide v1, p3

    .line 22
    and-int/lit8 p2, p8, 0x10

    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    move v0, p5

    .line 28
    :goto_1
    and-int/lit8 p2, p8, 0x20

    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    if-eqz p2, :cond_4

    .line 32
    .line 33
    move-object v3, p3

    .line 34
    goto :goto_2

    .line 35
    :cond_4
    move-object v3, p6

    .line 36
    :goto_2
    and-int/lit8 p2, p8, 0x40

    .line 37
    .line 38
    if-eqz p2, :cond_5

    .line 39
    .line 40
    move-object v4, p3

    .line 41
    goto :goto_3

    .line 42
    :cond_5
    move-object v4, p7

    .line 43
    :goto_3
    move-object p2, p0

    .line 44
    move-object p3, p1

    .line 45
    move p4, p9

    .line 46
    move-wide p5, v1

    .line 47
    move p7, v0

    .line 48
    move-object p8, v3

    .line 49
    move-object p9, v4

    .line 50
    invoke-static/range {p2 .. p9}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showLoading(Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;IJZLjava/io/File;Lkotlin/jvm/functions/Function0;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static final showToast(I)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move v0, p0

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    return-void
.end method

.method public static final showToast(II)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    const/16 v5, 0xc

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    return-void
.end method

.method public static final showToast(IIJ)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 3
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    return-void
.end method

.method public static final showToast(IIJZ)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 8
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;

    .line 9
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->stringIdToCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    .line 10
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showToast(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "params"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->isInit()Z

    move-result v0

    const-string v1, "ToastUtils"

    if-nez v0, :cond_0

    .line 14
    const-string p0, "It\'s not init"

    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 16
    const-string p0, "It\'s empty"

    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStrategy()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 18
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sToastStrategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    if-nez v0, :cond_2

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->setStrategy(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->setStrategy(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;)V

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    move-result-object v0

    if-nez v0, :cond_5

    .line 20
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sToastStyle:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    if-nez v0, :cond_4

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/style/BlackToastStyle;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/toast/style/BlackToastStyle;-><init>()V

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->setStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->setStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)V

    .line 21
    :cond_5
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getInterceptor()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    move-result-object v0

    if-nez v0, :cond_7

    .line 22
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sToastInterceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    if-nez v0, :cond_6

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastLogInterceptor;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastLogInterceptor;-><init>()V

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->setInterceptor(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;)V

    .line 23
    :cond_6
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->setInterceptor(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;)V

    .line 24
    :cond_7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getInterceptor()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0, p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;->intercept(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)Z

    move-result v0

    if-ne v0, v2, :cond_8

    return-void

    .line 25
    :cond_8
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDuration()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_a

    .line 26
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_9

    move v1, v2

    .line 27
    :cond_9
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->setDuration(I)V

    .line 28
    :cond_a
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sTempToastParams:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStrategy()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;->showToast(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V

    :cond_b
    return-void
.end method

.method public static final showToast(Ljava/lang/CharSequence;)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 4
    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showToast(Ljava/lang/CharSequence;I)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 5
    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showToast(Ljava/lang/CharSequence;IJ)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 6
    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showToast(Ljava/lang/CharSequence;IJZ)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 7
    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final showToast(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "IJZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "text"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    const/16 v13, 0x1f0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v12, p5

    invoke-direct/range {v1 .. v14}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;-><init>(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V

    return-void
.end method

.method public static synthetic showToast$default(IIJZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 1
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast(IIJZ)V

    return-void
.end method

.method public static synthetic showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_2

    move p4, v0

    :cond_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    const/4 p5, 0x0

    .line 2
    :cond_3
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final showToastLong(I)V
    .locals 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToastLong$default(IJILjava/lang/Object;)V

    return-void
.end method

.method public static final showToastLong(IJ)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 3
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->stringIdToCharSequence(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToastLong(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method public static final showToastLong(Ljava/lang/CharSequence;)V
    .locals 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToastLong$default(Ljava/lang/CharSequence;JILjava/lang/Object;)V

    return-void
.end method

.method public static final showToastLong(Ljava/lang/CharSequence;J)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v3, p1

    .line 4
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic showToastLong$default(IJILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToastLong(IJ)V

    return-void
.end method

.method public static synthetic showToastLong$default(Ljava/lang/CharSequence;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToastLong(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method public static final showToastShort(I)V
    .locals 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToastShort$default(IJILjava/lang/Object;)V

    return-void
.end method

.method public static final showToastShort(IJ)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 3
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->stringIdToCharSequence(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToastShort(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method public static final showToastShort(Ljava/lang/CharSequence;)V
    .locals 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToastShort$default(Ljava/lang/CharSequence;JILjava/lang/Object;)V

    return-void
.end method

.method public static final showToastShort(Ljava/lang/CharSequence;J)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v3, p1

    .line 4
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(Ljava/lang/CharSequence;IJZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic showToastShort$default(IJILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToastShort(IJ)V

    return-void
.end method

.method public static synthetic showToastShort$default(Ljava/lang/CharSequence;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToastShort(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method private final stringIdToCharSequence(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->sApplication:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    return-object v0
.end method
