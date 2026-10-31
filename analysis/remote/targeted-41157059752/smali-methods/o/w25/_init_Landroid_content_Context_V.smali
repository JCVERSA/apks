.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/w25$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/w25$a;-><init>(Lo/v25;)V

    iput-object v0, p0, Lo/w25;->d:Lo/w25$a;

    invoke-static {p1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/app/a;

    invoke-interface {v0, p0}, Lcom/snaptube/premium/app/a;->h0(Lo/w25;)V

    const-string v0, "pref.fan"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lo/w25;->c:Landroid/content/SharedPreferences;

    return-void
.end method
