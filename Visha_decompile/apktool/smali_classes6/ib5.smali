.class public final Lib5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwv4;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfb5;

    invoke-direct {v0}, Lfb5;-><init>()V

    const-class v1, Lxk8$f;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-instance v1, Lgb5;

    invoke-direct {v1}, Lgb5;-><init>()V

    const-class v2, Lxk8$b0;

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    new-instance v2, Lhb5;

    invoke-direct {v2}, Lhb5;-><init>()V

    const-class v3, Lxk8$y;

    invoke-static {v3, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lib5;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic c(Lxk8;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lib5;->h(Lxk8;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lxk8;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lib5;->f(Lxk8;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lxk8;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lib5;->g(Lxk8;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lxk8;)Ljava/lang/String;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$f;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryLyricOffset(Lxk8$f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lxk8;)Ljava/lang/String;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lxk8$b0;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->queryAudioTrack(Lxk8$b0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lxk8;)Ljava/lang/String;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->querySubtitleSetting()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lib5;->i(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;
    .locals 0

    const-string p0, "scope"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public i(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/String;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lib5;->a:Ljava/util/Map;

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

    check-cast p0, Ljava/lang/String;

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

    const-string p2, "Unhandled action type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JsonQueryEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method
