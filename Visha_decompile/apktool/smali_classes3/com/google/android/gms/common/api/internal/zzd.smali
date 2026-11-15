.class public final Lcom/google/android/gms/common/api/internal/zzd;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lvk5;


# static fields
.field public static final m:Ljava/util/WeakHashMap;


# instance fields
.field public final l:Lcom/google/android/gms/common/api/internal/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/zzd;->m:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/api/internal/u;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->l:Lcom/google/android/gms/common/api/internal/u;

    return-void
.end method

.method public static u(Landroidx/fragment/app/FragmentActivity;)Lcom/google/android/gms/common/api/internal/zzd;
    .locals 5

    const-string v0, "SLifecycleFragmentImpl"

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/common/api/internal/zzd;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zzd;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zzd;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    new-instance v3, Lcom/google/android/gms/common/api/internal/zzd;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zzd;-><init>()V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment with tag SLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzd;->l:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/u;->j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/Class;)Ltk5;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzd;->l:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/u;->a(Ljava/lang/String;Ljava/lang/Class;)Ltk5;

    move-result-object p0

    return-object p0
.end method

.method public final n()Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzd;->l:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/u;->f(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzd;->l:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzd;->l:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->i()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzd;->l:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->e()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzd;->l:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->g(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzd;->l:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->d()V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzd;->l:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->h()V

    return-void
.end method

.method public final p(Ljava/lang/String;Ltk5;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzd;->l:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/u;->b(Ljava/lang/String;Ltk5;)V

    return-void
.end method
