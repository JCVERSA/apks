.class public final Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->L0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->p0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->i()Landroidx/lifecycle/b0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->m0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->q0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->r0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->n0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->u0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lvp/i;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lvp/i;->j:Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
