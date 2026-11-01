.class public abstract Lcom/snaptube/video/videoextractor/impl/a;
.super Ljava/lang/Object;

# interfaces
.implements Lo/wq8;


# static fields
.field public static final e:Ljava/util/Random;

.field public static f:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/snaptube/video/videoextractor/model/SiteSupportRules;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/snaptube/video/videoextractor/impl/a;->e:Ljava/util/Random;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/snaptube/video/videoextractor/impl/a;->f:I

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/video/videoextractor/impl/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/snaptube/video/videoextractor/impl/a;->b:[Ljava/lang/String;

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/video/videoextractor/model/PageContext;JZ)V
    .locals 4

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object v0

    invoke-virtual {v0}, Lo/yq8;->d()Lo/ec3;

    move-result-object v0

    invoke-interface {v0}, Lo/ec3;->m()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/snaptube/video/videoextractor/impl/a;->f:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lo/va8;->b()Lo/va8;

    move-result-object v0

    invoke-virtual {v0}, Lo/va8;->c()Lo/ra8;

    move-result-object v0

    const-string v2, "ExtractVideoInfo"

    invoke-interface {v0, v2}, Lo/ra8;->setEventName(Ljava/lang/String;)Lo/ra8;

    move-result-object v0

    const-string v2, "extract_duration"

    invoke-interface {v0, v2}, Lo/ra8;->setAction(Ljava/lang/String;)Lo/ra8;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snaptube/video/videoextractor/model/PageContext;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "event_url"

    invoke-interface {v0, v3, v2}, Lo/ra8;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ra8;

    move-result-object v0

    const-string v2, "extract_from"

    invoke-virtual {p2}, Lcom/snaptube/video/videoextractor/model/PageContext;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/ra8;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ra8;

    move-result-object v0

    const-string v2, "host"

    invoke-interface {v0, v2, p0}, Lo/ra8;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ra8;

    move-result-object p0

    const-string v0, "EXTRACT_POS"

    invoke-virtual {p2, v0}, Lcom/snaptube/video/videoextractor/model/PageContext;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "position_source"

    invoke-interface {p0, v0, p2}, Lo/ra8;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ra8;

    move-result-object p0

    const-string p2, "extractor_type"

    invoke-interface {p0, p2, p1}, Lo/ra8;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ra8;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "elapsed"

    invoke-interface {p0, p2, p1}, Lo/ra8;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ra8;

    move-result-object p0

    xor-int/lit8 p1, p5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "error_no"

    invoke-interface {p0, p2, p1}, Lo/ra8;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ra8;

    move-result-object p0

    invoke-interface {p0}, Lo/ra8;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final e(Ljava/net/URI;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/video/videoextractor/impl/a;->h()Lcom/snaptube/video/videoextractor/model/SiteSupportRules;

    move-result-object v0

    invoke-static {p1, v0}, Lo/qg7;->c(Ljava/net/URI;Lcom/snaptube/video/videoextractor/model/SiteSupportRules;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/video/videoextractor/impl/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/snaptube/video/videoextractor/model/SiteSupportRules;
    .locals 4

    iget-object v0, p0, Lcom/snaptube/video/videoextractor/impl/a;->d:Lcom/snaptube/video/videoextractor/model/SiteSupportRules;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/video/videoextractor/impl/a;->i()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/snaptube/video/videoextractor/model/SiteSupportRules;

    iget-object v2, p0, Lcom/snaptube/video/videoextractor/impl/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/video/videoextractor/impl/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/snaptube/video/videoextractor/model/SiteSupportRules;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/snaptube/video/videoextractor/impl/a;->d:Lcom/snaptube/video/videoextractor/model/SiteSupportRules;

    :cond_0
    iget-object v0, p0, Lcom/snaptube/video/videoextractor/impl/a;->d:Lcom/snaptube/video/videoextractor/model/SiteSupportRules;

    return-object v0
.end method

.method public i()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/video/videoextractor/impl/a;->b:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object v0

    invoke-virtual {v0}, Lo/yq8;->e()Lo/ac2;

    move-result-object v0

    const-string v1, "all"

    invoke-virtual {v0, v1}, Lo/ac2;->h(Ljava/lang/String;)V

    instance-of v0, p0, Lo/kl6;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object v0

    invoke-virtual {v0}, Lo/yq8;->e()Lo/ac2;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lo/kl6;

    invoke-virtual {v0, v1}, Lo/ac2;->f(Lo/kl6;)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/video/videoextractor/impl/a;->c:Ljava/lang/String;

    return-void
.end method
