.class public final Lw10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luw4;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls10;

    invoke-direct {v0}, Ls10;-><init>()V

    const-class v1, Lngb$d;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-instance v1, Lt10;

    invoke-direct {v1}, Lt10;-><init>()V

    const-class v2, Lngb$e;

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    new-instance v2, Lu10;

    invoke-direct {v2}, Lu10;-><init>()V

    const-class v3, Lngb$a;

    invoke-static {v3, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v3, Lv10;

    invoke-direct {v3}, Lv10;-><init>()V

    const-class v4, Lngb$b;

    invoke-static {v4, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lw10;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic b(Lngb;)I
    .locals 0

    invoke-static {p0}, Lw10;->g(Lngb;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lngb;)I
    .locals 0

    invoke-static {p0}, Lw10;->i(Lngb;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lngb;)I
    .locals 0

    invoke-static {p0}, Lw10;->f(Lngb;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lngb;)I
    .locals 0

    invoke-static {p0}, Lw10;->h(Lngb;)I

    move-result p0

    return p0
.end method

.method public static final f(Lngb;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lngb$d;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->updatePlayListName(Lngb$d;)I

    move-result p0

    return p0
.end method

.method public static final g(Lngb;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lngb$e;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->updateSystemMediaItemName(Lngb$e;)I

    move-result p0

    return p0
.end method

.method public static final h(Lngb;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->updatePlayRecord(Lngb$a;)I

    move-result p0

    return p0
.end method

.method public static final i(Lngb;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lngb$b;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->upsertMediaDataMissingSingle(Lngb$b;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lahb;)I
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw10;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lahb;->a()Lngb;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le74;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lahb;->a()Lngb;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lahb;->a()Lngb;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled action type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioUpdateEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method
