.method public constructor <init>(Landroid/app/Application;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->e:Z

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->f:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->i:J

    const-string v3, "IAdsManager"

    invoke-static {v3}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v3

    check-cast v3, Lo/ba3;

    iput-object v3, p0, Lcom/snaptube/premium/ads/SplashAdManager;->j:Lo/ba3;

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->l:Z

    iput-wide v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->m:J

    new-instance v0, Lo/in7;

    invoke-direct {v0, p0}, Lo/in7;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;)V

    iput-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/snaptube/premium/ads/SplashAdManager$d;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/ads/SplashAdManager$d;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;)V

    iput-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->o:Landroid/app/Application$ActivityLifecycleCallbacks;

    new-instance v1, Lcom/snaptube/premium/ads/SplashAdManager$e;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/ads/SplashAdManager$e;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;)V

    iput-object v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->p:Lo/n9;

    iput-object p1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->a:Landroid/app/Application;

    new-instance v1, Lcom/snaptube/premium/ads/SplashAdManager$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/snaptube/premium/ads/SplashAdManager$b;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/snaptube/premium/ads/SplashAdManager;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
