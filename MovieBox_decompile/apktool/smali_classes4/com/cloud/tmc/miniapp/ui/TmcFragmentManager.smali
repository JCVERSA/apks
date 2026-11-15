.class public final Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager$Companion;

.field private static final KEY_EXIT_PAGE:Ljava/lang/String; = "exitPage"

.field private static final STACK_MAX_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "TmcFragmentManager"


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

.field private firstRemoveFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

.field private fragmentMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutId:I

.field private final tabCacheFragmentManager:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->Companion:Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->layoutId:I

    .line 10
    .line 11
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->activity:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    new-instance p1, Landroid/util/ArrayMap;

    .line 26
    .line 27
    const/4 p2, 0x5

    .line 28
    invoke-direct {p1, p2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/FragmentManager;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->removeFragment$lambda$14(Landroidx/fragment/app/FragmentManager;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final exitPage(Ljava/lang/String;ZZ)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_13

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    const-string v2, "ArrayList<Map.Entry<Stri\u2026terator(fragmentMap.size)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    const-string v3, ""

    move v4, v0

    move-object v5, v2

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-nez v4, :cond_2

    .line 6
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "iterator.previous()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/Map$Entry;

    .line 7
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v6

    move v4, v7

    goto :goto_0

    :cond_1
    move-object v5, v6

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    const-string v1, "isStateSaved is true , cant popBackStack"

    const-string v6, "Tmcintegration"

    const-string v8, "TmcFragmentManager"

    if-lez p1, :cond_c

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/AbstractMap;->size()I

    move-result p3

    .line 13
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    const-string p3, "ArrayList<Map.Entry<Stri\u2026entMap.size\n            )"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz p3, :cond_4

    .line 15
    invoke-virtual {p3}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->hide()V

    .line 16
    :cond_3
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 17
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 18
    :cond_4
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz v5, :cond_5

    .line 19
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p3, "exitPage"

    invoke-interface {p1, p3}, Lcom/cloud/tmc/kernel/node/ValueStore;->getBooleanValue(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v0

    :goto_1
    if-nez p1, :cond_9

    .line 20
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz p1, :cond_9

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3, p1}, Landroidx/fragment/app/w;->y(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroidx/fragment/app/w;->l()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 22
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p3

    if-nez p3, :cond_7

    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_7

    const-string v2, "view"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    .line 24
    :cond_7
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->show()V

    .line 25
    :cond_8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 27
    :goto_3
    const-string p3, "last page resume failed!"

    invoke-static {v8, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :cond_9
    :goto_4
    :try_start_1
    invoke-virtual {p0, v5, p2}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->removeFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z

    .line 29
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result p2

    if-nez p2, :cond_a

    .line 31
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, v7}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->g0()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_6

    .line 33
    :cond_a
    :try_start_2
    invoke-static {v6, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_12

    :catchall_2
    move-exception p1

    goto :goto_7

    :cond_b
    :goto_5
    move v0, v4

    goto/16 :goto_12

    :goto_6
    move v0, v4

    .line 34
    :goto_7
    const-string p2, "remove fragment failed!"

    invoke-static {v8, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 35
    :cond_c
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    if-nez p1, :cond_11

    if-eqz p3, :cond_11

    .line 36
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 37
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 40
    :try_start_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 41
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->L0()Z

    move-result v3

    if-nez v3, :cond_f

    .line 42
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result v3

    if-nez v3, :cond_e

    .line 43
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p2

    goto :goto_9

    :catchall_3
    move-exception p2

    goto :goto_b

    :cond_d
    move-object p2, v2

    :goto_9
    invoke-virtual {p3, p2, v7}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->g0()Z

    goto :goto_a

    .line 45
    :cond_e
    invoke-static {v6, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    .line 46
    :cond_f
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_8

    .line 47
    :goto_b
    const-string p3, "fragment manager error"

    invoke-static {v8, p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 48
    :cond_10
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->release()V

    goto :goto_5

    .line 49
    :cond_11
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 50
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 51
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 54
    :try_start_4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    if-eqz p3, :cond_14

    .line 55
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result v5

    if-nez v5, :cond_13

    .line 56
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p2

    goto :goto_d

    :catchall_4
    move-exception p2

    goto :goto_f

    :cond_12
    move-object p2, v2

    :goto_d
    invoke-virtual {p3, p2, v7}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->g0()Z

    goto :goto_e

    .line 58
    :cond_13
    invoke-static {v6, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    .line 59
    :cond_14
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_c

    .line 60
    :goto_f
    const-string p3, "remove tab fragment failed!"

    invoke-static {v8, p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 61
    :cond_15
    :try_start_5
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result p1

    if-nez p1, :cond_16

    move p1, v7

    goto :goto_10

    :catchall_5
    move-exception p1

    goto :goto_11

    :cond_16
    move p1, v0

    :goto_10
    if-eqz p1, :cond_17

    .line 62
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_b

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, v7}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 63
    :cond_17
    invoke-static {v6, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_12

    .line 64
    :goto_11
    const-string p2, "remove fragment popBackStack failed!"

    invoke-static {v8, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 65
    :goto_12
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->hideAddHomeTips()V

    :cond_18
    :goto_13
    return v0
.end method

.method public static synthetic exitPage$default(Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;Ljava/lang/String;ZZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->exitPage(Ljava/lang/String;ZZ)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private final findFragmentForPage(Ljava/lang/String;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final hideAddHomeTips()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move-object v0, v1

    .line 32
    :goto_0
    instance-of v2, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 38
    .line 39
    :cond_1
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideAddHomeTips()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :goto_1
    const-string v1, "TmcFragmentManager"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_2
    return-void
.end method

.method private final noticeTmcFragmentUpdate(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 2

    .line 1
    const-string v0, "TmcFragmentManager"

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v1, "ArrayList<Map.Entry<Stri\u2026ize\n                    )"

    .line 31
    .line 32
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v1, "iterator.previous()"

    .line 46
    .line 47
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast p1, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_3

    .line 65
    :cond_0
    const/4 p1, 0x0

    .line 66
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 67
    .line 68
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    instance-of v1, p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    invoke-virtual {v1, p1}, Landroidx/fragment/app/w;->y(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    invoke-virtual {v1}, Landroidx/fragment/app/w;->l()V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catchall_1
    move-exception p1

    .line 105
    goto :goto_2

    .line 106
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->show()V

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :goto_2
    :try_start_2
    const-string v1, "notice fragment update failed!"

    .line 123
    .line 124
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :goto_3
    const-string v1, "noticeTmcFragmentUpdate is failed!"

    .line 129
    .line 130
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_4
    return-void
.end method

.method private final pushPage(Ljava/lang/String;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;IZZ)V
    .locals 5

    if-eqz p1, :cond_e

    if-nez p2, :cond_0

    goto/16 :goto_7

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_1

    .line 5
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz p4, :cond_1

    .line 6
    sget p4, Lcom/cloud/tmc/integration/R$anim;->in_from_right:I

    .line 7
    sget v2, Lcom/cloud/tmc/integration/R$anim;->out_from_left:I

    .line 8
    sget v3, Lcom/cloud/tmc/integration/R$anim;->in_from_left:I

    .line 9
    sget v4, Lcom/cloud/tmc/integration/R$anim;->out_from_right:I

    .line 10
    invoke-virtual {v0, p4, v2, v3, v4}, Landroidx/fragment/app/w;->u(IIII)Landroidx/fragment/app/w;

    .line 11
    :cond_1
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz p4, :cond_3

    if-eqz p5, :cond_2

    .line 12
    invoke-virtual {p4}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p5

    if-eqz p5, :cond_3

    invoke-interface {p5}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result p5

    if-ne p5, v1, :cond_3

    .line 13
    :cond_2
    invoke-virtual {v0, p4}, Landroidx/fragment/app/w;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 14
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 15
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 16
    :cond_3
    :try_start_0
    invoke-virtual {v0, p3, p2, p1}, Landroidx/fragment/app/w;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    .line 17
    invoke-virtual {v0, p1}, Landroidx/fragment/app/w;->g(Ljava/lang/String;)Landroidx/fragment/app/w;

    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 19
    const-string p4, "TmcFragmentManager"

    const-string p5, "push fragment failed!"

    invoke-static {p4, p5, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 22
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_d

    .line 23
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    sub-int/2addr p1, p2

    .line 24
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    move-object p4, p3

    .line 25
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_8

    if-eqz p1, :cond_8

    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 28
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isHomePage()Z

    move-result v2

    if-ne v2, v1, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v0

    if-ne v0, v1, :cond_6

    goto :goto_1

    .line 29
    :cond_6
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->firstRemoveFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-nez p4, :cond_7

    .line 30
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->firstRemoveFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 31
    :cond_7
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_8
    if-eqz p4, :cond_9

    .line 33
    invoke-virtual {p4}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    goto :goto_2

    :cond_9
    move-object p1, p3

    :goto_2
    if-eqz p1, :cond_d

    .line 34
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/node/Node;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_3
    const/4 p4, -0x1

    if-ge p4, p2, :cond_d

    .line 35
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p4

    if-eqz p4, :cond_a

    invoke-interface {p4, p2}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p4

    goto :goto_4

    :cond_a
    move-object p4, p3

    :goto_4
    if-eqz p4, :cond_b

    .line 36
    const-string p5, "prePageId"

    invoke-interface {p4, p5}, Lcom/cloud/tmc/kernel/node/ValueStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_5

    :cond_b
    move-object p5, p3

    .line 37
    :goto_5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_c

    if-eqz p4, :cond_d

    .line 38
    const-string p1, "exitPage"

    invoke-interface {p4, p1, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_c
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 39
    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->hideAddHomeTips()V

    :cond_e
    :goto_7
    return-void
.end method

.method private static final removeFragment$lambda$14(Landroidx/fragment/app/FragmentManager;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 2

    .line 1
    const-string v0, "TmcFragmentManager"

    .line 2
    .line 3
    const-string v1, "$fm"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->L0()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "remove fragment after animation"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Landroidx/fragment/app/w;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/w;->j()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    const-string p1, "remove fragment after animation failed"

    .line 33
    .line 34
    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public attachFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    sget p2, Lcom/cloud/tmc/integration/R$anim;->in_from_right:I

    .line 19
    .line 20
    sget v2, Lcom/cloud/tmc/integration/R$anim;->out_from_left:I

    .line 21
    .line 22
    sget v3, Lcom/cloud/tmc/integration/R$anim;->in_from_left:I

    .line 23
    .line 24
    sget v4, Lcom/cloud/tmc/integration/R$anim;->out_from_right:I

    .line 25
    .line 26
    invoke-virtual {v1, p2, v2, v3, v4}, Landroidx/fragment/app/w;->u(IIII)Landroidx/fragment/app/w;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Landroidx/fragment/app/w;->h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/fragment/app/w;->j()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :goto_1
    const-string p2, "TmcFragmentManager"

    .line 41
    .line 42
    const-string v1, "attach fragment error"

    .line 43
    .line 44
    invoke-static {p2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return v0
.end method

.method public declared-synchronized checkInvalidPage()V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->firstRemoveFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_15

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_10

    .line 13
    .line 14
    :cond_0
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :cond_1
    :try_start_1
    const-string v1, "TmcFragmentManager"

    .line 23
    .line 24
    const-string v2, "clear invalid page and remove fragment from fragment manager"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    .line 28
    .line 29
    :try_start_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_14

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->T0()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_14

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto/16 :goto_e

    .line 58
    .line 59
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v3, 0x0

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->g0()Z

    .line 67
    .line 68
    .line 69
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v1, v3

    .line 72
    :goto_1
    if-nez v1, :cond_4

    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :cond_4
    const/4 v1, 0x0

    .line 77
    :try_start_3
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->firstRemoveFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 80
    .line 81
    .line 82
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    if-nez v4, :cond_5

    .line 84
    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :cond_5
    :try_start_4
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/node/Node;->getChildCount()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    sub-int/2addr v5, v2

    .line 92
    move v6, v5

    .line 93
    :goto_2
    const/4 v7, -0x1

    .line 94
    if-ge v7, v6, :cond_8

    .line 95
    .line 96
    invoke-interface {v4, v6}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    if-eqz v8, :cond_6

    .line 105
    .line 106
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    goto :goto_3

    .line 111
    :cond_6
    move-object v8, v1

    .line 112
    :goto_3
    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_7

    .line 117
    .line 118
    move v6, v2

    .line 119
    goto :goto_4

    .line 120
    :cond_7
    add-int/lit8 v6, v6, -0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_8
    move v6, v3

    .line 124
    :goto_4
    if-nez v6, :cond_9

    .line 125
    .line 126
    invoke-direct {p0, v4}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->noticeTmcFragmentUpdate(Lcom/cloud/tmc/integration/structure/App;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    .line 128
    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 131
    :cond_9
    :try_start_5
    new-instance v6, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    :goto_5
    if-ge v7, v5, :cond_f

    .line 137
    .line 138
    invoke-interface {v4, v5}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    if-eqz v8, :cond_a

    .line 143
    .line 144
    const-class v9, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 145
    .line 146
    invoke-interface {v8, v9, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    check-cast v9, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_a
    move-object v9, v1

    .line 154
    :goto_6
    if-nez v9, :cond_b

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_b
    iput-boolean v2, v9, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    .line 158
    .line 159
    :goto_7
    if-eqz v8, :cond_c

    .line 160
    .line 161
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    :cond_c
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    if-eqz v8, :cond_d

    .line 169
    .line 170
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    goto :goto_8

    .line 175
    :cond_d
    move-object v8, v1

    .line 176
    :goto_8
    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-eqz v8, :cond_e

    .line 181
    .line 182
    goto :goto_9

    .line 183
    :cond_e
    add-int/lit8 v5, v5, -0x1

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_f
    :goto_9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_13

    .line 195
    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, Lcom/cloud/tmc/integration/structure/Page;

    .line 201
    .line 202
    invoke-interface {v5, v3}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    instance-of v7, v6, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 210
    .line 211
    if-eqz v7, :cond_10

    .line 212
    .line 213
    check-cast v6, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 214
    .line 215
    goto :goto_b

    .line 216
    :cond_10
    move-object v6, v1

    .line 217
    :goto_b
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    if-eqz v7, :cond_11

    .line 222
    .line 223
    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/App;->isExited()Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-ne v7, v2, :cond_11

    .line 228
    .line 229
    move v7, v2

    .line 230
    goto :goto_c

    .line 231
    :cond_11
    move v7, v3

    .line 232
    :goto_c
    if-nez v7, :cond_12

    .line 233
    .line 234
    const-class v7, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 235
    .line 236
    invoke-interface {v5, v7, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    check-cast v5, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 241
    .line 242
    iget-boolean v5, v5, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    .line 243
    .line 244
    if-nez v5, :cond_12

    .line 245
    .line 246
    move v5, v2

    .line 247
    goto :goto_d

    .line 248
    :cond_12
    move v5, v3

    .line 249
    :goto_d
    invoke-virtual {p0, v6, v5}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->removeFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z

    .line 250
    .line 251
    .line 252
    goto :goto_a

    .line 253
    :cond_13
    invoke-direct {p0, v4}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->noticeTmcFragmentUpdate(Lcom/cloud/tmc/integration/structure/App;)V

    .line 254
    .line 255
    .line 256
    goto :goto_f

    .line 257
    :cond_14
    const-string v0, "Tmcintegration"

    .line 258
    .line 259
    const-string v1, "isStateSaved is true , cant popBackStack"

    .line 260
    .line 261
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 262
    .line 263
    .line 264
    monitor-exit p0

    .line 265
    return-void

    .line 266
    :goto_e
    :try_start_6
    const-string v1, "TmcFragmentManager"

    .line 267
    .line 268
    const-string v2, "checkInvalidPage is failed!"

    .line 269
    .line 270
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 271
    .line 272
    .line 273
    :goto_f
    monitor-exit p0

    .line 274
    return-void

    .line 275
    :catchall_1
    move-exception v0

    .line 276
    goto :goto_11

    .line 277
    :cond_15
    :goto_10
    monitor-exit p0

    .line 278
    return-void

    .line 279
    :goto_11
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 280
    throw v0
.end method

.method public createFragment(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;-><init>()V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/App;->getPageType(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 v0, 0x1

    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    .line 48
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;-><init>()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;-><init>()V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-object p1
.end method

.method public detachFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    sget p2, Lcom/cloud/tmc/integration/R$anim;->in_from_right:I

    .line 19
    .line 20
    sget v2, Lcom/cloud/tmc/integration/R$anim;->out_from_left:I

    .line 21
    .line 22
    sget v3, Lcom/cloud/tmc/integration/R$anim;->in_from_left:I

    .line 23
    .line 24
    sget v4, Lcom/cloud/tmc/integration/R$anim;->out_from_right:I

    .line 25
    .line 26
    invoke-virtual {v1, p2, v2, v3, v4}, Landroidx/fragment/app/w;->u(IIII)Landroidx/fragment/app/w;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Landroidx/fragment/app/w;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/fragment/app/w;->j()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :goto_1
    const-string p2, "TmcFragmentManager"

    .line 41
    .line 42
    const-string v1, "detach fragment error"

    .line 43
    .line 44
    invoke-static {p2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return v0
.end method

.method public exitPage(Lcom/cloud/tmc/integration/structure/Page;ZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->exitPage(Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public exitTabCachePage(Lcom/cloud/tmc/integration/structure/Page;Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_7

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    return v1

    .line 40
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_4
    const/4 v2, 0x1

    .line 51
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->removeFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z

    .line 52
    .line 53
    .line 54
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-eqz p2, :cond_6

    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->L0()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_6

    .line 66
    .line 67
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->T0()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_5

    .line 72
    .line 73
    invoke-virtual {p2, v0, v2}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->g0()Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p2

    .line 81
    move v1, p1

    .line 82
    goto :goto_2

    .line 83
    :cond_5
    const-string p2, "Tmcintegration"

    .line 84
    .line 85
    const-string v0, "isStateSaved is true , cant popBackStack"

    .line 86
    .line 87
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    :goto_1
    move v1, p1

    .line 92
    goto :goto_3

    .line 93
    :catchall_1
    move-exception p2

    .line 94
    move v1, v2

    .line 95
    :goto_2
    const-string p1, "TmcFragmentManager"

    .line 96
    .line 97
    const-string v0, "fragment manager error"

    .line 98
    .line 99
    invoke-static {p1, v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :cond_7
    :goto_3
    return v1
.end method

.method public findFragmentForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->findFragmentForPage(Ljava/lang/String;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    move-result-object p1

    return-object p1
.end method

.method public findFragmentPreForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :cond_0
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-object v3
.end method

.method public findHeaderFragment()Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public findTabFragmentByPath(Ljava/lang/String;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public final getActivity()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->activity:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFragmentSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getFragments()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "fragmentMap.values"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getInnerManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->activity:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public getReadyFragment()Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public isRootFragment(Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->findFragmentForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getFragmentSize()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public moveTabPageToCache(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "tabPages"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    instance-of v2, p1, Ljava/util/Collection;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/cloud/tmc/integration/structure/Page;

    .line 54
    .line 55
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/4 v3, 0x0

    .line 89
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->activity:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->r0()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "ArrayList<Map.Entry<Stri\u2026ap.size\n                )"

    .line 53
    .line 54
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ljava/util/Map$Entry;

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->T0()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_2

    .line 97
    .line 98
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->g1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    const-string v1, "TmcFragmentManager"

    .line 108
    .line 109
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    const/4 v1, 0x1

    .line 113
    :cond_2
    :goto_1
    return v1
.end method

.method public pushPage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;IZZ)V
    .locals 7

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setPage(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->pushPage(Ljava/lang/String;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;IZZ)V

    return-void
.end method

.method public pushPage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;ZZ)V
    .locals 7

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v4, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->layoutId:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->pushPage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;IZZ)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->activity:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 18
    .line 19
    return-void
.end method

.method public removeFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz p2, :cond_4

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    int-to-float p2, p2

    .line 33
    neg-float p2, p2

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    int-to-float p2, p2

    .line 42
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-wide/16 v4, 0x12c

    .line 51
    .line 52
    invoke-virtual {p2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    new-instance v2, Lcom/cloud/tmc/miniapp/ui/q1;

    .line 57
    .line 58
    invoke-direct {v2, v1, p1}, Lcom/cloud/tmc/miniapp/ui/q1;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    return v3

    .line 69
    :goto_1
    const-string p2, "TmcFragmentManager"

    .line 70
    .line 71
    const-string v1, "remove fragment with animation error"

    .line 72
    .line 73
    invoke-static {p2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    return v0

    .line 77
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p2, p1}, Landroidx/fragment/app/w;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroidx/fragment/app/w;->j()I

    .line 86
    .line 87
    .line 88
    return v3
.end method

.method public resetFragmentToTop(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 7

    .line 1
    const-string v0, "Tmcintegration"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "resetFragment can not null"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "ArrayList<Map.Entry<Stri\u2026terator(fragmentMap.size)"

    .line 38
    .line 39
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    move v4, v3

    .line 44
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_4

    .line 49
    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "iterator.previous()"

    .line 57
    .line 58
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v5, Ljava/util/Map$Entry;

    .line 62
    .line 63
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->T0()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_2

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v4, v5, v3}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 101
    .line 102
    const/4 v4, 0x1

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    const-string p1, "isStateSaved is true , cant popBackStack"

    .line 105
    .line 106
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    if-eqz v4, :cond_5

    .line 119
    .line 120
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/String;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 137
    .line 138
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    const-string p1, "reset fragment is not exist"

    .line 143
    .line 144
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_6
    return-void
.end method

.method public switchTab(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 2

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroidx/fragment/app/w;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/fragment/app/w;->y(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/fragment/app/w;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    const-string v0, "TmcFragmentManager"

    .line 71
    .line 72
    const-string v1, "switch tab fragment failed!"

    .line 73
    .line 74
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 85
    .line 86
    .line 87
    :cond_3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 88
    .line 89
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    :goto_3
    return-void

    .line 97
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->hideAddHomeTips()V

    .line 98
    .line 99
    .line 100
    return-void
.end method
