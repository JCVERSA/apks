.class public final Lcom/transsion/publish/adapter/r;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# instance fields
.field private a:Ljava/util/List;

.field private b:Lqo/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method private final C(Landroidx/recyclerview/widget/RecyclerView$a0;ILrm/a;)V
    .locals 7

    .line 1
    const-string p2, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectLinksHolder"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/transsion/publish/adapter/y;

    .line 7
    .line 8
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "null cannot be cast to non-null type com.transsion.publish.api.LinkEntity"

    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p3, Lcom/transsion/publish/api/LinkEntity;

    .line 19
    .line 20
    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/transsion/publish/api/LinkEntity;->getUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 p3, 0x0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v1, "https://www."

    .line 32
    .line 33
    const-string v2, ""

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v1, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v1, p3

    .line 43
    :goto_0
    if-eqz v1, :cond_1

    .line 44
    .line 45
    const/4 v5, 0x4

    .line 46
    const/4 v6, 0x0

    .line 47
    const-string v2, "http://www."

    .line 48
    .line 49
    const-string v3, ""

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    move-object v1, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v1, p3

    .line 59
    :goto_1
    if-eqz v1, :cond_2

    .line 60
    .line 61
    const/4 v5, 0x4

    .line 62
    const/4 v6, 0x0

    .line 63
    const-string v2, "www."

    .line 64
    .line 65
    const-string v3, ""

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move-object v1, v0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move-object v1, p3

    .line 75
    :goto_2
    if-eqz v1, :cond_3

    .line 76
    .line 77
    const/4 v5, 0x4

    .line 78
    const/4 v6, 0x0

    .line 79
    const-string v2, "https://"

    .line 80
    .line 81
    const-string v3, ""

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    move-object v1, v0

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    move-object v1, p3

    .line 91
    :goto_3
    if-eqz v1, :cond_4

    .line 92
    .line 93
    const/4 v5, 0x4

    .line 94
    const/4 v6, 0x0

    .line 95
    const-string v2, "http://"

    .line 96
    .line 97
    const-string v3, ""

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/y;->g()Landroid/widget/TextView;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/y;->f()Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance p3, Lcom/transsion/publish/adapter/n;

    .line 116
    .line 117
    invoke-direct {p3, p0, p2}, Lcom/transsion/publish/adapter/n;-><init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method private static final D(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 2
    .line 3
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 12
    .line 13
    check-cast p0, Ljava/util/Collection;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    :cond_0
    new-instance p0, Ljo/b;

    .line 24
    .line 25
    invoke-direct {p0}, Ljo/b;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x4

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 45
    .line 46
    const-class p2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 53
    .line 54
    const-class p2, Ljo/b;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const-string v0, "getName(...)"

    .line 61
    .line 62
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v0, 0x0

    .line 66
    .line 67
    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method private final E(Landroidx/recyclerview/widget/RecyclerView$a0;ILrm/a;)V
    .locals 3

    .line 1
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectLocationHolder"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Lcom/transsion/publish/adapter/z;

    .line 12
    .line 13
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "null cannot be cast to non-null type com.transsion.room.api.bean.LocationPlace"

    .line 21
    .line 22
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p3, Lcom/transsion/room/api/bean/LocationPlace;

    .line 26
    .line 27
    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p3, Lcom/transsion/publish/adapter/z;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/transsion/publish/adapter/z;->g()Landroid/widget/TextView;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lcom/transsion/room/api/bean/LocationPlace;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/room/api/bean/LocationPlace;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lcom/transsion/room/api/bean/LocationPlace;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/transsion/room/api/bean/LocationPlace;->getDistance()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, " "

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p3, Lcom/transsion/publish/adapter/z;

    .line 79
    .line 80
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 81
    .line 82
    new-instance v0, Lcom/transsion/publish/adapter/o;

    .line 83
    .line 84
    invoke-direct {v0, p0, p2}, Lcom/transsion/publish/adapter/o;-><init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p2, Lcom/transsion/publish/adapter/z;

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/transsion/publish/adapter/z;->f()Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-instance p3, Lcom/transsion/publish/adapter/p;

    .line 99
    .line 100
    invoke-direct {p3, p1}, Lcom/transsion/publish/adapter/p;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private static final F(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/transsion/publish/adapter/z;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "getContext(...)"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/r;->L(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final G(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Ljo/b;

    .line 2
    .line 3
    invoke-direct {p1}, Ljo/b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lcom/transsion/room/api/bean/LocationPlace;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljo/b;->q(Lcom/transsion/room/api/bean/LocationPlace;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 31
    .line 32
    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 39
    .line 40
    const-class v0, Ljo/b;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "getName(...)"

    .line 47
    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v1, 0x0

    .line 52
    .line 53
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private final K(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "/room/list"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "is_select_room"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "index"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {v0, p1, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final L(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcf/c;->a:Lcf/c;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcf/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-class v1, Lcom/transsion/publish/ui/SelectLocationActivity;

    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    const/high16 v1, 0x10000000

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private final M(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lgj/a;->a:Lgj/a$a;

    .line 2
    .line 3
    const-class v1, Lgj/b;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lgj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lgj/b;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lgj/b;->e(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final N(Landroidx/recyclerview/widget/RecyclerView$a0;ILrm/a;)V
    .locals 5

    .line 1
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectWorkHolder"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Lcom/transsion/publish/adapter/n0;

    .line 12
    .line 13
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Subject"

    .line 21
    .line 22
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p3, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 26
    .line 27
    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lcom/transsion/publish/adapter/n0;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/n0;->f()Lcom/google/android/material/imageview/ShapeableImageView;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/high16 v1, 0x42280000    # 42.0f

    .line 38
    .line 39
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "getContext(...)"

    .line 50
    .line 51
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    :cond_0
    const-string v3, ""

    .line 71
    .line 72
    :cond_1
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    sget v3, Lcom/transsion/baseui/R$mipmap;->home_ic_default_res:I

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lni/f$b;->i(I)Lni/f$b;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2, v1}, Lni/f$b;->m(I)Lni/f$b;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2, v1}, Lni/f$b;->c(I)Lni/f$b;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lcom/transsion/publish/adapter/n0;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/n0;->i()Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 110
    .line 111
    iget-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v1, Lcom/transsion/publish/adapter/n0;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/transsion/publish/adapter/n0;->h()Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    sget-object v2, Lsm/e;->a:Lsm/e;

    .line 120
    .line 121
    invoke-virtual {v2, p3}, Lsm/e;->e(Lcom/transsion/moviedetailapi/bean/Subject;)Landroid/text/SpannableString;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_2

    .line 130
    .line 131
    invoke-virtual {p3}, Lrm/a;->getType()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2, v3}, Lsm/e;->g(Ljava/lang/Integer;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception p3

    .line 145
    goto :goto_1

    .line 146
    :cond_2
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    invoke-static {p3}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 154
    .line 155
    .line 156
    move-result p3

    .line 157
    invoke-virtual {v1, p3, v0, v0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 158
    .line 159
    .line 160
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 165
    .line 166
    invoke-static {p3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    :goto_2
    iget-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p3, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 176
    .line 177
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorrelation()Z

    .line 178
    .line 179
    .line 180
    move-result p3

    .line 181
    if-nez p3, :cond_3

    .line 182
    .line 183
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast p3, Lcom/transsion/publish/adapter/n0;

    .line 186
    .line 187
    invoke-virtual {p3}, Lcom/transsion/publish/adapter/n0;->g()Landroidx/appcompat/widget/AppCompatImageView;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast p3, Lcom/transsion/publish/adapter/n0;

    .line 197
    .line 198
    invoke-virtual {p3}, Lcom/transsion/publish/adapter/n0;->g()Landroidx/appcompat/widget/AppCompatImageView;

    .line 199
    .line 200
    .line 201
    move-result-object p3

    .line 202
    new-instance v0, Lcom/transsion/publish/adapter/j;

    .line 203
    .line 204
    invoke-direct {v0, p0, p1}, Lcom/transsion/publish/adapter/j;-><init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_3
    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast p1, Lcom/transsion/publish/adapter/n0;

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/n0;->g()Landroidx/appcompat/widget/AppCompatImageView;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    const/4 p3, 0x4

    .line 220
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    :goto_3
    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast p1, Lcom/transsion/publish/adapter/n0;

    .line 226
    .line 227
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 228
    .line 229
    new-instance p3, Lcom/transsion/publish/adapter/k;

    .line 230
    .line 231
    invoke-direct {p3, p0, p2}, Lcom/transsion/publish/adapter/k;-><init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method private static final O(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 2
    .line 3
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    new-instance p0, Ljo/b;

    .line 20
    .line 21
    invoke-direct {p0}, Ljo/b;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x3

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x2

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 41
    .line 42
    const-class p2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 49
    .line 50
    const-class p2, Ljo/b;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const-string v0, "getName(...)"

    .line 57
    .line 58
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v0, 0x0

    .line 62
    .line 63
    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method private static final P(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/transsion/publish/adapter/n0;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "getContext(...)"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/r;->M(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic g(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/r;->G(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/r;->P(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/r;->O(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/r;->F(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/publish/adapter/r;->r(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/r;->y(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/r;->D(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/r;->z(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/r;->t(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/r;->s(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/MediaPlayer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final q(Landroidx/recyclerview/widget/RecyclerView$a0;ILrm/a;)V
    .locals 4

    .line 1
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectAudioHolder"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Lcom/transsion/publish/adapter/b;

    .line 12
    .line 13
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "null cannot be cast to non-null type com.transsion.publish.api.AudioEntity"

    .line 21
    .line 22
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p3, Lcom/transsion/publish/api/AudioEntity;

    .line 26
    .line 27
    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p3, Lcom/transsion/publish/adapter/b;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/transsion/publish/adapter/b;->i()Landroid/widget/TextView;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lcom/transsion/publish/api/AudioEntity;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/publish/api/AudioEntity;->getImageTitle()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p3, Lcom/transsion/publish/adapter/b;

    .line 51
    .line 52
    invoke-virtual {p3}, Lcom/transsion/publish/adapter/b;->h()Landroid/widget/TextView;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/transsion/publish/api/AudioEntity;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/transsion/publish/api/AudioEntity;->getDuration()Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    const/16 v2, 0x3e8

    .line 71
    .line 72
    int-to-long v2, v2

    .line 73
    div-long/2addr v0, v2

    .line 74
    invoke-static {v0, v1}, Lcom/transsion/baseui/util/TimeUtilKt;->p(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    iget-object p3, p0, Lcom/transsion/publish/adapter/r;->b:Lqo/d;

    .line 84
    .line 85
    if-eqz p3, :cond_1

    .line 86
    .line 87
    invoke-virtual {p3}, Lqo/d;->b()Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    const/4 v0, 0x1

    .line 92
    if-ne p3, v0, :cond_1

    .line 93
    .line 94
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p3, Lcom/transsion/publish/adapter/b;

    .line 97
    .line 98
    invoke-virtual {p3}, Lcom/transsion/publish/adapter/b;->f()Landroid/widget/ImageView;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    sget v0, Lcom/transsion/publish/R$drawable;->ic_audio_pause:I

    .line 103
    .line 104
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p3, Lcom/transsion/publish/adapter/b;

    .line 111
    .line 112
    invoke-virtual {p3}, Lcom/transsion/publish/adapter/b;->f()Landroid/widget/ImageView;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    sget v0, Lcom/transsion/publish/R$drawable;->ic_audio_play:I

    .line 117
    .line 118
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    .line 120
    .line 121
    :goto_1
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p3, Lcom/transsion/publish/adapter/b;

    .line 124
    .line 125
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 126
    .line 127
    new-instance v0, Lcom/transsion/publish/adapter/h;

    .line 128
    .line 129
    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/publish/adapter/h;-><init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p2, Lcom/transsion/publish/adapter/b;

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/transsion/publish/adapter/b;->g()Landroid/widget/FrameLayout;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    new-instance p3, Lcom/transsion/publish/adapter/i;

    .line 144
    .line 145
    invoke-direct {p3, p1}, Lcom/transsion/publish/adapter/i;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method private static final r(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/transsion/publish/adapter/r;->b:Lqo/d;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    new-instance p3, Lqo/d;

    .line 6
    .line 7
    invoke-direct {p3}, Lqo/d;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lcom/transsion/publish/adapter/r;->b:Lqo/d;

    .line 11
    .line 12
    :cond_0
    iget-object p3, p0, Lcom/transsion/publish/adapter/r;->b:Lqo/d;

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p3}, Lqo/d;->b()Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p3, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Lcom/transsion/publish/adapter/b;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/b;->f()Landroid/widget/ImageView;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget p2, Lcom/transsion/publish/R$drawable;->ic_audio_pause:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/transsion/publish/adapter/r;->b:Lqo/d;

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lqo/d;->c()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p3, Lcom/transsion/publish/adapter/b;

    .line 47
    .line 48
    invoke-virtual {p3}, Lcom/transsion/publish/adapter/b;->f()Landroid/widget/ImageView;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    sget v0, Lcom/transsion/publish/R$drawable;->ic_audio_play:I

    .line 53
    .line 54
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p2, Lcom/transsion/publish/api/AudioEntity;

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/transsion/publish/api/AudioEntity;->getLocalPath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    iget-object p0, p0, Lcom/transsion/publish/adapter/r;->b:Lqo/d;

    .line 68
    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    iget-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p3, Lcom/transsion/publish/adapter/b;

    .line 74
    .line 75
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    const-string v0, "getContext(...)"

    .line 82
    .line 83
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/transsion/publish/adapter/q;

    .line 87
    .line 88
    invoke-direct {v0, p1}, Lcom/transsion/publish/adapter/q;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 89
    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0, p3, p2, v1, v0}, Lqo/d;->d(Landroid/content/Context;Ljava/lang/String;ZLandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p0, Lcom/transsion/publish/adapter/b;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/transsion/publish/adapter/b;->f()Landroid/widget/ImageView;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    sget p1, Lcom/transsion/publish/R$drawable;->ic_audio_pause:I

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private static final s(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/transsion/publish/adapter/b;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/publish/adapter/b;->f()Landroid/widget/ImageView;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget p1, Lcom/transsion/publish/R$drawable;->ic_audio_play:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final t(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Ljo/b;

    .line 2
    .line 3
    invoke-direct {p1}, Ljo/b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lcom/transsion/publish/api/AudioEntity;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljo/b;->k(Lcom/transsion/publish/api/AudioEntity;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 25
    .line 26
    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 33
    .line 34
    const-class v0, Ljo/b;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "getName(...)"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v1, 0x0

    .line 46
    .line 47
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private final x(Landroidx/recyclerview/widget/RecyclerView$a0;ILrm/a;)V
    .locals 1

    .line 1
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectGroupHolder"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Lcom/transsion/publish/adapter/w;

    .line 12
    .line 13
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "null cannot be cast to non-null type com.transsion.publish.api.GroupBean"

    .line 21
    .line 22
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p3, Lcom/transsion/publish/api/GroupBean;

    .line 26
    .line 27
    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p3, Lcom/transsion/publish/adapter/w;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/transsion/publish/adapter/w;->g()Landroid/widget/TextView;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lcom/transsion/publish/api/GroupBean;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/publish/api/GroupBean;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p3, Lcom/transsion/publish/adapter/w;

    .line 51
    .line 52
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 53
    .line 54
    new-instance v0, Lcom/transsion/publish/adapter/l;

    .line 55
    .line 56
    invoke-direct {v0, p0, p2}, Lcom/transsion/publish/adapter/l;-><init>(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p2, Lcom/transsion/publish/adapter/w;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/transsion/publish/adapter/w;->f()Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-instance p3, Lcom/transsion/publish/adapter/m;

    .line 71
    .line 72
    invoke-direct {p3, p1}, Lcom/transsion/publish/adapter/m;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private static final y(Lcom/transsion/publish/adapter/r;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/transsion/publish/adapter/w;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "getContext(...)"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/r;->K(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final z(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Ljo/b;

    .line 2
    .line 3
    invoke-direct {p1}, Ljo/b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x6

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/transsion/publish/api/GroupBean;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljo/b;->m(Lcom/transsion/publish/api/GroupBean;)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 30
    .line 31
    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 38
    .line 39
    const-class v0, Ljo/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "getName(...)"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v1, 0x0

    .line 51
    .line 52
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public final B()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne v0, v3, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lrm/a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lrm/a;->getType()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eq v0, v2, :cond_1

    .line 40
    .line 41
    return v3

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ne v0, v3, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lrm/a;

    .line 57
    .line 58
    invoke-virtual {v0}, Lrm/a;->getType()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-ne v0, v2, :cond_2

    .line 63
    .line 64
    move v1, v3

    .line 65
    :cond_2
    :goto_0
    return v1
.end method

.method public final H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lrm/a;

    .line 20
    .line 21
    invoke-virtual {v1}, Lrm/a;->getType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x2

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/publish/adapter/r;->b:Lqo/d;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lqo/d;->c()V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void
.end method

.method public final I(Lrm/a;)V
    .locals 1

    .line 1
    const-string v0, "entity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final J(Lrm/a;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lrm/a;->getType()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, -0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eq v0, v1, :cond_d

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_a

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    if-eq v0, v1, :cond_7

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    if-eq v0, v1, :cond_4

    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 30
    .line 31
    check-cast v0, Ljava/lang/Iterable;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move v1, v2

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_12

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    add-int/lit8 v5, v3, 0x1

    .line 49
    .line 50
    if-gez v3, :cond_2

    .line 51
    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 53
    .line 54
    .line 55
    :cond_2
    check-cast v4, Lrm/a;

    .line 56
    .line 57
    instance-of v4, v4, Lcom/transsion/room/api/bean/LocationPlace;

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    move v1, v3

    .line 62
    :cond_3
    move v3, v5

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 65
    .line 66
    check-cast v0, Ljava/lang/Iterable;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move v1, v2

    .line 73
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_12

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    add-int/lit8 v5, v3, 0x1

    .line 84
    .line 85
    if-gez v3, :cond_5

    .line 86
    .line 87
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 88
    .line 89
    .line 90
    :cond_5
    check-cast v4, Lrm/a;

    .line 91
    .line 92
    instance-of v4, v4, Lcom/transsion/publish/api/GroupBean;

    .line 93
    .line 94
    if-eqz v4, :cond_6

    .line 95
    .line 96
    move v1, v3

    .line 97
    :cond_6
    move v3, v5

    .line 98
    goto :goto_1

    .line 99
    :cond_7
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 100
    .line 101
    check-cast v0, Ljava/lang/Iterable;

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    move v1, v2

    .line 108
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_12

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    add-int/lit8 v5, v3, 0x1

    .line 119
    .line 120
    if-gez v3, :cond_8

    .line 121
    .line 122
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 123
    .line 124
    .line 125
    :cond_8
    check-cast v4, Lrm/a;

    .line 126
    .line 127
    instance-of v4, v4, Lcom/transsion/publish/api/LinkEntity;

    .line 128
    .line 129
    if-eqz v4, :cond_9

    .line 130
    .line 131
    move v1, v3

    .line 132
    :cond_9
    move v3, v5

    .line 133
    goto :goto_2

    .line 134
    :cond_a
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 135
    .line 136
    check-cast v0, Ljava/lang/Iterable;

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    move v1, v2

    .line 143
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_12

    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    add-int/lit8 v5, v3, 0x1

    .line 154
    .line 155
    if-gez v3, :cond_b

    .line 156
    .line 157
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 158
    .line 159
    .line 160
    :cond_b
    check-cast v4, Lrm/a;

    .line 161
    .line 162
    instance-of v4, v4, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 163
    .line 164
    if-eqz v4, :cond_c

    .line 165
    .line 166
    move v1, v3

    .line 167
    :cond_c
    move v3, v5

    .line 168
    goto :goto_3

    .line 169
    :cond_d
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 170
    .line 171
    check-cast v0, Ljava/lang/Iterable;

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    move v1, v2

    .line 178
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-eqz v4, :cond_10

    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    add-int/lit8 v5, v3, 0x1

    .line 189
    .line 190
    if-gez v3, :cond_e

    .line 191
    .line 192
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 193
    .line 194
    .line 195
    :cond_e
    check-cast v4, Lrm/a;

    .line 196
    .line 197
    instance-of v4, v4, Lcom/transsion/publish/api/AudioEntity;

    .line 198
    .line 199
    if-eqz v4, :cond_f

    .line 200
    .line 201
    move v1, v3

    .line 202
    :cond_f
    move v3, v5

    .line 203
    goto :goto_4

    .line 204
    :cond_10
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->b:Lqo/d;

    .line 205
    .line 206
    if-eqz v0, :cond_11

    .line 207
    .line 208
    invoke-virtual {v0}, Lqo/d;->f()V

    .line 209
    .line 210
    .line 211
    :cond_11
    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/transsion/publish/adapter/r;->b:Lqo/d;

    .line 213
    .line 214
    :cond_12
    :goto_5
    if-eq v1, v2, :cond_13

    .line 215
    .line 216
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 217
    .line 218
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    new-instance p1, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 227
    .line 228
    check-cast v0, Ljava/util/Collection;

    .line 229
    .line 230
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, p1}, Lcom/transsion/publish/adapter/r;->setData(Ljava/util/List;)V

    .line 234
    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v0}, Lcom/transsion/publish/adapter/r;->addData(Ljava/util/List;)V

    .line 246
    .line 247
    .line 248
    :goto_6
    return-void
.end method

.method public final addData(Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 13
    .line 14
    move-object v2, p1

    .line 15
    check-cast v2, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lrm/a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lrm/a;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x6

    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x8

    .line 26
    .line 27
    if-eq p1, v0, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 3

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lrm/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lrm/a;->getType()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq v1, v2, :cond_4

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v1, v2, :cond_3

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x6

    .line 28
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    if-eq v1, v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/adapter/r;->E(Landroidx/recyclerview/widget/RecyclerView$a0;ILrm/a;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/adapter/r;->x(Landroidx/recyclerview/widget/RecyclerView$a0;ILrm/a;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/adapter/r;->C(Landroidx/recyclerview/widget/RecyclerView$a0;ILrm/a;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/adapter/r;->N(Landroidx/recyclerview/widget/RecyclerView$a0;ILrm/a;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/adapter/r;->q(Landroidx/recyclerview/widget/RecyclerView$a0;ILrm/a;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 2

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p2, v0, :cond_4

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p2, v0, :cond_3

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p2, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x6

    .line 17
    if-eq p2, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    if-eq p2, v0, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/transsion/publish/adapter/c;

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-direct {p1, p2}, Lcom/transsion/publish/adapter/c;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    sget v0, Lcom/transsion/publish/R$layout;->item_publish_location:I

    .line 39
    .line 40
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lcom/transsion/publish/adapter/z;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/z;-><init>(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    return-object p2

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    sget v0, Lcom/transsion/publish/R$layout;->item_publish_group:I

    .line 62
    .line 63
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p2, Lcom/transsion/publish/adapter/w;

    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/w;-><init>(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    return-object p2

    .line 76
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    sget v0, Lcom/transsion/publish/R$layout;->item_publish_link:I

    .line 85
    .line 86
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance p2, Lcom/transsion/publish/adapter/y;

    .line 91
    .line 92
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/y;-><init>(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    return-object p2

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    sget v0, Lcom/transsion/publish/R$layout;->item_publish_work:I

    .line 108
    .line 109
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance p2, Lcom/transsion/publish/adapter/n0;

    .line 114
    .line 115
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/n0;-><init>(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    return-object p2

    .line 122
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    sget v0, Lcom/transsion/publish/R$layout;->item_publish_music:I

    .line 131
    .line 132
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    new-instance p2, Lcom/transsion/publish/adapter/b;

    .line 137
    .line 138
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/b;-><init>(Landroid/view/View;)V

    .line 142
    .line 143
    .line 144
    return-object p2
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->b:Lqo/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lqo/d;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final v()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/r;->a:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lrm/a;

    .line 22
    .line 23
    invoke-virtual {v2}, Lrm/a;->getType()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x3

    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    const-string v1, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Subject"

    .line 31
    .line 32
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast v2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v1
.end method
