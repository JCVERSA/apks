.class public Lsv3$a;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsv3;->g(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsv3;


# direct methods
.method public constructor <init>(Lsv3;)V
    .locals 0

    iput-object p1, p0, Lsv3$a;->a:Lsv3;

    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lsv3$a;->a:Lsv3;

    invoke-static {p1}, Lsv3;->a(Lsv3;)Lsv3$b;

    move-result-object p1

    iget-object p2, p0, Lsv3$a;->a:Lsv3;

    invoke-static {p2}, Lsv3;->b(Lsv3;)I

    move-result p2

    iget-object p0, p0, Lsv3$a;->a:Lsv3;

    invoke-static {p0}, Lsv3;->c(Lsv3;)I

    move-result p0

    invoke-interface {p1, p2, p0}, Lsv3$b;->d(II)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    invoke-super {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    iget-object v0, p0, Lsv3$a;->a:Lsv3;

    invoke-static {v0}, Lsv3;->a(Lsv3;)Lsv3$b;

    move-result-object v0

    iget-object v1, p0, Lsv3$a;->a:Lsv3;

    invoke-static {v1}, Lsv3;->b(Lsv3;)I

    move-result v1

    iget-object p0, p0, Lsv3$a;->a:Lsv3;

    invoke-static {p0}, Lsv3;->c(Lsv3;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Lsv3$b;->b(II)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    iget-object p1, p0, Lsv3$a;->a:Lsv3;

    invoke-static {p1}, Lsv3;->a(Lsv3;)Lsv3$b;

    move-result-object p1

    iget-object v0, p0, Lsv3$a;->a:Lsv3;

    invoke-static {v0}, Lsv3;->b(Lsv3;)I

    move-result v0

    iget-object p0, p0, Lsv3$a;->a:Lsv3;

    invoke-static {p0}, Lsv3;->c(Lsv3;)I

    move-result p0

    invoke-interface {p1, v0, p0}, Lsv3$b;->c(II)V

    return-void
.end method
