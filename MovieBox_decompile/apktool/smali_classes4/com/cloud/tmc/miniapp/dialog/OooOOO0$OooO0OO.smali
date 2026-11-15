.class public final Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0OO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/OooOOO0;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

.field public final synthetic OooO0O0:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0OO;->OooO0O0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 7

    .line 1
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    move v1, v0

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "message"

    .line 40
    .line 41
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    const/4 v1, -0x1

    .line 54
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ltz v1, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    :goto_2
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0OO;->OooO0O0:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iget-object v3, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 83
    .line 84
    const-string v4, "context"

    .line 85
    .line 86
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-class v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 90
    .line 91
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 96
    .line 97
    const-string v5, "miniMsgKvId"

    .line 98
    .line 99
    const-string v6, "miniNewMsgStatus"

    .line 100
    .line 101
    invoke-interface {v4, v2, v5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {v3, v0}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->setDotBadge(Z)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :goto_3
    const-string v0, "BottomDialog"

    .line 115
    .line 116
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    :goto_4
    return-void
.end method
