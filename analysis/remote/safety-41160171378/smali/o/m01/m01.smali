.class public Lo/m01;
.super Lo/d1;


# static fields
.field public static final m:Ljava/lang/String; = "m01"

.field public static n:J


# instance fields
.field public final j:Lo/i35;

.field public final k:Lo/tl3;

.field public final l:Lo/d1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 2

    invoke-direct {p0, p1}, Lo/d1;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lo/m01$a;

    invoke-direct {v0, p0}, Lo/m01$a;-><init>(Lo/m01;)V

    iput-object v0, p0, Lo/m01;->l:Lo/d1$b;

    new-instance v0, Lo/tl3;

    const-string v1, "CompositeDelegate"

    invoke-direct {v0, v1}, Lo/tl3;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/m01;->k:Lo/tl3;

    instance-of v1, p1, Lo/rl3;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lo/rl3;

    invoke-interface {v1}, Lo/rl3;->g()Lo/ql3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/tl3;->g(Lo/ql3;)V

    :cond_0
    new-instance v0, Lo/i35;

    invoke-direct {v0, p1, p2, p3}, Lo/i35;-><init>(Landroid/app/Activity;J)V

    iput-object v0, p0, Lo/m01;->j:Lo/i35;

    return-void
.end method

.method public static bridge synthetic g(Lo/m01;)V
    .locals 1

    invoke-virtual {p0}, Lo/m01;->i()V

    return-void
.end method

.method public static bridge synthetic h()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    sget-object v0, Lo/m01;->m:Ljava/lang/String;

    const/4 v1, 0x7

    return-object v0
.end method


# virtual methods
.method public c(Z)V
    .locals 2

    invoke-super {p0, p1}, Lo/d1;->c(Z)V

    const/4 v1, 0x4

    iget-object v0, p0, Lo/m01;->j:Lo/i35;

    const/4 v1, 0x4

    invoke-virtual {v0, p1}, Lo/d1;->c(Z)V

    const/4 v1, 0x4

    return-void
.end method

.method public d(Ljava/lang/String;Lo/d1$b;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lo/d1;->d(Ljava/lang/String;Lo/d1$b;)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    if-nez v0, :cond_0

    const/4 v2, 0x4

    sput-boolean v1, Lo/d1;->i:Z

    const/4 v2, 0x1

    invoke-virtual {p0}, Lo/d1;->a()V

    invoke-interface {p2, v1}, Lo/un7;->a(Z)V

    const/4 v2, 0x6

    return v1

    :cond_0
    const/4 v2, 0x6

    iget-object p2, p0, Lo/m01;->j:Lo/i35;

    iget-object v0, p0, Lo/m01;->l:Lo/d1$b;

    const/4 v2, 0x3

    invoke-virtual {p2, p1, v0}, Lo/i35;->d(Ljava/lang/String;Lo/d1$b;)Z

    move-result p1

    const/4 v2, 0x4

    sput-boolean v1, Lo/d1;->i:Z

    const/4 v2, 0x1

    return p1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x7

    const-string v0, "IrsdAaneMsa"

    const-string v0, "IAdsManager"

    const/4 v8, 0x0

    invoke-static {v0}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v0

    const/4 v8, 0x3

    check-cast v0, Lo/ba3;

    invoke-interface {v0}, Lo/ba3;->h()Z

    move-result v0

    const/4 v8, 0x6

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lo/m01;->k:Lo/tl3;

    const/4 v8, 0x3

    const-string v0, "eaEmlsbdnd"

    const-string v0, "adsEnabled"

    invoke-virtual {p1, v0}, Lo/tl3;->f(Ljava/lang/String;)V

    const/4 v8, 0x1

    return v1

    :cond_0
    const/4 v8, 0x2

    invoke-virtual {p0, p1}, Lo/d1;->b(Ljava/lang/String;)Lo/iq7$b;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lo/m01;->j:Lo/i35;

    invoke-virtual {v0, p1}, Lo/i35;->f(Ljava/lang/String;)Z

    move-result p1

    const/4 v8, 0x6

    if-nez p1, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :cond_1
    const/4 v8, 0x3

    iget-boolean p1, p0, Lo/d1;->d:Z

    const/4 v8, 0x2

    if-nez p1, :cond_2

    const/4 v8, 0x4

    sget-boolean v3, Lo/d1;->i:Z

    const/4 v8, 0x6

    sget-wide v4, Lo/m01;->n:J

    const/4 v8, 0x1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppMoveBackTimestamp()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v7}, Lo/hc;->h(Lo/iq7$b;ZJJ)Z

    move-result p1

    const/4 v8, 0x7

    if-eqz p1, :cond_3

    :cond_2
    const/4 v8, 0x5

    const/4 v1, 0x1

    :cond_3
    iget-object p1, p0, Lo/m01;->k:Lo/tl3;

    const/4 v8, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x3

    const-string v2, "=vidol"

    const-string v2, "valid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x3

    invoke-virtual {p1, v0}, Lo/tl3;->f(Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_0
    const/4 v8, 0x0

    iget-object p1, p0, Lo/m01;->k:Lo/tl3;

    const-string v0, "loadStrategy fail"

    invoke-virtual {p1, v0}, Lo/tl3;->f(Ljava/lang/String;)V

    const/4 v8, 0x2

    return v1
.end method

.method public final i()V
    .locals 3

    const/4 v2, 0x2

    sget-object v0, Lo/m01;->m:Ljava/lang/String;

    const/4 v2, 0x6

    const-string v1, "nlkrsbIaeev(rstnopa lmE)cime"

    const-string v1, "markImpressionEvent() called"

    const/4 v2, 0x3

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    sput-wide v0, Lo/m01;->n:J

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v1, 0x6

    iget-object v0, p0, Lo/m01;->j:Lo/i35;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/i35;->h()V

    :cond_0
    const/4 v1, 0x3

    return-void
.end method

.method public k(Ljava/lang/String;Lo/un7;)Z
    .locals 3

    const/4 v2, 0x6

    iget-object v0, p0, Lo/m01;->k:Lo/tl3;

    const-string v1, "bshdoA"

    const-string v1, "showAd"

    invoke-virtual {v0, v1}, Lo/tl3;->f(Ljava/lang/String;)V

    new-instance v0, Lo/m01$b;

    const/4 v2, 0x6

    invoke-direct {v0, p0, p2}, Lo/m01$b;-><init>(Lo/m01;Lo/un7;)V

    invoke-virtual {p0, p1, v0}, Lo/m01;->d(Ljava/lang/String;Lo/d1$b;)Z

    move-result p1

    const/4 v2, 0x1

    return p1
.end method
