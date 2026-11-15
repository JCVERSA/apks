.class Lcom/iab/omid/library/hisavana/adsession/JavaScriptSessionService$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/iab/omid/library/hisavana/adsession/a;

.field final synthetic val$tearDownHandler:Lcom/iab/omid/library/hisavana/adsession/a$a;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/hisavana/adsession/a;Lcom/iab/omid/library/hisavana/adsession/a$a;Ljava/util/Timer;)V
    .locals 0

    iput-object p3, p0, Lcom/iab/omid/library/hisavana/adsession/JavaScriptSessionService$1;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/iab/omid/library/hisavana/adsession/a;->a(Lcom/iab/omid/library/hisavana/adsession/a;)V

    throw p0
.end method
