.class public Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/grandcentrix/tray/provider/ContentProviderStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrayContentObserver"
.end annotation


# instance fields
.field public final synthetic a:Lnet/grandcentrix/tray/provider/ContentProviderStorage;


# direct methods
.method public constructor <init>(Lnet/grandcentrix/tray/provider/ContentProviderStorage;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->a:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->a:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-static {p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->c(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Lnet/grandcentrix/tray/provider/b;

    move-result-object p1

    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/b;->d()Lnet/grandcentrix/tray/provider/b$a;

    move-result-object p1

    iget-object p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->a:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-virtual {p2}, Lnet/grandcentrix/tray/core/TrayStorage;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/grandcentrix/tray/provider/b$a;->d(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/b$a;->a()Landroid/net/Uri;

    move-result-object p2

    .line 3
    :cond_0
    iget-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->a:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-static {p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->d(Lnet/grandcentrix/tray/provider/ContentProviderStorage;)Lnet/grandcentrix/tray/provider/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/grandcentrix/tray/provider/a;->e(Landroid/net/Uri;)Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->a:Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    iget-object v0, v0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->c:Ljava/util/WeakHashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lubc;->a(Ljava/lang/Object;)V

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v1, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;-><init>(Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;Lpf7;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
