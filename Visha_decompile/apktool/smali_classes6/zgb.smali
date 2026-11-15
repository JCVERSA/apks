.class public final Lzgb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lzgb;

.field public static final b:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzgb;

    invoke-direct {v0}, Lzgb;-><init>()V

    sput-object v0, Lzgb;->a:Lzgb;

    new-instance v0, Lygb;

    invoke-direct {v0}, Lygb;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lzgb;->b:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lzgb;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final c()Ljava/util/Map;
    .locals 3

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v1, Lx8c;

    invoke-direct {v1}, Lx8c;-><init>()V

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v2, Ly10;

    invoke-direct {v2}, Ly10;-><init>()V

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

    sget-object p0, Lzgb;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public d(Lcom/transsion/dbdata/source/DataSourceScope;Lahb;)I
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lzgb;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzw4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lzw4;->a(Lahb;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
