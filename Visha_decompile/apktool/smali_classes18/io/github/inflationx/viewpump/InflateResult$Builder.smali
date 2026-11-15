.class public final Lio/github/inflationx/viewpump/InflateResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/InflateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private context:Landroid/content/Context;

.field private name:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/inflationx/viewpump/InflateResult$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/github/inflationx/viewpump/InflateResult$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lio/github/inflationx/viewpump/InflateResult;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateResult;->access$600(Lio/github/inflationx/viewpump/InflateResult;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->view:Landroid/view/View;

    .line 6
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateResult;->access$700(Lio/github/inflationx/viewpump/InflateResult;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->name:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateResult;->access$800(Lio/github/inflationx/viewpump/InflateResult;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->context:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lio/github/inflationx/viewpump/InflateResult;->access$900(Lio/github/inflationx/viewpump/InflateResult;)Landroid/util/AttributeSet;

    move-result-object p1

    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->attrs:Landroid/util/AttributeSet;

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/inflationx/viewpump/InflateResult;Lio/github/inflationx/viewpump/InflateResult$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/github/inflationx/viewpump/InflateResult$Builder;-><init>(Lio/github/inflationx/viewpump/InflateResult;)V

    return-void
.end method

.method public static synthetic access$000(Lio/github/inflationx/viewpump/InflateResult$Builder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->view:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lio/github/inflationx/viewpump/InflateResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lio/github/inflationx/viewpump/InflateResult$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lio/github/inflationx/viewpump/InflateResult$Builder;)Landroid/util/AttributeSet;
    .locals 0

    iget-object p0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->attrs:Landroid/util/AttributeSet;

    return-object p0
.end method


# virtual methods
.method public attrs(Landroid/util/AttributeSet;)Lio/github/inflationx/viewpump/InflateResult$Builder;
    .locals 0
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->attrs:Landroid/util/AttributeSet;

    return-object p0
.end method

.method public build()Lio/github/inflationx/viewpump/InflateResult;
    .locals 3

    iget-object v0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->view:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") must be the view\'s fully qualified name ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->view:Landroid/view/View;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lio/github/inflationx/viewpump/InflateResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/github/inflationx/viewpump/InflateResult;-><init>(Lio/github/inflationx/viewpump/InflateResult$Builder;Lio/github/inflationx/viewpump/InflateResult$1;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "context == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "name == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public context(Landroid/content/Context;)Lio/github/inflationx/viewpump/InflateResult$Builder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/github/inflationx/viewpump/InflateResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public view(Landroid/view/View;)Lio/github/inflationx/viewpump/InflateResult$Builder;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lio/github/inflationx/viewpump/InflateResult$Builder;->view:Landroid/view/View;

    return-object p0
.end method
