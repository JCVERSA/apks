.class Lapp/fast/ssh/AppsFragment$AdapterTask;
.super Landroid/os/AsyncTask;
.source "AppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/AppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lapp/fast/ssh/AppsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lapp/fast/ssh/AppsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lapp/fast/ssh/AppsFragment$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lapp/fast/ssh/AppsFragment;Lapp/fast/ssh/AppsFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lapp/fast/ssh/AppsFragment$AdapterTask;-><init>(Lapp/fast/ssh/AppsFragment;)V

    return-void
.end method

.method static synthetic lambda$doInBackground$0(Lapp/fast/ssh/adapter/AppsAdapter$App;Lapp/fast/ssh/adapter/AppsAdapter$App;)I
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/adapter/AppsAdapter$App;->appName:Ljava/lang/String;

    iget-object p1, p1, Lapp/fast/ssh/adapter/AppsAdapter$App;->appName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lapp/fast/ssh/AppsFragment$AdapterTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/AppsFragment$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/fast/ssh/AppsFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/AppsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/AppsFragment$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/fast/ssh/AppsFragment;

    invoke-virtual {v1}, Lapp/fast/ssh/AppsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, v2, p1}, Lapp/fast/ssh/AppsFragment;->access$100(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lapp/fast/ssh/AppsFragment$AdapterTask$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lapp/fast/ssh/AppsFragment$AdapterTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lapp/fast/ssh/AppsFragment$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/fast/ssh/AppsFragment;

    new-instance v2, Lapp/fast/ssh/adapter/AppsAdapter;

    invoke-direct {v2, v0, p1}, Lapp/fast/ssh/adapter/AppsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1, v2}, Lapp/fast/ssh/AppsFragment;->access$202(Lapp/fast/ssh/AppsFragment;Lapp/fast/ssh/adapter/AppsAdapter;)Lapp/fast/ssh/adapter/AppsAdapter;

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lapp/fast/ssh/AppsFragment$AdapterTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lapp/fast/ssh/AppsFragment$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/fast/ssh/AppsFragment;

    invoke-static {p1}, Lapp/fast/ssh/AppsFragment;->access$300(Lapp/fast/ssh/AppsFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/AppsFragment$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/fast/ssh/AppsFragment;

    invoke-static {p1}, Lapp/fast/ssh/AppsFragment;->access$400(Lapp/fast/ssh/AppsFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lapp/fast/ssh/AppsFragment$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/fast/ssh/AppsFragment;

    invoke-static {v0}, Lapp/fast/ssh/AppsFragment;->access$200(Lapp/fast/ssh/AppsFragment;)Lapp/fast/ssh/adapter/AppsAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lapp/fast/ssh/AppsFragment$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/fast/ssh/AppsFragment;

    invoke-static {p1}, Lapp/fast/ssh/AppsFragment;->access$400(Lapp/fast/ssh/AppsFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method
