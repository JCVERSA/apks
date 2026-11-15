.class public final Lk5h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Landroid/content/Context;

.field public final c:Lenh;

.field public final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lg8i;Landroid/content/Context;Lenh;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5h;->a:Lg8i;

    iput-object p2, p0, Lk5h;->b:Landroid/content/Context;

    iput-object p3, p0, Lk5h;->c:Lenh;

    iput-object p4, p0, Lk5h;->d:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lk5h;)Ll5h;
    .locals 7

    new-instance v0, Ll5h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lk5h;->d:Landroid/view/View;

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "index_of_child"

    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v2, v3, Landroid/view/View;

    if-eqz v2, :cond_2

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v2, p0, Lk5h;->c:Lenh;

    iget-object p0, p0, Lk5h;->b:Landroid/content/Context;

    iget-object v2, v2, Lenh;->e:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-direct {v0, p0, v2, v1}, Ll5h;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    iget-object v0, p0, Lk5h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcye;->a(Landroid/content/Context;)V

    new-instance v0, Lj5h;

    invoke-direct {v0, p0}, Lj5h;-><init>(Lk5h;)V

    iget-object p0, p0, Lk5h;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
