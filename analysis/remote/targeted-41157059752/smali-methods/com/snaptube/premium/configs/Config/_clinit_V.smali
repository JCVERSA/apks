.method static constructor <clinit>()V
    .locals 5

    const-string v0, "back#door.add_debug#_param_in##_request"

    invoke-static {v0}, Lo/m31$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snaptube/premium/configs/Config;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/snaptube/premium/configs/Config;->d:Ljava/lang/String;

    sput-object v0, Lcom/snaptube/premium/configs/Config;->e:Ljava/lang/String;

    sput-object v0, Lcom/snaptube/premium/configs/Config;->f:Ljava/lang/String;

    sput-object v0, Lcom/snaptube/premium/configs/Config;->g:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/snaptube/premium/configs/Config;->h:Z

    const-string v2, "USER_TICKETS"

    sput-object v2, Lcom/snaptube/premium/configs/Config;->i:Ljava/lang/String;

    const-string v2, "first_use_video_subscribe"

    sput-object v2, Lcom/snaptube/premium/configs/Config;->j:Ljava/lang/String;

    const-class v2, Lcom/snaptube/premium/activity/ExploreActivity;

    sput-object v2, Lcom/snaptube/premium/configs/Config;->k:Ljava/lang/Class;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/snaptube/premium/configs/Config;->l:Z

    sput-boolean v2, Lcom/snaptube/premium/configs/Config;->m:Z

    const-string v3, "https://www.snaptube.in/_sites-page/index.html"

    sput-object v3, Lcom/snaptube/premium/configs/Config;->n:Ljava/lang/String;

    sput-boolean v2, Lcom/snaptube/premium/configs/Config;->o:Z

    sput-boolean v2, Lcom/snaptube/premium/configs/Config;->p:Z

    sput-object v0, Lcom/snaptube/premium/configs/Config;->q:Ljava/lang/Boolean;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    long-to-int v0, v3

    sput v0, Lcom/snaptube/premium/configs/Config;->r:I

    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/snaptube/premium/configs/Config;->t:J

    sput-boolean v1, Lcom/snaptube/premium/configs/Config;->u:Z

    sput-boolean v2, Lcom/snaptube/premium/configs/Config;->v:Z

    sput-boolean v2, Lcom/snaptube/premium/configs/Config;->w:Z

    const/4 v0, -0x1

    sput v0, Lcom/snaptube/premium/configs/Config;->x:I

    sput-boolean v1, Lcom/snaptube/premium/configs/Config;->y:Z

    return-void
.end method
