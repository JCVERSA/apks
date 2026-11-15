.class public final Lbm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpu4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbm6$a;
    }
.end annotation


# static fields
.field public static final b:Lbm6$a;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbm6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbm6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbm6;->b:Lbm6$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lbm6;->a:Ljava/util/Map;

    invoke-static {}, Lcom/transsion/dbdata/engine/base/action/MediaStoreMVTypeEnum;->values()[Lcom/transsion/dbdata/engine/base/action/MediaStoreMVTypeEnum;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lbm6;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/transsion/dbdata/engine/base/action/MediaStoreMVTypeEnum;->getOutPutType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2}, Lcom/transsion/dbdata/engine/base/action/MediaStoreMVTypeEnum;->getTypeHandler()Lqu4;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final d(Ljava/lang/Class;)Lqu4;
    .locals 0

    iget-object p0, p0, Lbm6;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lqu4;

    if-eqz p1, :cond_0

    check-cast p0, Lqu4;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final e(Ljava/lang/Object;Lnu4;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->SUCCESS:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    const-string p3, "success"

    invoke-interface {p2, p0, p1, p3}, Lnu4;->a(Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->FAILURE:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    const-string p1, "failure"

    invoke-interface {p2, p0, p3, p1}, Lnu4;->a(Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lns1;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lbm6;->d(Ljava/lang/Class;)Lqu4;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lqu4;->a(Lns1;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public b(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lns1;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lbm6;->d(Ljava/lang/Class;)Lqu4;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lqu4;->b(Lns1;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lbm6;->e(Ljava/lang/Object;Lnu4;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lns1;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lbm6;->d(Ljava/lang/Class;)Lqu4;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lqu4;->b(Lns1;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method
