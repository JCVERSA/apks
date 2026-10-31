.class public final Lo/et5;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lo/et5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/et5;

    invoke-direct {v0}, Lo/et5;-><init>()V

    sput-object v0, Lo/et5;->a:Lo/et5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "tlsdicenanrgnwd_p_ioowlkicra_"

    const-string v0, "pirate_warning_click_download"

    const/4 v2, 0x6

    invoke-static {v0}, Lo/oa8;->g(Ljava/lang/String;)Lo/zg3;

    move-result-object v0

    const/4 v2, 0x2

    if-nez p1, :cond_0

    const/4 v2, 0x4

    const-string p1, ""

    const-string p1, ""

    :cond_0
    const/4 v2, 0x4

    const-string v1, "error"

    const/4 v2, 0x6

    invoke-interface {v0, v1, p1}, Lo/zg3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/zg3;

    move-result-object p1

    invoke-interface {p1}, Lo/zg3;->reportEvent()V

    const/4 v2, 0x4

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x3

    const-string v0, "pirate_warning_click_uninstall"

    const/4 v2, 0x5

    invoke-static {v0}, Lo/oa8;->g(Ljava/lang/String;)Lo/zg3;

    move-result-object v0

    const/4 v2, 0x7

    if-nez p1, :cond_0

    const-string p1, ""

    const-string p1, ""

    :cond_0
    const-string v1, "error"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1}, Lo/zg3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/zg3;

    move-result-object p1

    const/4 v2, 0x5

    invoke-interface {p1}, Lo/zg3;->reportEvent()V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "tirmrhw_oenawaignnp_"

    const-string v0, "pirate_warning_shown"

    invoke-static {v0}, Lo/oa8;->g(Ljava/lang/String;)Lo/zg3;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v2, 0x3

    const-string p1, ""

    :cond_0
    const/4 v2, 0x5

    const-string v1, "rroeo"

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Lo/zg3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/zg3;

    move-result-object p1

    invoke-interface {p1}, Lo/zg3;->reportEvent()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "ar__tbetlasgifipneiau"

    const-string v0, "pirate_signature_fail"

    const/4 v2, 0x1

    invoke-static {v0}, Lo/oa8;->g(Ljava/lang/String;)Lo/zg3;

    move-result-object v0

    const/4 v2, 0x4

    if-nez p1, :cond_0

    const/4 v2, 0x2

    const-string p1, ""

    :cond_0
    const/4 v2, 0x5

    const-string v1, "rbrro"

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Lo/zg3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/zg3;

    move-result-object p1

    const/4 v2, 0x4

    invoke-interface {p1}, Lo/zg3;->reportEvent()V

    const/4 v2, 0x1

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "pirate_warning_start"

    const/4 v2, 0x0

    invoke-static {v0}, Lo/oa8;->g(Ljava/lang/String;)Lo/zg3;

    move-result-object v0

    const/4 v2, 0x3

    if-nez p1, :cond_0

    const/4 v2, 0x7

    const-string p1, ""

    const-string p1, ""

    :cond_0
    const-string v1, "error"

    const/4 v2, 0x3

    invoke-interface {v0, v1, p1}, Lo/zg3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/zg3;

    move-result-object p1

    invoke-interface {p1}, Lo/zg3;->reportEvent()V

    return-void
.end method
