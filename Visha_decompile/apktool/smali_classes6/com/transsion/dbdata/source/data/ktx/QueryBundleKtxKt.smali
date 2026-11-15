.class public final Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u001a)\u0010\u0007\u001a\u00020\u00062\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a3\u0010\u000b\u001a\u00020\u00062\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a)\u0010\r\u001a\u00020\u00062\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0008\u001a)\u0010\u000e\u001a\u00020\u00062\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0008\u001a1\u0010\u0012\u001a\u00020\u00112\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u00012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0010\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a)\u0010\u0014\u001a\u00020\u00112\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u00012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u001a%\u0010\u0019\u001a\u00020\u00112\u0016\u0008\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001a%\u0010\u001b\u001a\u00020\u00112\u0016\u0008\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001a\u001a%\u0010\u001c\u001a\u00020\u00112\u0016\u0008\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001a\u001a5\u0010\u001f\u001a\u00020\u00112\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001d2\u0016\u0008\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "selectionBuilder",
        "",
        "",
        "selectionArray",
        "Lzfb;",
        "appendMVQueryCondition",
        "(Ljava/lang/StringBuilder;Ljava/util/List;)V",
        "",
        "needMediaTypeFilter",
        "appendFileTableVideoQueryCondition",
        "(Ljava/lang/StringBuilder;Ljava/util/List;Z)V",
        "appendFileTableMVQueryCondition",
        "appendVideoTableMVQueryCondition",
        "selectionArgsList",
        "isFileTable",
        "Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
        "buildQueryMVBundle",
        "(Ljava/lang/StringBuilder;Ljava/util/List;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
        "buildQueryVideoBundleFromFileTable",
        "(Ljava/lang/StringBuilder;Ljava/util/List;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
        "Lkotlin/Function1;",
        "Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;",
        "config",
        "buildAudioQueryBundle",
        "(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
        "buildVideoQueryBundle",
        "buildFileQueryBundle",
        "",
        "projection",
        "buildBaseQueryBundle",
        "([Ljava/lang/String;Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
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
.method public static synthetic a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->appendMVQueryCondition$lambda$0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static final appendFileTableMVQueryCondition(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->appendFileTableVideoQueryCondition$default(Ljava/lang/StringBuilder;Ljava/util/List;ZILjava/lang/Object;)V

    const-string v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->appendMVQueryCondition(Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method private static final appendFileTableVideoQueryCondition(Ljava/lang/StringBuilder;Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-object v9, Lhk3;->h:[Ljava/lang/String;

    const-string v10, "VIDEO_NOT_MEDIADB"

    invoke-static {v9, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lyk8;

    invoke-direct {v6}, Lyk8;-><init>()V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const-string v1, " OR "

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    invoke-static/range {v0 .. v8}, Lhi;->s0([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "media_type = ? AND "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p0, "0"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    check-cast p1, Ljava/util/Collection;

    invoke-static {v9, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v9}, Ld81;->D(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic appendFileTableVideoQueryCondition$default(Ljava/lang/StringBuilder;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->appendFileTableVideoQueryCondition(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    return-void
.end method

.method private static final appendFileTableVideoQueryCondition$lambda$3(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "_data LIKE?"

    return-object p0
.end method

.method private static final appendMVQueryCondition(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ldw6;->c:Ldw6$a;

    invoke-virtual {v0}, Ldw6$a;->a()Ldw6;

    move-result-object v0

    invoke-virtual {v0}, Ldw6;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    new-instance v8, Lzk8;

    invoke-direct {v8}, Lzk8;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const-string v3, " OR "

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v10}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_%"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static final appendMVQueryCondition$lambda$0(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "LOWER(_display_name) LIKE LOWER(?)"

    return-object p0
.end method

.method private static final appendVideoTableMVQueryCondition(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->appendMVQueryCondition(Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->appendFileTableVideoQueryCondition$lambda$3(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")",
            "Lcom/transsion/dbdata/source/data/repository/QueryBundle;"
        }
    .end annotation

    sget-object v0, Lat;->b:Lat;

    invoke-virtual {v0}, Lat;->e()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildBaseQueryBundle([Ljava/lang/String;Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic buildAudioQueryBundle$default(Le74;ILjava/lang/Object;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildAudioQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method private static final buildBaseQueryBundle([Ljava/lang/String;Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Le74;",
            ")",
            "Lcom/transsion/dbdata/source/data/repository/QueryBundle;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setProjection([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->build()Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic buildBaseQueryBundle$default([Ljava/lang/String;Le74;ILjava/lang/Object;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildBaseQueryBundle([Ljava/lang/String;Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method public static final buildFileQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")",
            "Lcom/transsion/dbdata/source/data/repository/QueryBundle;"
        }
    .end annotation

    sget-object v0, Lqq3;->b:Lqq3;

    invoke-virtual {v0}, Lqq3;->e()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildBaseQueryBundle([Ljava/lang/String;Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic buildFileQueryBundle$default(Le74;ILjava/lang/Object;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildFileQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method public static final buildQueryMVBundle(Ljava/lang/StringBuilder;Ljava/util/List;Z)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/transsion/dbdata/source/data/repository/QueryBundle;"
        }
    .end annotation

    const-string v0, "selectionBuilder"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionArgsList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, " AND "

    if-lez v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->appendFileTableMVQueryCondition(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->appendVideoTableMVQueryCondition(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "toString(...)"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-gt v4, v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x5

    if-lez v0, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    add-int/2addr v0, v4

    if-le p0, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x2

    const/4 v0, 0x0

    invoke-static {v2, v3, v5, p0, v0}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v2, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string p0, "substring(...)"

    invoke-static {v2, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_2
    new-instance p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;-><init>()V

    if-eqz p2, :cond_5

    sget-object p2, Lqq3;->b:Lqq3;

    invoke-virtual {p2}, Lqq3;->e()[Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    sget-object p2, Lqtb;->b:Lqtb;

    invoke-virtual {p2}, Lqtb;->e()[Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {p0, p2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setProjection([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p0, v2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    check-cast p1, Ljava/util/Collection;

    new-array p2, v5, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->build()Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method public static final buildQueryVideoBundleFromFileTable(Ljava/lang/StringBuilder;Ljava/util/List;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/transsion/dbdata/source/data/repository/QueryBundle;"
        }
    .end annotation

    const-string v0, "selectionBuilder"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionArgsList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, " AND "

    if-lez v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->appendFileTableVideoQueryCondition(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "toString(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x5

    if-lez v0, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    add-int/2addr v0, v5

    if-le p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x2

    const/4 v0, 0x0

    invoke-static {v4, v3, v2, p0, v0}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v4, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string p0, "substring(...)"

    invoke-static {v4, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    new-instance p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;-><init>()V

    sget-object v0, Lqq3;->b:Lqq3;

    invoke-virtual {v0}, Lqq3;->e()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setProjection([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p0, v4}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    check-cast p1, Ljava/util/Collection;

    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->build()Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method public static final buildVideoQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")",
            "Lcom/transsion/dbdata/source/data/repository/QueryBundle;"
        }
    .end annotation

    sget-object v0, Lqtb;->b:Lqtb;

    invoke-virtual {v0}, Lqtb;->e()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildBaseQueryBundle([Ljava/lang/String;Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic buildVideoQueryBundle$default(Le74;ILjava/lang/Object;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/transsion/dbdata/source/data/ktx/QueryBundleKtxKt;->buildVideoQueryBundle(Le74;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method
