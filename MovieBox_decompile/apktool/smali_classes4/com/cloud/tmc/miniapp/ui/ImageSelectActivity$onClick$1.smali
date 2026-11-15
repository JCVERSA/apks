.class public final Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/oo000o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSelected(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;ILcom/cloud/tmc/miniapp/dialog/o00Oo0;)V
    .locals 1

    .line 1
    const-string p1, "bean"

    .line 2
    .line 3
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getTvTitle(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p3, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0O0:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getRvImageSelectList(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    if-nez p2, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getAdapter$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    .line 41
    .line 42
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getAllImage$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getAdapter$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    .line 57
    .line 58
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getAllAlbum$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iget-object p3, p3, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0OO:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getRvImageSelectList(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getActivity()Landroid/app/Activity;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    sget p3, Lcom/cloud/tmc/miniapp/R$anim;->layout_from_right:I

    .line 89
    .line 90
    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 95
    .line 96
    .line 97
    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getRvImageSelectList(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void
.end method
