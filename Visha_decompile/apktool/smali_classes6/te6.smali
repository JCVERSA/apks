.class public final Lte6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwv4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lte6$a;
    }
.end annotation


# static fields
.field public static final c:Lte6$a;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lte6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lte6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lte6;->c:Lte6$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lre6;

    invoke-direct {v0}, Lre6;-><init>()V

    const-class v1, Lxk8$n;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lte6;->a:Ljava/util/Map;

    new-instance v0, Lse6;

    invoke-direct {v0}, Lse6;-><init>()V

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lte6;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/source/DataSourceScope;Lxk8;)Lqe6;
    .locals 0

    invoke-static {p0, p1}, Lte6;->f(Lcom/transsion/dbdata/source/DataSourceScope;Lxk8;)Lqe6;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/dbdata/source/DataSourceScope;Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1}, Lte6;->e(Lcom/transsion/dbdata/source/DataSourceScope;Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lcom/transsion/dbdata/source/DataSourceScope;Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "scope"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "input"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p1, Lxk8$n;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getAllMissingData(Lxk8$n;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lcom/transsion/dbdata/source/DataSourceScope;Lxk8;)Lqe6;
    .locals 1

    const-string v0, "scope"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "input"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p1, Lxk8$n;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->getByMediaIdOrPath(Lxk8$n;)Lqe6;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lte6;->g(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lqe6;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lte6;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls74;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string p2, "Unhandled action type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaDataMissingQueryEngine"

    invoke-static {p1, p0}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public g(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lqe6;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lte6;->a:Ljava/util/Map;

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls74;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqe6;

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

    const-string p1, "MediaDataMissingQueryEngine"

    invoke-static {p1, p0}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method
