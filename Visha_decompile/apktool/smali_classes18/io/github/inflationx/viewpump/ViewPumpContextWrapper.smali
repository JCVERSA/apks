.class public final Lio/github/inflationx/viewpump/ViewPumpContextWrapper;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field private mInflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static get(Landroid/app/Activity;)Lio/github/inflationx/viewpump/ViewPumpActivityFactory;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    instance-of v0, v0, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    check-cast p0, Lio/github/inflationx/viewpump/ViewPumpActivityFactory;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This activity does not wrap the Base Context! See ViewPumpContextWrapper.wrap(Context)"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onActivityCreateView(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->get(Landroid/app/Activity;)Lio/github/inflationx/viewpump/ViewPumpActivityFactory;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/github/inflationx/viewpump/ViewPumpActivityFactory;->onActivityCreateView(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;

    invoke-direct {v0, p0}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->mInflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    if-nez p1, :cond_0

    new-instance p1, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Z)V

    iput-object p1, p0, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->mInflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    :cond_0
    iget-object p0, p0, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->mInflater:Lio/github/inflationx/viewpump/ViewPumpLayoutInflater;

    return-object p0

    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
