.class Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2;
.super Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateWrapperFactory2"
.end annotation


# instance fields
.field private final mViewCreator:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2ViewCreator;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory2;Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V
    .locals 1

    invoke-direct {p0, p1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$WrapperFactory2;-><init>(Landroid/view/LayoutInflater$Factory2;)V

    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2ViewCreator;

    invoke-direct {v0, p1, p2}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2ViewCreator;-><init>(Landroid/view/LayoutInflater$Factory2;Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;)V

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2;->mViewCreator:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2ViewCreator;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->get()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    invoke-static {}, Lio/github/inflationx/viewpump/InflateRequest;->builder()Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2;->mViewCreator:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater$PrivateWrapperFactory2ViewCreator;

    invoke-virtual {p1, p0}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator(Lio/github/inflationx/viewpump/FallbackViewCreator;)Lio/github/inflationx/viewpump/InflateRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateRequest$Builder;->build()Lio/github/inflationx/viewpump/InflateRequest;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/github/inflationx/viewpump/ViewPump;->inflate(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/InflateResult;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/inflationx/viewpump/InflateResult;->view()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
