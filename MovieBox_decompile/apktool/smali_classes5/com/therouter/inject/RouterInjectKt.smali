.class public abstract Lcom/therouter/inject/RouterInjectKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Lcom/therouter/inject/RecyclerBin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/therouter/inject/RecyclerBin;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/therouter/inject/RecyclerBin;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/therouter/inject/RouterInjectKt;->a:Lcom/therouter/inject/RecyclerBin;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic a()Lcom/therouter/inject/RecyclerBin;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/inject/RouterInjectKt;->a:Lcom/therouter/inject/RecyclerBin;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "RouterInject"

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/therouter/TheRouterKt;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic c(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/therouter/inject/RouterInjectKt$routerInjectDebugLog$1;->INSTANCE:Lcom/therouter/inject/RouterInjectKt$routerInjectDebugLog$1;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Lcom/therouter/inject/RouterInjectKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
