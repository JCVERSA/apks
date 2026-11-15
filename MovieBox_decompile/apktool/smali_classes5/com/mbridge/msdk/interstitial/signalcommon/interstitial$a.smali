.class Lcom/mbridge/msdk/interstitial/signalcommon/interstitial$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/interstitial/signalcommon/interstitial;->a(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/interstitial/signalcommon/interstitial;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/interstitial/signalcommon/interstitial;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/signalcommon/interstitial$a;->c:Lcom/mbridge/msdk/interstitial/signalcommon/interstitial;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/interstitial/signalcommon/interstitial$a;->a:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/interstitial/signalcommon/interstitial$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/interstitial/cache/a;->a()Lcom/mbridge/msdk/interstitial/cache/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/signalcommon/interstitial$a;->a:Ljava/util/List;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/signalcommon/interstitial$a;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/interstitial/cache/a;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
