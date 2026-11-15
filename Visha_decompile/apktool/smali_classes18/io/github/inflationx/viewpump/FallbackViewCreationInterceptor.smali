.class Lio/github/inflationx/viewpump/FallbackViewCreationInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/github/inflationx/viewpump/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lio/github/inflationx/viewpump/Interceptor$Chain;)Lio/github/inflationx/viewpump/InflateResult;
    .locals 4

    invoke-interface {p1}, Lio/github/inflationx/viewpump/Interceptor$Chain;->request()Lio/github/inflationx/viewpump/InflateRequest;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateRequest;->fallbackViewCreator()Lio/github/inflationx/viewpump/FallbackViewCreator;

    move-result-object p1

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateRequest;->parent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateRequest;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateRequest;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateRequest;->attrs()Landroid/util/AttributeSet;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lio/github/inflationx/viewpump/FallbackViewCreator;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lio/github/inflationx/viewpump/InflateResult;->builder()Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/github/inflationx/viewpump/InflateResult$Builder;->view(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateRequest;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lio/github/inflationx/viewpump/InflateResult$Builder;->name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateRequest;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/github/inflationx/viewpump/InflateResult$Builder;->context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateRequest;->attrs()Landroid/util/AttributeSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/github/inflationx/viewpump/InflateResult$Builder;->attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateResult$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateResult$Builder;->build()Lio/github/inflationx/viewpump/InflateResult;

    move-result-object p0

    return-object p0
.end method
