.class public final Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lso/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/operation/OperationVerticalBarView;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/operation/OperationVerticalBarView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->b:Landroid/view/View;

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
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBean;->getStatus()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    if-eq p2, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBean;->getType()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const-string p2, "getContext(...)"

    .line 21
    .line 22
    if-eqz p1, :cond_5

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    if-eq p1, v0, :cond_4

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    if-eq p1, v0, :cond_3

    .line 29
    .line 30
    if-eq p1, v1, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    if-eq p1, v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationVerticalBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationVerticalBarView;)Lcom/transsion/publish/adapter/a;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_6

    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->b:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startLink(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationVerticalBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationVerticalBarView;)Lcom/transsion/publish/adapter/a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->b:Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startWork(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationVerticalBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationVerticalBarView;)Lcom/transsion/publish/adapter/a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->b:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startAudio(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationVerticalBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationVerticalBarView;)Lcom/transsion/publish/adapter/a;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->b:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startVideo(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationVerticalBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationVerticalBarView;)Lcom/transsion/publish/adapter/a;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->b:Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startPhoto(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_0
    return-void
.end method
