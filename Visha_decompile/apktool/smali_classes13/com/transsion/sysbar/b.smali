.class public final Lcom/transsion/sysbar/b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sysbar/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Landroid/app/Application;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/sysbar/b;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lr53;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/sysbar/b;-><init>()V

    return-void
.end method

.method public static b()Lcom/transsion/sysbar/b;
    .locals 1

    invoke-static {}, Lcom/transsion/sysbar/b$a;->a()Lcom/transsion/sysbar/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/transsion/sysbar/ImmersionCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/sysbar/b;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sysbar/b;->a:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/transsion/sysbar/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/transsion/sysbar/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public c(Landroid/app/Application;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/sysbar/b;->b:Landroid/app/Application;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sysbar/b;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "navigationbar_is_min"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/sysbar/b;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/transsion/sysbar/b;->c:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public d(Lcom/transsion/sysbar/ImmersionCallback;)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/sysbar/b;->a:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onChange(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/transsion/sysbar/b;->b:Landroid/app/Application;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/sysbar/b;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/sysbar/b;->b:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "navigationbar_is_min"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    sget-object v0, Lcom/transsion/sysbar/NavigationBarType;->CLASSIC:Lcom/transsion/sysbar/NavigationBarType;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    sget-object v0, Lcom/transsion/sysbar/NavigationBarType;->GESTURES:Lcom/transsion/sysbar/NavigationBarType;

    :cond_0
    iget-object p0, p0, Lcom/transsion/sysbar/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/sysbar/ImmersionCallback;

    if-nez p1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-interface {v3, v4, v0}, Lcom/transsion/sysbar/ImmersionCallback;->onNavigationBarChange(ZLcom/transsion/sysbar/NavigationBarType;)V

    goto :goto_0

    :cond_2
    return-void
.end method
