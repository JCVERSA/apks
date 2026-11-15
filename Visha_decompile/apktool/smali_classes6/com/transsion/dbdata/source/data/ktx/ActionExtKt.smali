.class public final Lcom/transsion/dbdata/source/data/ktx/ActionExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a#\u0010\u0005\u001a\u0004\u0018\u00010\u0004*\u00020\u00002\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\u001d\u0010\t\u001a\u0004\u0018\u00010\u0004*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lxk8$x;",
        "",
        "",
        "projection",
        "Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
        "toQueryBundle",
        "(Lxk8$x;[Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
        "",
        "isFileTable",
        "toQueryMVBundle",
        "(Lxk8$x;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
        "dbdata_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toQueryBundle(Lxk8$x;[Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projection"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lxk8$g;->c()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p0}, Lxk8$g;->c()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v2, "_id = ?"

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lxk8$g;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p0}, Lxk8$g;->d()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v2, "_data = ?"

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lxk8$g;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p0}, Lxk8$g;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v2, "_data LIKE ?"

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lxk8$g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p0}, Lxk8$g;->a()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v2, "_display_name = ?"

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setProjection([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {v1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {v1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->build()Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public static final toQueryMVBundle(Lxk8$x;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lxk8$g;->c()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p0}, Lxk8$g;->c()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "_id = ?"

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lxk8$g;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lkotlin/Pair;

    const-string v2, "_data = ?"

    invoke-virtual {p0}, Lxk8$g;->d()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lxk8$g;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p0}, Lxk8$g;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "_data LIKE ?"

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lxk8$g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lkotlin/Pair;

    const-string v2, "_display_name = ?"

    invoke-virtual {p0}, Lxk8$g;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    if-eqz p0, :cond_7

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildQueryMVBundle(Ljava/lang/StringBuilder;Ljava/util/List;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_3
    return-object v1
.end method
