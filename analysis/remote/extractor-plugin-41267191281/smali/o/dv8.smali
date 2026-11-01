.class public abstract Lo/dv8;
.super Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;


# instance fields
.field public g:Lo/lg7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public C(Lcom/snaptube/extractor/pluginlib/models/Format;)Z
    .locals 1

    iget-object v0, p0, Lo/dv8;->g:Lo/lg7;

    invoke-virtual {v0, p1}, Lo/lg7;->isFormatNeedMux(Lcom/snaptube/extractor/pluginlib/models/Format;)Z

    move-result p1

    return p1
.end method

.method public D(Ljava/lang/ClassLoader;)Z
    .locals 1

    iget-object v0, p0, Lo/dv8;->g:Lo/lg7;

    invoke-virtual {v0, p1}, Lo/lg7;->h(Ljava/lang/ClassLoader;)Z

    move-result p1

    return p1
.end method

.method public E(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)[Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 2

    iget-object v0, p0, Lo/dv8;->g:Lo/lg7;

    invoke-virtual {v0, p1, p2}, Lo/lg7;->getMuxAudioFormat(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snaptube/extractor/pluginlib/models/Format;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    return-object v0
.end method

.method public h()Lo/dc3;
    .locals 2

    new-instance v0, Lo/lg7;

    invoke-virtual {p0}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lg7;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/dv8;->g:Lo/lg7;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lo/t66;

    invoke-direct {v1}, Lo/t66;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lo/dd2;

    invoke-direct {v1}, Lo/dd2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lo/id2;

    invoke-virtual {p0}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->i()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/id2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lo/ko3;

    invoke-direct {v1}, Lo/ko3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
