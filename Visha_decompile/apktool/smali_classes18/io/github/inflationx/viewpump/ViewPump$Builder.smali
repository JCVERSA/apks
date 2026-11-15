.class public final Lio/github/inflationx/viewpump/ViewPump$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/ViewPump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private customViewCreation:Z

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/inflationx/viewpump/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private reflection:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->interceptors:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->reflection:Z

    .line 5
    iput-boolean v0, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->customViewCreation:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/inflationx/viewpump/ViewPump$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/github/inflationx/viewpump/ViewPump$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lio/github/inflationx/viewpump/ViewPump$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->interceptors:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lio/github/inflationx/viewpump/ViewPump$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->reflection:Z

    return p0
.end method

.method public static synthetic access$200(Lio/github/inflationx/viewpump/ViewPump$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->customViewCreation:Z

    return p0
.end method


# virtual methods
.method public addInterceptor(Lio/github/inflationx/viewpump/Interceptor;)Lio/github/inflationx/viewpump/ViewPump$Builder;
    .locals 1

    iget-object v0, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lio/github/inflationx/viewpump/ViewPump;
    .locals 2

    new-instance v0, Lio/github/inflationx/viewpump/ViewPump;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/github/inflationx/viewpump/ViewPump;-><init>(Lio/github/inflationx/viewpump/ViewPump$Builder;Lio/github/inflationx/viewpump/ViewPump$1;)V

    return-object v0
.end method

.method public setCustomViewInflationEnabled(Z)Lio/github/inflationx/viewpump/ViewPump$Builder;
    .locals 0

    iput-boolean p1, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->customViewCreation:Z

    return-object p0
.end method

.method public setPrivateFactoryInjectionEnabled(Z)Lio/github/inflationx/viewpump/ViewPump$Builder;
    .locals 0

    iput-boolean p1, p0, Lio/github/inflationx/viewpump/ViewPump$Builder;->reflection:Z

    return-object p0
.end method
