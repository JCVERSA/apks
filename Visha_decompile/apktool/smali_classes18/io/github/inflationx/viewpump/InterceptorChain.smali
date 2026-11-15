.class Lio/github/inflationx/viewpump/InterceptorChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/github/inflationx/viewpump/Interceptor$Chain;


# instance fields
.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lio/github/inflationx/viewpump/InflateRequest;


# direct methods
.method public constructor <init>(Ljava/util/List;ILio/github/inflationx/viewpump/InflateRequest;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/github/inflationx/viewpump/InflateRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;I",
            "Lio/github/inflationx/viewpump/InflateRequest;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/inflationx/viewpump/InterceptorChain;->interceptors:Ljava/util/List;

    iput p2, p0, Lio/github/inflationx/viewpump/InterceptorChain;->index:I

    iput-object p3, p0, Lio/github/inflationx/viewpump/InterceptorChain;->request:Lio/github/inflationx/viewpump/InflateRequest;

    return-void
.end method


# virtual methods
.method public proceed(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;
    .locals 3
    .param p1    # Lio/github/inflationx/viewpump/InflateRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lio/github/inflationx/viewpump/InterceptorChain;->index:I

    iget-object v1, p0, Lio/github/inflationx/viewpump/InterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v0, Lio/github/inflationx/viewpump/InterceptorChain;

    iget-object v1, p0, Lio/github/inflationx/viewpump/InterceptorChain;->interceptors:Ljava/util/List;

    iget v2, p0, Lio/github/inflationx/viewpump/InterceptorChain;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lio/github/inflationx/viewpump/InterceptorChain;-><init>(Ljava/util/List;ILio/github/inflationx/viewpump/InflateRequest;)V

    iget-object p1, p0, Lio/github/inflationx/viewpump/InterceptorChain;->interceptors:Ljava/util/List;

    iget p0, p0, Lio/github/inflationx/viewpump/InterceptorChain;->index:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/inflationx/viewpump/Interceptor;

    invoke-interface {p0, v0}, Lio/github/inflationx/viewpump/Interceptor;->intercept(Lio/github/inflationx/viewpump/Interceptor$Chain;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " returned null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "no interceptors added to the chain"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public request()Lio/github/inflationx/viewpump/InflateRequest;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/github/inflationx/viewpump/InterceptorChain;->request:Lio/github/inflationx/viewpump/InflateRequest;

    return-object p0
.end method
