.class public Landroidx/biometric/BiometricPrompt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;,
        Landroidx/biometric/BiometricPrompt$PromptInfo;,
        Landroidx/biometric/BiometricPrompt$AuthenticationCallback;,
        Landroidx/biometric/BiometricPrompt$AuthenticationResult;,
        Landroidx/biometric/BiometricPrompt$CryptoObject;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_RESULT_TYPE_BIOMETRIC:I = 0x2

.field public static final AUTHENTICATION_RESULT_TYPE_DEVICE_CREDENTIAL:I = 0x1

.field public static final AUTHENTICATION_RESULT_TYPE_UNKNOWN:I = -0x1

.field private static final BIOMETRIC_FRAGMENT_TAG:Ljava/lang/String; = "androidx.biometric.BiometricFragment"

.field static final BIOMETRIC_SUCCESS:I = 0x0

.field public static final ERROR_CANCELED:I = 0x5

.field public static final ERROR_HW_NOT_PRESENT:I = 0xc

.field public static final ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final ERROR_LOCKOUT:I = 0x7

.field public static final ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final ERROR_NEGATIVE_BUTTON:I = 0xd

.field public static final ERROR_NO_BIOMETRICS:I = 0xb

.field public static final ERROR_NO_DEVICE_CREDENTIAL:I = 0xe

.field public static final ERROR_NO_SPACE:I = 0x4

.field public static final ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final ERROR_TIMEOUT:I = 0x3

.field public static final ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final ERROR_USER_CANCELED:I = 0xa

.field public static final ERROR_VENDOR:I = 0x8

.field private static final TAG:Ljava/lang/String; = "BiometricPromptCompat"


# instance fields
.field private mClientFragmentManager:Landroidx/fragment/app/FragmentManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 10
    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->getViewModel(Landroidx/fragment/app/FragmentActivity;)Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Landroidx/biometric/BiometricPrompt;->addObservers(Landroidx/fragment/app/Fragment;Landroidx/biometric/BiometricViewModel;)V

    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/biometric/BiometricPrompt;->init(Landroidx/fragment/app/FragmentManager;Landroidx/biometric/BiometricViewModel;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AuthenticationCallback must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fragment must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 25
    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->getViewModel(Landroidx/fragment/app/FragmentActivity;)Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Landroidx/biometric/BiometricPrompt;->addObservers(Landroidx/fragment/app/Fragment;Landroidx/biometric/BiometricViewModel;)V

    .line 27
    invoke-direct {p0, v1, v0, p2, p3}, Landroidx/biometric/BiometricPrompt;->init(Landroidx/fragment/app/FragmentManager;Landroidx/biometric/BiometricViewModel;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    return-void

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AuthenticationCallback must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Executor must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fragment must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroidx/biometric/BiometricPrompt;->getViewModel(Landroidx/fragment/app/FragmentActivity;)Landroidx/biometric/BiometricViewModel;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, p1, v1, p2}, Landroidx/biometric/BiometricPrompt;->init(Landroidx/fragment/app/FragmentManager;Landroidx/biometric/BiometricViewModel;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AuthenticationCallback must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FragmentActivity must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 17
    invoke-static {p1}, Landroidx/biometric/BiometricPrompt;->getViewModel(Landroidx/fragment/app/FragmentActivity;)Landroidx/biometric/BiometricViewModel;

    move-result-object p1

    .line 18
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/biometric/BiometricPrompt;->init(Landroidx/fragment/app/FragmentManager;Landroidx/biometric/BiometricViewModel;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AuthenticationCallback must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Executor must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FragmentActivity must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addObservers(Landroidx/fragment/app/Fragment;Landroidx/biometric/BiometricViewModel;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/biometric/BiometricViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    new-instance v0, Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;

    invoke-direct {v0, p1}, Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;-><init>(Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private authenticateInternal(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 2
    .param p1    # Landroidx/biometric/BiometricPrompt$PromptInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/BiometricPrompt$CryptoObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "BiometricPromptCompat"

    if-nez v0, :cond_0

    const-string p0, "Unable to start authentication. Client fragment manager was null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Unable to start authentication. Called after onSaveInstanceState()."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->findOrAddBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    return-void
.end method

.method private static findBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "androidx.biometric.BiometricFragment"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/biometric/BiometricFragment;

    return-object p0
.end method

.method private static findOrAddBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;
    .locals 3
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->findBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/biometric/BiometricFragment;->newInstance()Landroidx/biometric/BiometricFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "androidx.biometric.BiometricFragment"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-object v0
.end method

.method private static getViewModel(Landroidx/fragment/app/FragmentActivity;)Landroidx/biometric/BiometricViewModel;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p0, Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Landroidx/biometric/BiometricViewModel;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private init(Landroidx/fragment/app/FragmentManager;Landroidx/biometric/BiometricViewModel;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/BiometricViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Landroidx/biometric/BiometricViewModel;->setClientExecutor(Ljava/util/concurrent/Executor;)V

    :cond_0
    invoke-virtual {p2, p4}, Landroidx/biometric/BiometricViewModel;->setClientCallback(Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    .locals 1
    .param p1    # Landroidx/biometric/BiometricPrompt$PromptInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Landroidx/biometric/BiometricPrompt;->authenticateInternal(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PromptInfo cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 3
    .param p1    # Landroidx/biometric/BiometricPrompt$PromptInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/BiometricPrompt$CryptoObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 1
    invoke-static {p1, p2}, Landroidx/biometric/AuthenticatorUtils;->getConsolidatedAuthenticators(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)I

    move-result v0

    .line 2
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isWeakBiometricAllowed(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 4
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Crypto-based authentication is not supported for device credential prior to API 30."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/biometric/BiometricPrompt;->authenticateInternal(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    return-void

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Crypto-based authentication is not supported for Class 2 (Weak) biometrics."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CryptoObject cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PromptInfo cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancelAuthentication()V
    .locals 1

    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "BiometricPromptCompat"

    if-nez p0, :cond_0

    const-string p0, "Unable to start authentication. Client fragment manager was null."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->findBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Unable to cancel authentication. BiometricFragment not found."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    return-void
.end method
