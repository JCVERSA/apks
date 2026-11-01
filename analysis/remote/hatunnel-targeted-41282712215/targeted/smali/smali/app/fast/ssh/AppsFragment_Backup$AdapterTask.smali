.class Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;
.super Landroid/os/AsyncTask;
.source "AppsFragment_Backup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/AppsFragment_Backup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
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
            "Lapp/fast/ssh/AppsFragment_Backup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lapp/fast/ssh/AppsFragment_Backup;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
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

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const-string/jumbo p1, "\u2df8"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/fast/ssh/AppsFragment_Backup;

    invoke-virtual {v1}, Lapp/fast/ssh/AppsFragment_Backup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "\u2df9"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "\u2dfa"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v4, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v1}, Lapp/fast/ssh/util/ApkInfoExtractor;->getAppIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p1, v1}, Lapp/fast/ssh/util/ApkInfoExtractor;->getAppName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lapp/fast/ssh/adapter/AppsAdapter$App;

    invoke-direct {v8, v6, v7, p1}, Lapp/fast/ssh/adapter/AppsAdapter$App;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_1
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :try_start_1
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "\u2dfb"

    invoke-static {v7}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v4, :cond_0

    invoke-static {v2, v1}, Lapp/fast/ssh/util/ApkInfoExtractor;->getAppIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v2, v1}, Lapp/fast/ssh/util/ApkInfoExtractor;->getAppName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lapp/fast/ssh/adapter/AppsAdapter$App;

    invoke-direct {v8, v6, v7, v2}, Lapp/fast/ssh/adapter/AppsAdapter$App;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_1
    new-instance p1, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask$1;

    invoke-direct {p1, p0}, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask$1;-><init>(Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/fast/ssh/AppsFragment_Backup;

    new-instance v2, Lapp/fast/ssh/adapter/AppsAdapter;

    invoke-direct {v2, v1, v0}, Lapp/fast/ssh/adapter/AppsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {p1, v2}, Lapp/fast/ssh/AppsFragment_Backup;->access$002(Lapp/fast/ssh/AppsFragment_Backup;Lapp/fast/ssh/adapter/AppsAdapter;)Lapp/fast/ssh/adapter/AppsAdapter;

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

    invoke-virtual {p0, p1}, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/fast/ssh/AppsFragment_Backup;

    invoke-static {p1}, Lapp/fast/ssh/AppsFragment_Backup;->access$100(Lapp/fast/ssh/AppsFragment_Backup;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/fast/ssh/AppsFragment_Backup;

    invoke-static {p1}, Lapp/fast/ssh/AppsFragment_Backup;->access$200(Lapp/fast/ssh/AppsFragment_Backup;)Lcom/google/android/material/switchmaterial/SwitchMaterial;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setEnabled(Z)V

    iget-object p1, p0, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/fast/ssh/AppsFragment_Backup;

    invoke-static {p1}, Lapp/fast/ssh/AppsFragment_Backup;->access$300(Lapp/fast/ssh/AppsFragment_Backup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/fast/ssh/AppsFragment_Backup;

    invoke-static {v0}, Lapp/fast/ssh/AppsFragment_Backup;->access$000(Lapp/fast/ssh/AppsFragment_Backup;)Lapp/fast/ssh/adapter/AppsAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/fast/ssh/AppsFragment_Backup;

    invoke-static {p1}, Lapp/fast/ssh/AppsFragment_Backup;->access$300(Lapp/fast/ssh/AppsFragment_Backup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method
