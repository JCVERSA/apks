.class final Lcom/transsion/videofloat/view/VideoFloatView$a;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/videofloat/view/VideoFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lkotlin/jvm/functions/Function1;

.field private b:Z

.field final synthetic c:Lcom/transsion/videofloat/view/VideoFloatView;


# direct methods
.method public constructor <init>(Lcom/transsion/videofloat/view/VideoFloatView;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/videofloat/view/VideoFloatView$a;->c:Lcom/transsion/videofloat/view/VideoFloatView;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/videofloat/view/VideoFloatView$a;->a:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const v0, -0x7ed8ea7f

    .line 22
    .line 23
    .line 24
    if-eq p2, v0, :cond_2

    .line 25
    .line 26
    const v0, 0x311a1d6c

    .line 27
    .line 28
    .line 29
    if-eq p2, v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/videofloat/view/VideoFloatView$a;->b:Z

    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/videofloat/view/VideoFloatView$a;->a:Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 52
    .line 53
    const/4 v4, 0x4

    .line 54
    const/4 v5, 0x0

    .line 55
    const-string v1, "VideoFloat"

    .line 56
    .line 57
    const-string v2, "User present"

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/transsion/videofloat/view/VideoFloatView$a;->b:Z

    .line 75
    .line 76
    iget-object p1, p0, Lcom/transsion/videofloat/view/VideoFloatView$a;->a:Lkotlin/jvm/functions/Function1;

    .line 77
    .line 78
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 84
    .line 85
    const/4 v4, 0x4

    .line 86
    const/4 v5, 0x0

    .line 87
    const-string v1, "VideoFloat"

    .line 88
    .line 89
    const-string v2, "Screen off"

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_0
    return-void
.end method
