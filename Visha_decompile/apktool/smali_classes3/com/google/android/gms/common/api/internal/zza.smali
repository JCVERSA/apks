.class public final Lcom/google/android/gms/common/api/internal/zza;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lvk5;


# static fields
.field public static final c:Ljava/util/WeakHashMap;


# instance fields
.field public final b:Lcom/google/android/gms/common/api/internal/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/zza;->c:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/api/internal/u;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zza;->b:Lcom/google/android/gms/common/api/internal/u;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zza;
    .locals 4

    const-string v0, "LifecycleFragmentImpl"

    sget-object v1, Lcom/google/android/gms/common/api/internal/zza;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zza;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zza;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/Fragment;->isRemoving()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v2, Lcom/google/android/gms/common/api/internal/zza;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zza;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zza;->b:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/u;->j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/Class;)Ltk5;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zza;->b:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/u;->a(Ljava/lang/String;Ljava/lang/Class;)Ltk5;

    move-result-object p0

    return-object p0
.end method

.method public final n()Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zza;->b:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/u;->f(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zza;->b:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zza;->b:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->i()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zza;->b:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->e()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zza;->b:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->g(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zza;->b:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->d()V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zza;->b:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->h()V

    return-void
.end method

.method public final p(Ljava/lang/String;Ltk5;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zza;->b:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/u;->b(Ljava/lang/String;Ltk5;)V

    return-void
.end method
