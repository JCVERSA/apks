.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/snaptube/premium/ads/a$c;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/ads/a$c;-><init>(Lcom/snaptube/premium/ads/a;)V

    iput-object v0, p0, Lcom/snaptube/premium/ads/a;->f:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/app/a;

    invoke-interface {v0, p0}, Lcom/snaptube/premium/app/a;->i0(Lcom/snaptube/premium/ads/a;)V

    const-string v0, "pref.fan"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/snaptube/premium/ads/a;->e:Ljava/util/HashMap;

    return-void
.end method
