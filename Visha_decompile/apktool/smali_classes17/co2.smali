.class public Lco2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lzn2;

.field public final b:Loj8;


# direct methods
.method public constructor <init>(Lzn2;Loj8;)V
    .locals 1

    const-string v0, "divPatchCache"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divViewCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco2;->a:Lzn2;

    iput-object p2, p0, Lco2;->b:Loj8;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/div/core/view2/a;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco2;->a:Lzn2;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lzn2;->b(Lei2;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/Div;

    iget-object v2, p0, Lco2;->b:Loj8;

    invoke-interface {v2}, Loj8;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd2;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div/core/view2/Div2View;->getCurrentRootPath$div_release()Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v3

    invoke-virtual {v2, v1, p1, v3}, Ldd2;->a(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b(Lcom/yandex/div2/DivData;Lei2;Lcom/yandex/div2/DivPatch;Loj3;)Lcom/yandex/div2/DivData;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "oldDivData"

    invoke-static {v1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "divDataTag"

    invoke-static {v2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "patch"

    invoke-static {v3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "resolver"

    invoke-static {v4, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lco2;->d(Lei2;Lcom/yandex/div2/DivPatch;)Ldo2;

    move-result-object v3

    new-instance v5, Lcom/yandex/div/core/downloader/DivPatchApply;

    invoke-direct {v5, v3}, Lcom/yandex/div/core/downloader/DivPatchApply;-><init>(Ldo2;)V

    iget-object v3, v1, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    invoke-virtual {v5, v3, v4}, Lcom/yandex/div/core/downloader/DivPatchApply;->n(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_0

    invoke-virtual {v0, v2}, Lco2;->e(Lei2;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v8, v1, Lcom/yandex/div2/DivData;->b:Ljava/lang/String;

    iget-object v12, v1, Lcom/yandex/div2/DivData;->f:Ljava/util/List;

    iget-object v13, v1, Lcom/yandex/div2/DivData;->g:Ljava/util/List;

    iget-object v10, v1, Lcom/yandex/div2/DivData;->d:Ljava/util/List;

    new-instance v0, Lcom/yandex/div2/DivData;

    const/16 v15, 0x91

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v16}, Lcom/yandex/div2/DivData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public c(Lcom/yandex/div/core/view2/a;Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco2;->a:Lzn2;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lzn2;->b(Lei2;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lky5;->g(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lwn8;->d(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/Div;

    iget-object v3, p0, Lco2;->b:Loj8;

    invoke-interface {v3}, Loj8;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd2;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/div/core/view2/Div2View;->getCurrentRootPath$div_release()Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v4

    invoke-virtual {v3, v2, p1, v4}, Ldd2;->b(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final d(Lei2;Lcom/yandex/div2/DivPatch;)Ldo2;
    .locals 0

    iget-object p0, p0, Lco2;->a:Lzn2;

    invoke-virtual {p0, p1, p2}, Lzn2;->c(Lei2;Lcom/yandex/div2/DivPatch;)Ldo2;

    move-result-object p0

    return-object p0
.end method

.method public e(Lei2;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lco2;->a:Lzn2;

    invoke-virtual {p0, p1}, Lzn2;->d(Lei2;)V

    return-void
.end method
