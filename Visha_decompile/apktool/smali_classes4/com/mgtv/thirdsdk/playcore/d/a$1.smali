.class Lcom/mgtv/thirdsdk/playcore/d/a$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/mgtv/thirdsdk/playcore/d/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/mgtv/thirdsdk/playcore/d/a;)Lcom/mgtv/thirdsdk/playcore/d/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/mgtv/thirdsdk/playcore/d/a;)Lcom/mgtv/thirdsdk/playcore/d/a$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/d/a$b;->a()V

    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/thirdsdk/playcore/d/a$1;->a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;->title:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3
    iget-object v0, p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;->title:Ljava/util/List;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a()Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;->title:Ljava/util/List;

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/d/a;->a:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/mgtv/thirdsdk/playcore/d/a;)Lcom/mgtv/thirdsdk/playcore/d/a$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/d/a;->b(Lcom/mgtv/thirdsdk/playcore/d/a;)[I

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/d/a;->b(Lcom/mgtv/thirdsdk/playcore/d/a;)[I

    move-result-object v1

    array-length v1, v1

    .line 8
    :goto_0
    iget-object v1, p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;->title:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    .line 9
    new-instance v3, Lcom/mgtv/ssp/play/bean/SubTitleData;

    invoke-direct {v3}, Lcom/mgtv/ssp/play/bean/SubTitleData;-><init>()V

    .line 10
    invoke-virtual {v2}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getLanguage()I

    move-result v5

    invoke-virtual {v2}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getCaptionCountrySimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/mgtv/ssp/play/bean/SubTitleData;->getCaptionSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/mgtv/ssp/play/bean/SubTitleData;->create(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;->title:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/util/List;)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-virtual {v1, p1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;)V

    .line 14
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/mgtv/thirdsdk/playcore/d/a;)Lcom/mgtv/thirdsdk/playcore/d/a$b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/mgtv/thirdsdk/playcore/d/a;)Lcom/mgtv/thirdsdk/playcore/d/a$b;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/mgtv/thirdsdk/playcore/d/a$b;->a(Ljava/util/ArrayList;Lcom/mgtv/ssp/play/bean/SubTitleData;)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/mgtv/thirdsdk/playcore/d/a;)Lcom/mgtv/thirdsdk/playcore/d/a$b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a$1;->b:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/mgtv/thirdsdk/playcore/d/a;)Lcom/mgtv/thirdsdk/playcore/d/a$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/d/a$b;->a()V

    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/d/a$1;->a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;)V

    return-void
.end method
