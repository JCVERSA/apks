.class public final Lv8c;
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

    new-instance v0, Lr8c;

    invoke-direct {v0}, Lr8c;-><init>()V

    const-class v1, Lngb$d;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-instance v1, Ls8c;

    invoke-direct {v1}, Ls8c;-><init>()V

    const-class v2, Lngb$e;

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    new-instance v2, Lt8c;

    invoke-direct {v2}, Lt8c;-><init>()V

    const-class v3, Lngb$g;

    invoke-static {v3, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v3, Lu8c;

    invoke-direct {v3}, Lu8c;-><init>()V

    const-class v4, Lngb$f;

    invoke-static {v4, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lv8c;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic b(Lngb;)I
    .locals 0

    invoke-static {p0}, Lv8c;->h(Lngb;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lngb;)I
    .locals 0

    invoke-static {p0}, Lv8c;->f(Lngb;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lngb;)I
    .locals 0

    invoke-static {p0}, Lv8c;->i(Lngb;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lngb;)I
    .locals 0

    invoke-static {p0}, Lv8c;->g(Lngb;)I

    move-result p0

    return p0
.end method

.method private static final f(Lngb;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lngb$d;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->updatePlayListName(Lngb$d;)I

    move-result p0

    return p0
.end method

.method private static final g(Lngb;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lngb$e;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->updateMediaItemName(Lngb$e;)I

    move-result p0

    return p0
.end method

.method private static final h(Lngb;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lngb$g;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->updatePlayRecord(Lngb$g;)I

    move-result p0

    return p0
.end method

.method private static final i(Lngb;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lngb$f;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->updateVideoConvertingAudio(Lngb$f;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lahb;)I
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv8c;->a:Ljava/util/Map;

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

    const-string v0, "Unhandled SingleAction type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoUpdateEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method
