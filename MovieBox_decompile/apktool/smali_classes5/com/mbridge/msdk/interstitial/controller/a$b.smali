.class public Lcom/mbridge/msdk/interstitial/controller/a$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/interstitial/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/interstitial/adapter/a;

.field private b:Lcom/mbridge/msdk/interstitial/controller/a$c;

.field final synthetic c:Lcom/mbridge/msdk/interstitial/controller/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/interstitial/controller/a;Lcom/mbridge/msdk/interstitial/adapter/a;Lcom/mbridge/msdk/interstitial/controller/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->b:Lcom/mbridge/msdk/interstitial/controller/a$c;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/controller/a$b;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->b:Lcom/mbridge/msdk/interstitial/controller/a$c;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->e(Lcom/mbridge/msdk/interstitial/controller/a;)Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->e(Lcom/mbridge/msdk/interstitial/controller/a;)Landroid/os/Handler;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->b:Lcom/mbridge/msdk/interstitial/controller/a$c;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 48
    .line 49
    invoke-static {p1, p2}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 62
    .line 63
    invoke-static {p1, p2}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_2
    return-void
.end method

.method public b(ZLjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/mbridge/msdk/interstitial/controller/a;->c(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    .line 5
    .line 6
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->d()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->d()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p2

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/mbridge/msdk/foundation/same/c;->b(Ljava/util/List;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {v0, p2}, Lcom/mbridge/msdk/interstitial/controller/a;->d(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->d(Lcom/mbridge/msdk/interstitial/controller/a;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    iget-object p2, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->b:Lcom/mbridge/msdk/interstitial/controller/a$c;

    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    iget-object p2, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 61
    .line 62
    invoke-static {p2}, Lcom/mbridge/msdk/interstitial/controller/a;->e(Lcom/mbridge/msdk/interstitial/controller/a;)Landroid/os/Handler;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    iget-object p2, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 69
    .line 70
    invoke-static {p2}, Lcom/mbridge/msdk/interstitial/controller/a;->e(Lcom/mbridge/msdk/interstitial/controller/a;)Landroid/os/Handler;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->b:Lcom/mbridge/msdk/interstitial/controller/a$c;

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :catch_1
    move-exception p1

    .line 81
    goto :goto_4

    .line 82
    :cond_1
    :goto_3
    if-eqz p1, :cond_2

    .line 83
    .line 84
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 85
    .line 86
    const/4 p2, 0x0

    .line 87
    invoke-static {p1, p2}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$b;->c:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/mbridge/msdk/interstitial/controller/a;->f(Lcom/mbridge/msdk/interstitial/controller/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_5
    return-void
.end method
