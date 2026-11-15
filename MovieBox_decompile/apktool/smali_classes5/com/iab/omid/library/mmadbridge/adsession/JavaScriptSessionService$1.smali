.class Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService$1;
.super Ljava/util/TimerTask;
.source "source.java"


# instance fields
.field final synthetic this$0:Lcom/iab/omid/library/mmadbridge/adsession/e;

.field final synthetic val$tearDownHandler:Lcom/iab/omid/library/mmadbridge/adsession/e$a;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/iab/omid/library/mmadbridge/adsession/e;Lcom/iab/omid/library/mmadbridge/adsession/e$a;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/iab/omid/library/mmadbridge/adsession/JavaScriptSessionService$1;->val$timer:Ljava/util/Timer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/iab/omid/library/mmadbridge/adsession/e;->a(Lcom/iab/omid/library/mmadbridge/adsession/e;)V

    .line 3
    .line 4
    .line 5
    throw v0
.end method
