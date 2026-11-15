.class public final Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lso/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->o0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;->a:Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/publish/view/operation/OperationBean;I)V
    .locals 1

    .line 1
    const-string p2, "item"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBean;->getType()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const-string p2, "getContext(...)"

    .line 11
    .line 12
    if-eqz p1, :cond_4

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p1, v0, :cond_3

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;->a:Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->n0(Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;)Lcom/transsion/publish/adapter/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_5

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;->b:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startLink(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;->a:Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->n0(Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;)Lcom/transsion/publish/adapter/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    iget-object v0, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;->b:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startWork(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;->a:Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->n0(Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;)Lcom/transsion/publish/adapter/a;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;->b:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startAudio(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;->a:Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->n0(Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;)Lcom/transsion/publish/adapter/a;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    iget-object v0, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;->b:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startVideo(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;->a:Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;->n0(Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment;)Lcom/transsion/publish/adapter/a;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    iget-object v0, p0, Lcom/transsion/publish/ui/OpertaionVerticalDialogFragment$b;->b:Landroid/view/View;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startPhoto(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_0
    return-void
.end method
