.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    invoke-direct {v0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;-><init>()V

    sput-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->c:Ljava/util/Set;

    new-instance v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$a;

    invoke-direct {v0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$a;-><init>()V

    sput-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method
