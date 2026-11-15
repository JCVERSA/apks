.class public final Lo78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwv4;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll78;

    invoke-direct {v0}, Ll78;-><init>()V

    const-class v1, Lxk8$d;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo78;->a:Ljava/util/Map;

    new-instance v0, Lm78;

    invoke-direct {v0}, Lm78;-><init>()V

    const-class v1, Lxk8$k;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-instance v1, Ln78;

    invoke-direct {v1}, Ln78;-><init>()V

    const-class v2, Lxk8$s;

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo78;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic c(Lxk8;)Lcom/transsion/dbdata/database/PlayListFolderItem;
    .locals 0

    invoke-static {p0}, Lo78;->h(Lxk8;)Lcom/transsion/dbdata/database/PlayListFolderItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lxk8;)Lcom/transsion/dbdata/database/PlayListFolderItem;
    .locals 0

    invoke-static {p0}, Lo78;->g(Lxk8;)Lcom/transsion/dbdata/database/PlayListFolderItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Lo78;->f(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lxk8;)Lkotlin/Pair;
    .locals 2

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lxk8$d;

    invoke-virtual {p0}, Lxk8$d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryAllPlayList()Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    invoke-virtual {p0}, Lxk8$d;->b()Z

    move-result v1

    invoke-virtual {p0}, Lxk8$d;->a()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryAllPlayList(ZZ)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final g(Lxk8;)Lcom/transsion/dbdata/database/PlayListFolderItem;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lxk8$k;

    invoke-virtual {p0}, Lxk8$k;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryFavoritePlayListItem()Lcom/transsion/dbdata/database/PlayListFolderItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryFavoritePlayListItem()Lcom/transsion/dbdata/database/PlayListFolderItem;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final h(Lxk8;)Lcom/transsion/dbdata/database/PlayListFolderItem;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryPlayListItem(Lxk8$s;)Lcom/transsion/dbdata/database/PlayListFolderItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lo78;->i(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lcom/transsion/dbdata/database/PlayListFolderItem;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo78;->a:Ljava/util/Map;

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le74;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "queryBatch unhandled action type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlayListQueryEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public i(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lcom/transsion/dbdata/database/PlayListFolderItem;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo78;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le74;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "querySingle unhandled action type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlayListQueryEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method
