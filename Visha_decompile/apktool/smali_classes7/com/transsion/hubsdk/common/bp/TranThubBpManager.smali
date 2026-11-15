.class public Lcom/transsion/hubsdk/common/bp/TranThubBpManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXCPC_TID:J = 0xd96e64c116L

.field private static final EXCP_INFO_TAG:Ljava/lang/String; = "thub_excp_info"

.field private static final EXCP_INFO_TID:J = 0xd96e740369L

.field private static final MAX_EXCP_INFO_LEN:I = 0x7d0

.field private static final STACK_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "TranThubBpManager"

.field private static final THUB_CORE_VERSION_KEY:Ljava/lang/String; = "c_v"

.field private static final THUB_MP_VERSION:I = 0x1

.field private static final THUB_SDK_VERSION_KEY:Ljava/lang/String; = "s_v"

.field private static final TRACE_INFO_KEY:Ljava/lang/String; = "t_i"

.field private static final TRACE_TIMESTAMP_KEY:Ljava/lang/String; = "s_t"

.field private static mContext:Landroid/content/Context;

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static mService:Lcom/transsion/hubsdk/bp/ITranThubBp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "thub_bp"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/bp/ITranThubBp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/bp/ITranThubBp;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->lambda$recordTimeout$3(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->lambda$recordException$0(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->lambda$recordTimeout$2(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->lambda$recordException$1(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getExcpInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getStackTrace(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v4, v0, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-lt v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    sget-object p1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStackTrace Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method private static synthetic lambda$recordException$0(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch Thub-sdk Exception form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordExcp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordException.catchEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0x157ccf0d

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " eStr="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v0, v2, v3, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->tneLog()V

    return-void
.end method

.method private static synthetic lambda$recordException$1(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch Thub-sdk Exception form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordExcp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordException.catchEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0x157ccf0d

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " eStr="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v0, v2, v3, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$recordTimeout$2(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .locals 6

    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thub-sdk Timeout from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v1, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordTimeout(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v0

    :goto_0
    sget-object v2, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordTimeout.catchEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0x157ccf0d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v5, 0x7d0

    if-le p1, v5, :cond_0

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {v4, v3, v1, v2, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->tneLog()V

    return-void
.end method

.method private static synthetic lambda$recordTimeout$3(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .locals 6

    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thub-sdk Timeout form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v1, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordTimeout(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v0

    :goto_0
    sget-object v2, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordTimeout.catchEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0x157ccf0d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v5, 0x7d0

    if-le p1, v5, :cond_0

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {v4, v3, v1, v2, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->getExcpInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  \r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 p1, 0x7d0

    if-le p0, p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static recordException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "recordException fail, incompatible version"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide v0, 0xd96e64c116L

    .line 3
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ll2b;

    invoke-direct {v0, p1, p2}, Ll2b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static recordException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 6
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "recordException fail, incompatible version"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide v0, 0xd96e64c116L

    .line 8
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_1
    sget-object v0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lk2b;

    invoke-direct {v1, p0, p1}, Lk2b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static recordTimeout(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .line 1
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "recordException fail, incompatible version"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide v0, 0xd96e64c116L

    .line 3
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object p2, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Li2b;

    invoke-direct {p3, p1, p0}, Li2b;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static recordTimeout(Ljava/lang/String;J)V
    .locals 3

    .line 7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "recordException fail, incompatible version"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide v0, 0xd96e64c116L

    .line 9
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    sget-object p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lj2b;

    invoke-direct {p2, p0, v0}, Lj2b;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static tneLog()V
    .locals 7

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "activity"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "0x01010001"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string v6, ""

    const-wide/16 v3, 0x200

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/app/ITranActivityManager;->startTNE(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTNE fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "c_v"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "s_v"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "s_t"

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "t_i"

    invoke-virtual {v0, p0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide p0, 0xd96e740369L

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "thub_excp_info"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(Ljava/lang/Long;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
