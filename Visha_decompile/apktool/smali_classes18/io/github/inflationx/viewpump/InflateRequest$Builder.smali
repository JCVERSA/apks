.class public final Lio/github/inflationx/viewpump/InflateRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/InflateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private context:Landroid/content/Context;

.field private fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

.field private name:Ljava/lang/String;

.field private parent:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/inflationx/viewpump/InflateRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/github/inflationx/viewpump/InflateRequest$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lio/github/inflationx/viewpump/InflateRequest;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateRequest;->access$700(Lio/github/inflationx/viewpump/InflateRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateRequest;->access$800(Lio/github/inflationx/viewpump/InflateRequest;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateRequest;->access$900(Lio/github/inflationx/viewpump/InflateRequest;)Landroid/util/AttributeSet;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs:Landroid/util/AttributeSet;

    .line 8
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateRequest;->access$1000(Lio/github/inflationx/viewpump/InflateRequest;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent:Landroid/view/View;

    .line 9
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateRequest;->access$1100(Lio/github/inflationx/viewpump/InflateRequest;)Lio/github/inflationx/viewpump/FallbackViewCreator;

    move-result-object p1

    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/inflationx/viewpump/InflateRequest;Lio/github/inflationx/viewpump/InflateRequest$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/github/inflationx/viewpump/InflateRequest$Builder;-><init>(Lio/github/inflationx/viewpump/InflateRequest;)V

    return-void
.end method

.method public static synthetic access$000(Lio/github/inflationx/viewpump/InflateRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lio/github/inflationx/viewpump/InflateRequest$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lio/github/inflationx/viewpump/InflateRequest$Builder;)Landroid/util/AttributeSet;
    .locals 0

    iget-object p0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs:Landroid/util/AttributeSet;

    return-object p0
.end method

.method public static synthetic access$300(Lio/github/inflationx/viewpump/InflateRequest$Builder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lio/github/inflationx/viewpump/InflateRequest$Builder;)Lio/github/inflationx/viewpump/FallbackViewCreator;
    .locals 0

    iget-object p0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    return-object p0
.end method


# virtual methods
.method public attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 0
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->attrs:Landroid/util/AttributeSet;

    return-object p0
.end method

.method public build()Lio/github/inflationx/viewpump/InflateRequest;
    .locals 2

    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    if-eqz v0, :cond_0

    new-instance v0, Lio/github/inflationx/viewpump/InflateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/github/inflationx/viewpump/InflateRequest;-><init>(Lio/github/inflationx/viewpump/InflateRequest$Builder;Lio/github/inflationx/viewpump/InflateRequest$1;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "fallbackViewCreator == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "context == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "name == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public fallbackViewCreator(Lio/github/inflationx/viewpump/FallbackViewCreator;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 0
    .param p1    # Lio/github/inflationx/viewpump/FallbackViewCreator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->fallbackViewCreator:Lio/github/inflationx/viewpump/FallbackViewCreator;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public parent(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateRequest$Builder;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateRequest$Builder;->parent:Landroid/view/View;

    return-object p0
.end method
