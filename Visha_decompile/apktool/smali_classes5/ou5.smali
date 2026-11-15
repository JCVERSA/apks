.class public Lou5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpu5;ZLjava/lang/String;)Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lpu5;->read()Lcom/transsion/audio/lyrics/bean/LyricFile;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/audio/lyrics/bean/LyricFile;->getAllLines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audio/lyrics/bean/LyricFile;->getAllLines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/audio/lyrics/bean/LyricFile;->getOffset()I

    move-result v5

    invoke-static {v4, v5, v3}, Lcom/transsion/audio/lyrics/bean/LrcRow;->createRows(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget v5, v5, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/audio/lyrics/bean/LrcRow;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/audio/lyrics/bean/LrcRow;

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    iget v7, v4, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    iget v8, v6, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    if-ne v7, v8, :cond_4

    iget-object v7, v4, Lcom/transsion/audio/lyrics/bean/LrcRow;->content:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-boolean v7, v4, Lcom/transsion/audio/lyrics/bean/LrcRow;->noTimeText:Z

    if-nez v7, :cond_4

    new-instance v3, Lcom/transsion/audio/lyrics/bean/LrcRow;

    invoke-direct {v3}, Lcom/transsion/audio/lyrics/bean/LrcRow;-><init>()V

    iget-object v7, v4, Lcom/transsion/audio/lyrics/bean/LrcRow;->content:Ljava/lang/String;

    iput-object v7, v3, Lcom/transsion/audio/lyrics/bean/LrcRow;->content:Ljava/lang/String;

    iget v7, v4, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    iput v7, v3, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    iget-object v4, v4, Lcom/transsion/audio/lyrics/bean/LrcRow;->timeStr:Ljava/lang/String;

    iput-object v4, v3, Lcom/transsion/audio/lyrics/bean/LrcRow;->timeStr:Ljava/lang/String;

    iget-object v4, v6, Lcom/transsion/audio/lyrics/bean/LrcRow;->content:Ljava/lang/String;

    iput-object v4, v3, Lcom/transsion/audio/lyrics/bean/LrcRow;->translate:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_3

    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    return-object v0

    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/lyrics/bean/LrcRow;

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget v4, v4, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget v2, v2, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    sub-int/2addr v4, v2

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/transsion/audio/lyrics/bean/LrcRow;->totalTime:J

    move v2, v3

    goto :goto_4

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/lyrics/bean/LrcRow;

    const-wide/16 v2, 0x1388

    iput-wide v2, v1, Lcom/transsion/audio/lyrics/bean/LrcRow;->totalTime:J

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/transsion/audio/lyrics/bean/LyricFile;->getAllLines()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p3}, Lou5;->b(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-object v0
.end method

.method public b(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "raw"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lru5;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3, v0}, Lru5;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
