.class public final Lji2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lji2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lji2;

    invoke-direct {v0}, Lji2;-><init>()V

    sput-object v0, Lji2;->a:Lji2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/net/Uri;Lsv2;)Z
    .locals 3

    const-string v0, "divViewFacade"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "download"

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "url"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "url param is required!"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return v0

    :cond_1
    instance-of p0, p1, Lcom/yandex/div/core/view2/Div2View;

    if-nez p0, :cond_2

    const-string p0, "Div2View should be used!"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static final d(Lcom/yandex/div2/DivAction;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z
    .locals 2

    const-string v0, "action"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div2/DivAction;->k:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lji2;->a:Lji2;

    iget-object p0, p0, Lcom/yandex/div2/DivAction;->a:Lcom/yandex/div2/DivDownloadCallbacks;

    invoke-virtual {v1, v0, p0, p1, p2}, Lji2;->c(Landroid/net/Uri;Lcom/yandex/div2/DivDownloadCallbacks;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final f(Lwp2;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z
    .locals 2

    const-string v0, "action"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lwp2;->getUrl()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lji2;->a:Lji2;

    invoke-interface {p0}, Lwp2;->a()Lcom/yandex/div2/DivDownloadCallbacks;

    move-result-object p0

    invoke-virtual {v1, v0, p0, p1, p2}, Lji2;->c(Landroid/net/Uri;Lcom/yandex/div2/DivDownloadCallbacks;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z
    .locals 0

    new-instance p0, Lji2$a;

    invoke-direct {p0, p4, p2, p5, p3}, Lji2$a;-><init>(Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Loj3;Ljava/util/List;)V

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p2

    invoke-interface {p2}, Lcom/yandex/div/core/dagger/Div2Component;->h()Loi2;

    move-result-object p2

    invoke-interface {p2, p4, p1, p0}, Loi2;->c(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lao2;)Ljn5;

    move-result-object p0

    const-string p1, "loadRef"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p0, p4}, Lcom/yandex/div/core/view2/Div2View;->addLoadReference(Ljn5;Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final c(Landroid/net/Uri;Lcom/yandex/div2/DivDownloadCallbacks;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z
    .locals 7

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/yandex/div2/DivDownloadCallbacks;->b:Ljava/util/List;

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p2, Lcom/yandex/div2/DivDownloadCallbacks;->a:Ljava/util/List;

    :cond_2
    move-object v4, p1

    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lji2;->b(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z

    move-result p0

    return p0
.end method

.method public final e(Lcom/yandex/div2/DivActionDownload;Lcom/yandex/div2/DivDownloadCallbacks;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z
    .locals 9

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/yandex/div2/DivActionDownload;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p1, Lcom/yandex/div2/DivActionDownload;->a:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/yandex/div2/DivDownloadCallbacks;->a:Ljava/util/List;

    :cond_0
    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, v2

    :goto_0
    iget-object p1, p1, Lcom/yandex/div2/DivActionDownload;->b:Ljava/util/List;

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/yandex/div2/DivDownloadCallbacks;->b:Ljava/util/List;

    :cond_2
    move-object v5, v2

    goto :goto_1

    :cond_3
    move-object v5, p1

    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p1, "url.toString()"

    invoke-static {v4, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lji2;->b(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z

    move-result p0

    return p0
.end method
