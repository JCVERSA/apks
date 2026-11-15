.class public final Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->x0()V
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
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/search_pugc/bean/SearchSuggestItem;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "keyWord"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "mOps"

    .line 7
    .line 8
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lvp/i;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p2, Lvp/i;->b:Landroid/widget/EditText;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-static {p2}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 29
    .line 30
    invoke-static {p2, p3}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->r0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 34
    .line 35
    const/4 p3, 0x1

    .line 36
    invoke-static {p2, p3}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->s0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Z)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->getWord()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    :cond_1
    const-string p1, ""

    .line 50
    .line 51
    :cond_2
    invoke-static {p2, p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->t0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 55
    .line 56
    const-string p2, "suggest"

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->I0(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->n0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p3, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    .line 68
    .line 69
    invoke-static {p3}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->o0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Lcom/transsion/search_pugc/g;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p3, p2, p1}, Lcom/transsion/search_pugc/g;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
