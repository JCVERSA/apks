.class Lcom/transsion/widgetslib/util/search/SearchAnimManager$ShowSoftInputRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/util/search/SearchAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowSoftInputRunnable"
.end annotation


# instance fields
.field private final mHostViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/SearchBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 1
    .param p1    # Lcom/transsion/widgetslib/widget/SearchBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$ShowSoftInputRunnable;->mHostViewWR:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$ShowSoftInputRunnable;->mHostViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lolb;->T0(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method
