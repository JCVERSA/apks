.class Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$c;
.super Lcom/mbridge/msdk/widget/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$c;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/mbridge/msdk/widget/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "omsdk"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$c;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {v1, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$c;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    :try_start_1
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$c;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a(Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "bmnv adUserInteraction click"

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "BaseMBMediaView"

    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_0
    return-void
.end method
