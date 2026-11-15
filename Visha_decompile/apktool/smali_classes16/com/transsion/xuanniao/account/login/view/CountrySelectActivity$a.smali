.class public Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity$a;->b:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onTextChanged charSequence = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.palm.id.log"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity$a;->b:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    iget-object p3, p2, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->e:Lcom/transsion/xuanniao/account/login/view/OppO0OO;

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->E0(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity$a;->b:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->e:Lcom/transsion/xuanniao/account/login/view/OppO0OO;

    invoke-virtual {p2, p1}, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->c(Ljava/util/ArrayList;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity$a;->b:Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    sget p3, Lcom/transsion/xuanniao/account/R$id;->emptyL:I

    invoke-virtual {p0, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p2, 0x8

    :goto_2
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
