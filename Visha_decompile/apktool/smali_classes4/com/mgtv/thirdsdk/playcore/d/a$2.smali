.class Lcom/mgtv/thirdsdk/playcore/d/a$2;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

.field final synthetic c:Lcom/mgtv/thirdsdk/playcore/d/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/d/a;Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$2;->c:Lcom/mgtv/thirdsdk/playcore/d/a;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/d/a$2;->b:Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;
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
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$2;->c:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/d/a;->c(Lcom/mgtv/thirdsdk/playcore/d/a;)I

    .line 6
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/d/a$2;->c:Lcom/mgtv/thirdsdk/playcore/d/a;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a$2;->b:Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;Z)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/d/a$2;->b(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;)V

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
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/thirdsdk/playcore/d/a$2;->a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/d/a$2;->c:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-static {p0, p1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/mgtv/thirdsdk/playcore/d/a;Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/d/a$2;->a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesUrlBean;)V

    return-void
.end method
