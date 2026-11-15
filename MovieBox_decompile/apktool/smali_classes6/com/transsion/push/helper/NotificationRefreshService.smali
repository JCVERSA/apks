.class public final Lcom/transsion/push/helper/NotificationRefreshService;
.super Landroid/app/Service;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/helper/NotificationRefreshService$a;,
        Lcom/transsion/push/helper/NotificationRefreshService$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0005*\u0002+.\u0018\u0000 12\u00020\u0001:\u0002\u0019\u001dB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J)\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00132\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0003R \u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00180\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010*\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010)R\u0014\u0010-\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010,R\u0014\u00100\u001a\u00020.8\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010/\u00a8\u00062"
    }
    d2 = {
        "Lcom/transsion/push/helper/NotificationRefreshService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "Lcom/transsion/baselib/db/notification/MsgBean;",
        "msgBean",
        "",
        "e",
        "(Lcom/transsion/baselib/db/notification/MsgBean;)V",
        "f",
        "g",
        "onCreate",
        "Landroid/content/Intent;",
        "intent",
        "",
        "flags",
        "startId",
        "onStartCommand",
        "(Landroid/content/Intent;II)I",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "onDestroy",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Ljava/lang/ref/SoftReference;",
        "a",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "msgList",
        "Landroid/app/NotificationManager;",
        "b",
        "Landroid/app/NotificationManager;",
        "manager",
        "Landroid/os/Handler;",
        "c",
        "Landroid/os/Handler;",
        "handler",
        "",
        "d",
        "Z",
        "isRepeating",
        "Lcom/transsion/push/helper/NotificationRefreshService$b;",
        "Lcom/transsion/push/helper/NotificationRefreshService$b;",
        "binder",
        "com/transsion/push/helper/NotificationRefreshService$localReceiver$1",
        "Lcom/transsion/push/helper/NotificationRefreshService$localReceiver$1;",
        "localReceiver",
        "com/transsion/push/helper/NotificationRefreshService$runnable$1",
        "Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;",
        "runnable",
        "h",
        "push_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final h:Lcom/transsion/push/helper/NotificationRefreshService$a;


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private b:Landroid/app/NotificationManager;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private final e:Lcom/transsion/push/helper/NotificationRefreshService$b;

.field private final f:Lcom/transsion/push/helper/NotificationRefreshService$localReceiver$1;

.field private final g:Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/push/helper/NotificationRefreshService$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/push/helper/NotificationRefreshService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/push/helper/NotificationRefreshService;->h:Lcom/transsion/push/helper/NotificationRefreshService$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/push/helper/NotificationRefreshService$b;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsion/push/helper/NotificationRefreshService$b;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->e:Lcom/transsion/push/helper/NotificationRefreshService$b;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/push/helper/NotificationRefreshService$localReceiver$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/transsion/push/helper/NotificationRefreshService$localReceiver$1;-><init>(Lcom/transsion/push/helper/NotificationRefreshService;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->f:Lcom/transsion/push/helper/NotificationRefreshService$localReceiver$1;

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;-><init>(Lcom/transsion/push/helper/NotificationRefreshService;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->g:Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/push/helper/NotificationRefreshService;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->c:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/push/helper/NotificationRefreshService;)Landroid/app/NotificationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->b:Landroid/app/NotificationManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/push/helper/NotificationRefreshService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/push/helper/NotificationRefreshService;Lcom/transsion/baselib/db/notification/MsgBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/push/helper/NotificationRefreshService;->e(Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e(Lcom/transsion/baselib/db/notification/MsgBean;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/notification/MsgBean;->isPermanent()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    move-object v4, v3

    .line 42
    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/transsion/baselib/db/notification/MsgBean;->isPermanent()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ne v4, v2, :cond_1

    .line 57
    .line 58
    move-object v1, v3

    .line 59
    :cond_2
    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 71
    .line 72
    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_7

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    move-object v4, v3

    .line 96
    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 107
    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    goto :goto_0

    .line 115
    :cond_6
    move-object v4, v1

    .line 116
    :goto_0
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    move-object v1, v3

    .line 123
    :cond_7
    if-nez v1, :cond_8

    .line 124
    .line 125
    iget-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 128
    .line 129
    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_8
    iget-object p1, p0, Lcom/transsion/push/helper/NotificationRefreshService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    const/4 v0, 0x4

    .line 142
    if-lt p1, v0, :cond_a

    .line 143
    .line 144
    iget-object p1, p0, Lcom/transsion/push/helper/NotificationRefreshService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 145
    .line 146
    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Ljava/lang/ref/SoftReference;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 158
    .line 159
    if-eqz p1, :cond_9

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/transsion/baselib/db/notification/MsgBean;->isPermanent()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-ne p1, v2, :cond_9

    .line 166
    .line 167
    iget-object p1, p0, Lcom/transsion/push/helper/NotificationRefreshService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 168
    .line 169
    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Ljava/lang/ref/SoftReference;

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_9
    iget-object p1, p0, Lcom/transsion/push/helper/NotificationRefreshService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Ljava/lang/ref/SoftReference;

    .line 183
    .line 184
    :cond_a
    :goto_1
    return-void
.end method

.method private final f()V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->d:Z

    .line 8
    .line 9
    if-nez v0, :cond_6

    .line 10
    .line 11
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    const/4 v5, 0x4

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v2, "NoticeRefreshHelper"

    .line 16
    .line 17
    const-string v3, "startRepeat"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->b:Landroid/app/NotificationManager;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const-string v2, "notification"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v0, v1

    .line 42
    :goto_0
    instance-of v2, v0, Landroid/app/NotificationManager;

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    check-cast v1, Landroid/app/NotificationManager;

    .line 48
    .line 49
    :cond_1
    iput-object v1, p0, Lcom/transsion/push/helper/NotificationRefreshService;->b:Landroid/app/NotificationManager;

    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->c:Landroid/os/Handler;

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    new-instance v0, Landroid/os/Handler;

    .line 56
    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->c:Landroid/os/Handler;

    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->c:Landroid/os/Handler;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object v1, p0, Lcom/transsion/push/helper/NotificationRefreshService;->g:Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->c:Landroid/os/Handler;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iget-object v1, p0, Lcom/transsion/push/helper/NotificationRefreshService;->g:Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;

    .line 80
    .line 81
    const-wide/16 v2, 0x7530

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    .line 85
    .line 86
    :cond_5
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->d:Z

    .line 88
    .line 89
    :cond_6
    return-void
.end method

.method private final g()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->d:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService;->c:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/push/helper/NotificationRefreshService;->g:Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/push/helper/NotificationRefreshService;->e:Lcom/transsion/push/helper/NotificationRefreshService$b;

    .line 2
    .line 3
    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/push/helper/NotificationRefreshService;->f()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "ACTION_NEW_MESSAGE"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/transsion/push/helper/NotificationRefreshService;->f:Lcom/transsion/push/helper/NotificationRefreshService$localReceiver$1;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Lr1/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/helper/NotificationRefreshService;->g()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/transsion/push/helper/NotificationRefreshService;->f:Lcom/transsion/push/helper/NotificationRefreshService$localReceiver$1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lr1/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method
