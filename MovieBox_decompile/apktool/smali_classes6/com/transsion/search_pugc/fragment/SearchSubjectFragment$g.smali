.class public final Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$g;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p3, 0x3

    .line 4
    if-eq p2, p3, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$g;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p2, p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->r0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$g;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 26
    .line 27
    const-string p2, "input"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->I0(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$g;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->n0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p3, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$g;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 39
    .line 40
    invoke-static {p3}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->o0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Lcom/transsion/search_pugc/g;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p3, p2, p1}, Lcom/transsion/search_pugc/g;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1
.end method
