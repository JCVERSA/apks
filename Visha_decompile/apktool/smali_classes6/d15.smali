.class public final Ld15;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ld15;

.field public static final b:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld15;

    invoke-direct {v0}, Ld15;-><init>()V

    sput-object v0, Ld15;->a:Ld15;

    new-instance v0, Lc15;

    invoke-direct {v0}, Lc15;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Ld15;->b:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    invoke-static {}, Ld15;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final e()Ljava/util/Map;
    .locals 3

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v1, Lesb;

    invoke-direct {v1}, Lesb;-><init>()V

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v2, Lwq;

    invoke-direct {v2}, Lwq;-><init>()V

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 0

    sget-object p0, Ld15;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public c(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)Ljava/util/List;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ld15;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfv4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lfv4;->b(Le15;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public d(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ld15;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfv4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lfv4;->a(Le15;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
