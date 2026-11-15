.class public Lcom/mbridge/msdk/interstitial/controller/a$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/interstitial/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/interstitial/adapter/a;

.field final synthetic b:Lcom/mbridge/msdk/interstitial/controller/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/interstitial/controller/a;Lcom/mbridge/msdk/interstitial/adapter/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->b:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const-string v1, "load timeout"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->b:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->b:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->b:Lcom/mbridge/msdk/interstitial/controller/a;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/controller/a$b;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->a:Lcom/mbridge/msdk/interstitial/adapter/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_2
    return-void
.end method
