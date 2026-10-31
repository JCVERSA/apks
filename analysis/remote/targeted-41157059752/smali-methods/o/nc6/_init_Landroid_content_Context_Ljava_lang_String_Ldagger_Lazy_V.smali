.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/u25;-><init>(Landroid/content/Context;)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lo/nc6;->d:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/nc6$f;

    invoke-interface {p1, p0}, Lo/nc6$f;->k(Lo/nc6;)V

    new-instance p1, Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;

    invoke-direct {p1}, Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;-><init>()V

    iput-object p1, p0, Lo/nc6;->e:Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;

    return-void
.end method
