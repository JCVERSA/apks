.class Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$1;
.super Ljava/util/TimerTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;->tearDown(Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$TearDownHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;

.field final synthetic val$tearDownHandler:Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$TearDownHandler;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$TearDownHandler;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$1;->this$0:Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$1;->val$tearDownHandler:Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$TearDownHandler;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$1;->val$timer:Ljava/util/Timer;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$1;->this$0:Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;->access$000(Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$1;->val$tearDownHandler:Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$TearDownHandler;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1}, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$TearDownHandler;->onTearDown(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/JavaScriptSessionService$1;->val$timer:Ljava/util/Timer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
