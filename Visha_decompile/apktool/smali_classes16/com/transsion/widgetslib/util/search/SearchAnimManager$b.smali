.class public Lcom/transsion/widgetslib/util/search/SearchAnimManager$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/util/search/SearchAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$b;->b(Lcom/transsion/widgetslib/widget/SearchBar;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lolb;->T0(Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz p0, :cond_0

    new-instance v0, Ll39;

    invoke-direct {v0, p0}, Ll39;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$b;->c()V

    :cond_0
    return-void
.end method
