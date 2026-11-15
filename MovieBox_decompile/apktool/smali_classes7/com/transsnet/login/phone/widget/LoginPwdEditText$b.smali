.class public final Lcom/transsnet/login/phone/widget/LoginPwdEditText$b;
.super Landroid/text/InputFilter$LengthFilter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/widget/LoginPwdEditText;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/login/phone/widget/LoginPwdEditText;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsnet/login/phone/widget/LoginPwdEditText;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/transsnet/login/phone/widget/LoginPwdEditText$b;->a:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 2
    .line 3
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p3, p2

    .line 10
    :goto_0
    if-eqz p4, :cond_1

    .line 11
    .line 12
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    :cond_1
    add-int/2addr p3, p2

    .line 17
    invoke-virtual {p0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-le p3, p2, :cond_2

    .line 22
    .line 23
    iget-object p2, p0, Lcom/transsnet/login/phone/widget/LoginPwdEditText$b;->a:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 24
    .line 25
    invoke-static {p2}, Lcom/transsnet/login/phone/widget/LoginPwdEditText;->access$outOfLengthLimit(Lcom/transsnet/login/phone/widget/LoginPwdEditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    :cond_2
    return-object p1
.end method
