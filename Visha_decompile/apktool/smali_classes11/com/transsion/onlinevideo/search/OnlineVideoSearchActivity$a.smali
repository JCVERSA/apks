.class public Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

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
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->T0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->u(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->T0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->y(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->V0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;->c(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->X0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;->c(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p0, p3, p4, p4}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Y0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;ZZZ)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->T0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->p()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    move p1, p4

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p1, p4, p4, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Y0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;ZZZ)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->S0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Lcom/transsion/widgetslib/widget/SearchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Z0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->P0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->a1(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->U0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->W0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
