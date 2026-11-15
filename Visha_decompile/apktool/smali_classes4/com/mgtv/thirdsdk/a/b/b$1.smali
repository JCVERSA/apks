.class Lcom/mgtv/thirdsdk/a/b/b$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/a/b/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/hunantv/imgo/net/DlnaRenderSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/mgtv/thirdsdk/a/b/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/net/DlnaRenderSource;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/DlnaRenderSource;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/b/b;->c(Lcom/mgtv/thirdsdk/a/b/b;)I

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/a/b/b;->b()V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hunantv/imgo/net/DlnaRenderSource;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/a/b/b$1;->b(Lcom/hunantv/imgo/net/DlnaRenderSource;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/hunantv/imgo/net/DlnaRenderSource;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/thirdsdk/a/b/b$1;->a(Lcom/hunantv/imgo/net/DlnaRenderSource;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/hunantv/imgo/net/DlnaRenderSource;)V
    .locals 3

    .line 2
    const-string v0, "070703"

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/b/b;->a(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/b/b;->a(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/mgtv/thirdsdk/a/a/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/hunantv/imgo/net/DlnaRenderSource;->getInfo()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/b/b;->a(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/b/b;->a(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/mgtv/thirdsdk/a/a/b;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 9
    :cond_3
    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/a/b/b;->b(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/mgtv/thirdsdk/a/b;->b:Ljava/util/List;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/a/b/b;->b(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/mgtv/thirdsdk/a/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 12
    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/a/b/b;->b(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/mgtv/thirdsdk/a/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/a/b/b;->b(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/b;

    move-result-object v1

    iget v1, v1, Lcom/mgtv/thirdsdk/a/b;->d:I

    iget-object v2, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/a/b/b;->b(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/b;

    move-result-object v2

    iget-object v2, v2, Lcom/mgtv/thirdsdk/a/b;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    iget v2, v2, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;->resolution:I

    if-ne v1, v2, :cond_4

    .line 13
    iget-object v1, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/a/b/b;->b(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/b;

    move-result-object v1

    iget-object v1, v1, Lcom/mgtv/thirdsdk/a/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;

    iput-object p1, v0, Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;->playUrl:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/a/b/b;->b(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgtv/thirdsdk/a/b;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/a/b/b;->a(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 16
    iget-object p0, p0, Lcom/mgtv/thirdsdk/a/b/b$1;->b:Lcom/mgtv/thirdsdk/a/b/b;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/a/b/b;->a(Lcom/mgtv/thirdsdk/a/b/b;)Lcom/mgtv/thirdsdk/a/a/b;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/a/a/b;->a(I)V

    :cond_6
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hunantv/imgo/net/DlnaRenderSource;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/a/b/b$1;->a(Lcom/hunantv/imgo/net/DlnaRenderSource;)V

    return-void
.end method
