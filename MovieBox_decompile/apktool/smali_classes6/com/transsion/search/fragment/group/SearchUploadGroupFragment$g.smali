.class public final Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$g;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

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
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    if-lez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$g;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lvp/d;

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object v1, v1, Lvp/d;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$g;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lvp/d;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, v0, Lvp/d;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$g;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-static {v0, v1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->access$resetContent(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Z)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$g;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->access$setMKeyword$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$g;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lvp/d;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lvp/d;->j:Landroid/widget/TextView;

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
