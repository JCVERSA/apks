.class public Lsv3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsv3$b;
    }
.end annotation


# instance fields
.field public a:Landroidx/biometric/BiometricPrompt;

.field public b:Landroidx/biometric/BiometricPrompt$PromptInfo;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lsv3$b;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsv3$b;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsv3;->d:Lsv3$b;

    iput p3, p0, Lsv3;->e:I

    iput p4, p0, Lsv3;->f:I

    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lsv3;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic a(Lsv3;)Lsv3$b;
    .locals 0

    iget-object p0, p0, Lsv3;->d:Lsv3$b;

    return-object p0
.end method

.method public static bridge synthetic b(Lsv3;)I
    .locals 0

    iget p0, p0, Lsv3;->e:I

    return p0
.end method

.method public static bridge synthetic c(Lsv3;)I
    .locals 0

    iget p0, p0, Lsv3;->f:I

    return p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lsv3;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Luv3;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceSecure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEnabled:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FigerprintNewUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fingerprintEnabled"

    invoke-static {p0, v0, v1}, Luv3;->h(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object p0

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/biometric/BiometricManager;->canAuthenticate()I

    move-result p0

    const-string v0, "isDeviceSecureString"

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const-string p0, "\u65e0\u6cd5\u4f7f\u7528\u751f\u7269\u8bc6\u522b"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const-string p0, "\u6b64\u8bbe\u5907\u4e0d\u652f\u6301\u751f\u7269\u8bc6\u522b"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const-string p0, "\u4f60\u8fd8\u6ca1\u6709\u8bbe\u7f6e\u4efb\u4f55\u751f\u7269\u8bc6\u522b\u7279\u5f81"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_2
    const-string p0, "\u751f\u7269\u8bc6\u522b\u786c\u4ef6\u5f53\u524d\u4e0d\u53ef\u7528"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_3
    const-string p0, "\u6b64\u8bbe\u5907\u5f55\u5165\u6307\u7eb9"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method


# virtual methods
.method public g(Landroid/content/Context;III)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-nez p4, :cond_0

    const-string p4, " "

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    :goto_0
    invoke-static {p1}, Lsv3;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lsv3;->f(Landroid/content/Context;)Ljava/lang/String;

    new-instance v0, Landroidx/biometric/BiometricPrompt;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lsv3;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lsv3$a;

    invoke-direct {v2, p0}, Lsv3$a;-><init>(Lsv3;)V

    invoke-direct {v0, p1, v1, v2}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    iput-object v0, p0, Lsv3;->a:Landroidx/biometric/BiometricPrompt;

    new-instance p1, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object p1

    iput-object p1, p0, Lsv3;->b:Landroidx/biometric/BiometricPrompt$PromptInfo;

    iget-object p0, p0, Lsv3;->a:Landroidx/biometric/BiometricPrompt;

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lsv3;->f(Landroid/content/Context;)Ljava/lang/String;

    iget-object p1, p0, Lsv3;->d:Lsv3$b;

    iget p2, p0, Lsv3;->e:I

    iget p0, p0, Lsv3;->f:I

    invoke-interface {p1, p2, p0}, Lsv3$b;->a(II)V

    :goto_1
    return-void
.end method
