.class public Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO00p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$a;->a:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge p2, p3, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$a;->a:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    iget-boolean p2, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0p:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_digits:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
