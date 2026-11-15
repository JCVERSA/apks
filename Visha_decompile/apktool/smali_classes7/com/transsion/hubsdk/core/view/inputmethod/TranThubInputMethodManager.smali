.class public Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubInputMethodManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "input_method_service"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;II)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->lambda$hideAllInputMethod$4(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->lambda$switchTranInputMethod$3(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Landroid/view/KeyEvent;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->lambda$commitConnectKeyAndText$0(Landroid/view/KeyEvent;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->lambda$unregisterGlobalWritingListener$2(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->lambda$registerGlobalWritingListener$1(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$commitConnectKeyAndText$0(Landroid/view/KeyEvent;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->commitConnectKeyAndText(Landroid/view/KeyEvent;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$hideAllInputMethod$4(II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->hideAllInputMethod(II)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$registerGlobalWritingListener$1(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->registerGlobalWritingListener(Lcom/transsion/hubsdk/view/inputmethod/ITranGlobalWritingListener;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$switchTranInputMethod$3(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->switchTranInputMethod(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$unregisterGlobalWritingListener$2(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager$TranGlobalWritingListener;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->unregisterGlobalWritingListener(Lcom/transsion/hubsdk/view/inputmethod/ITranGlobalWritingListener;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public commitConnectKeyAndText(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lp3b;

    invoke-direct {v1, p0, p1, p2}, Lp3b;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Landroid/view/KeyEvent;Ljava/lang/String;)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->TAG:Ljava/lang/String;

    const-string p1, "commitConnectKeyAndText sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public freeSoftInputViewsLeaks(Landroid/content/Context;Landroid/view/Window;)V
    .locals 4

    const-string p0, "input_method"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p1, "mServedView"

    const-string v0, "mNextServedView"

    const-string v1, "mLastSrvView"

    const-string v2, "mCurRootView"

    filled-new-array {v1, v2, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    aget-object v1, p1, v0

    :try_start_0
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/view/View;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public hideAllInputMethod(II)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lo3b;

    invoke-direct {v1, p0, p1, p2}, Lo3b;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;II)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public hideSoftInputMethodByPrivilegeUser()V
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->hideSoftInputMethodByPrivilegeUser()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSoftInputMethodByPrivilegeUser fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerGlobalWritingListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ln3b;

    invoke-direct {v1, p0, p1}, Ln3b;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->TAG:Ljava/lang/String;

    const-string p1, "registerGlobalWritingListener sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    return-void
.end method

.method public switchTranInputMethod(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lq3b;

    invoke-direct {v1, p0, p1}, Lq3b;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Z)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->TAG:Ljava/lang/String;

    const-string p1, "switchTranInputMethod sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterGlobalWritingListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lm3b;

    invoke-direct {v1, p0, p1}, Lm3b;-><init>(Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V

    const-string p0, "input_method_service"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterGlobalWritingListener sucess"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSecurityInputBlackList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->mService:Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/view/inputmethod/ITranInputMethodManager;->updateSecurityInputBlackList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/view/inputmethod/TranThubInputMethodManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSecurityInputBlackList fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
