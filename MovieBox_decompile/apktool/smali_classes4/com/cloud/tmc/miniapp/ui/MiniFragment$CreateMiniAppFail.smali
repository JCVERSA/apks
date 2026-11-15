.class public final Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ui/MiniFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateMiniAppFail"
.end annotation


# instance fields
.field private final context:Landroidx/fragment/app/Fragment;

.field private final contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final page:Lcom/cloud/tmc/integration/structure/Page;

.field private final pageWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->context:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->pageWeakReference:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic access$getViewThemeMode(Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->getViewThemeMode()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getViewThemeMode()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    instance-of v2, v0, Lcom/cloud/tmc/miniapp/action/StatusAction;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    check-cast v0, Lcom/cloud/tmc/miniapp/action/StatusAction;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v0, v1

    .line 26
    :goto_1
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final getContext()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->context:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContextWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPageWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->pageWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->pageWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, v1

    .line 30
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v2, v1

    .line 38
    :goto_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_5

    .line 43
    .line 44
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->pageWeakReference:Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move-object v0, v1

    .line 60
    :goto_2
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    move-object p1, v1

    .line 68
    :goto_3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    const/4 p1, 0x0

    .line 76
    return p1

    .line 77
    :cond_5
    :goto_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_a

    .line 90
    .line 91
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 98
    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto :goto_5

    .line 106
    :cond_6
    move-object p1, v1

    .line 107
    :goto_5
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/action/StatusAction;

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    move-object v1, p1

    .line 112
    check-cast v1, Lcom/cloud/tmc/miniapp/action/StatusAction;

    .line 113
    .line 114
    :cond_7
    move-object v2, v1

    .line 115
    if-eqz v2, :cond_b

    .line 116
    .line 117
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->getViewThemeMode()Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-nez p1, :cond_8

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    const/4 v0, 0x2

    .line 129
    if-ne p1, v0, :cond_9

    .line 130
    .line 131
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_error_normal_mode:I

    .line 132
    .line 133
    :goto_6
    move v3, p1

    .line 134
    goto :goto_8

    .line 135
    :cond_9
    :goto_7
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_error:I

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :goto_8
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->loading_error_miniapp_went_wrong:I

    .line 139
    .line 140
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->loading_error_miniapp_cant_open_now:I

    .line 141
    .line 142
    const/16 v10, 0x70

    .line 143
    .line 144
    const/4 v11, 0x0

    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v7, 0x0

    .line 147
    const/4 v8, 0x0

    .line 148
    const/4 v9, 0x0

    .line 149
    invoke-static/range {v2 .. v11}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto :goto_9

    .line 153
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    new-instance v5, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;

    .line 162
    .line 163
    invoke-direct {v5, p0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;Lkotlin/coroutines/Continuation;)V

    .line 164
    .line 165
    .line 166
    const/4 v6, 0x3

    .line 167
    const/4 v7, 0x0

    .line 168
    const/4 v3, 0x0

    .line 169
    const/4 v4, 0x0

    .line 170
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 171
    .line 172
    .line 173
    :cond_b
    :goto_9
    const/4 p1, 0x1

    .line 174
    return p1
.end method
