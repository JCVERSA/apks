.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/xb2;->b:Landroid/content/Context;

    iput-object p2, p0, Lo/xb2;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/xb2;->d:Ljava/lang/String;

    iput-object p4, p0, Lo/xb2;->e:Ljava/lang/String;

    iput-object p7, p0, Lo/xb2;->g:Ljava/lang/String;

    iput-wide p5, p0, Lo/xb2;->f:J

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/premium/app/PhoenixApplication;->D()Lo/zd3;

    move-result-object p1

    iput-object p1, p0, Lo/xb2;->a:Lo/zd3;

    return-void
.end method
