.class public final Lcom/transsion/upgradesdk/net/g;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# instance fields
.field public final synthetic a:Lru/f;


# direct methods
.method public constructor <init>(Lru/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/upgradesdk/net/g;->a:Lru/f;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    move-object p2, p1

    .line 12
    :goto_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 13
    .line 14
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    iget-object p2, p0, Lcom/transsion/upgradesdk/net/g;->a:Lru/f;

    .line 22
    .line 23
    invoke-static {p2}, Lru/f;->b(Lru/f;)V

    .line 24
    .line 25
    .line 26
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_2
    return-void
.end method
