.class public final Lio/github/inflationx/viewpump/ViewPump;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/inflationx/viewpump/ViewPump$Builder;
    }
.end annotation


# static fields
.field private static INSTANCE:Lio/github/inflationx/viewpump/ViewPump;


# instance fields
.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomViewCreation:Z

.field private final mInterceptorsWithFallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mReflection:Z


# direct methods
.method private constructor <init>(Lio/github/inflationx/viewpump/ViewPump$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPump$Builder;->access$000(Lio/github/inflationx/viewpump/ViewPump$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/github/inflationx/viewpump/ViewPump;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPump;->interceptors:Ljava/util/List;

    .line 4
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPump$Builder;->access$000(Lio/github/inflationx/viewpump/ViewPump$Builder;)Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v1, Lio/github/inflationx/viewpump/FallbackViewCreationInterceptor;

    invoke-direct {v1}, Lio/github/inflationx/viewpump/FallbackViewCreationInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v0}, Lio/github/inflationx/viewpump/ViewPump;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPump;->mInterceptorsWithFallback:Ljava/util/List;

    .line 7
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPump$Builder;->access$100(Lio/github/inflationx/viewpump/ViewPump$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/inflationx/viewpump/ViewPump;->mReflection:Z

    .line 8
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPump$Builder;->access$200(Lio/github/inflationx/viewpump/ViewPump$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lio/github/inflationx/viewpump/ViewPump;->mCustomViewCreation:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/inflationx/viewpump/ViewPump$Builder;Lio/github/inflationx/viewpump/ViewPump$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/github/inflationx/viewpump/ViewPump;-><init>(Lio/github/inflationx/viewpump/ViewPump$Builder;)V

    return-void
.end method

.method public static builder()Lio/github/inflationx/viewpump/ViewPump$Builder;
    .locals 2

    new-instance v0, Lio/github/inflationx/viewpump/ViewPump$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/inflationx/viewpump/ViewPump$Builder;-><init>(Lio/github/inflationx/viewpump/ViewPump$1;)V

    return-object v0
.end method

.method public static get()Lio/github/inflationx/viewpump/ViewPump;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Lio/github/inflationx/viewpump/ViewPump;->INSTANCE:Lio/github/inflationx/viewpump/ViewPump;

    if-nez v0, :cond_0

    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->builder()Lio/github/inflationx/viewpump/ViewPump$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/inflationx/viewpump/ViewPump$Builder;->build()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    sput-object v0, Lio/github/inflationx/viewpump/ViewPump;->INSTANCE:Lio/github/inflationx/viewpump/ViewPump;

    :cond_0
    sget-object v0, Lio/github/inflationx/viewpump/ViewPump;->INSTANCE:Lio/github/inflationx/viewpump/ViewPump;

    return-object v0
.end method

.method private static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lio/github/inflationx/viewpump/ViewPump;)V
    .locals 0

    sput-object p0, Lio/github/inflationx/viewpump/ViewPump;->INSTANCE:Lio/github/inflationx/viewpump/ViewPump;

    return-void
.end method


# virtual methods
.method public inflate(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;
    .locals 2

    new-instance v0, Lio/github/inflationx/viewpump/InterceptorChain;

    iget-object p0, p0, Lio/github/inflationx/viewpump/ViewPump;->mInterceptorsWithFallback:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/github/inflationx/viewpump/InterceptorChain;-><init>(Ljava/util/List;ILio/github/inflationx/viewpump/InflateRequest;)V

    invoke-interface {v0, p1}, Lio/github/inflationx/viewpump/Interceptor$Chain;->proceed(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object p0

    return-object p0
.end method

.method public interceptors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/github/inflationx/viewpump/ViewPump;->interceptors:Ljava/util/List;

    return-object p0
.end method

.method public isCustomViewCreation()Z
    .locals 0

    iget-boolean p0, p0, Lio/github/inflationx/viewpump/ViewPump;->mCustomViewCreation:Z

    return p0
.end method

.method public isReflection()Z
    .locals 0

    iget-boolean p0, p0, Lio/github/inflationx/viewpump/ViewPump;->mReflection:Z

    return p0
.end method
