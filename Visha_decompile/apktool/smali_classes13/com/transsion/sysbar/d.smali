.class public final Lcom/transsion/sysbar/d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sysbar/d$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Landroid/app/Application;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/transsion/sysbar/d;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lxy6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/sysbar/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/transsion/sysbar/d;
    .locals 1

    invoke-static {}, Lcom/transsion/sysbar/d$a;->a()Lcom/transsion/sysbar/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnNavigationBarListener(Lff7;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/sysbar/d;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sysbar/d;->a:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/transsion/sysbar/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/transsion/sysbar/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public b(Landroid/app/Application;)V
    .locals 5

    iput-object p1, p0, Lcom/transsion/sysbar/d;->b:Landroid/app/Application;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/transsion/sysbar/d;->c:Z

    if-nez p1, :cond_d

    invoke-static {}, Lsb7;->n()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_9

    invoke-static {}, Lsb7;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lsb7;->v()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lsb7;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {}, Lsb7;->u()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lsb7;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lsb7;->s()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lsb7;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lsb7;->t()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/sysbar/d;->b:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "navigationbar_hide_bar_enabled"

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_4

    const-string p1, "navigation_bar_gesture_while_hidden"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "navigation_bar_gesture_detail_type"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_hint"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5

    :cond_4
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string p1, "navigation_mode"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v1, v0

    goto :goto_5

    :cond_6
    :goto_1
    const-string p1, "hide_navigationbar_enable"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_7
    :goto_2
    const-string p1, "navigation_gesture_on"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_8
    :goto_3
    const-string p1, "force_fsg_nav_bar"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "hide_gesture_line"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5

    :cond_9
    :goto_4
    invoke-static {}, Lsb7;->j()Z

    move-result p1

    const-string v1, "navigationbar_is_min"

    if-nez p1, :cond_a

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_a
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :goto_5
    const/4 v2, 0x1

    if-eqz p1, :cond_b

    iget-object v3, p0, Lcom/transsion/sysbar/d;->b:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v2, p0, Lcom/transsion/sysbar/d;->c:Z

    :cond_b
    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/transsion/sysbar/d;->b:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_c
    if-eqz v1, :cond_d

    iget-object p1, p0, Lcom/transsion/sysbar/d;->b:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_d
    return-void
.end method

.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/transsion/sysbar/d;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/sysbar/d;->b:Landroid/app/Application;

    invoke-static {p1}, Lcom/transsion/sysbar/c;->a(Landroid/content/Context;)Lcom/transsion/sysbar/c$a;

    move-result-object p1

    iget-boolean v0, p1, Lcom/transsion/sysbar/c$a;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/transsion/sysbar/c$a;->b:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sysbar/d;->b:Landroid/app/Application;

    invoke-static {v0}, Lcom/transsion/sysbar/a;->f(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/sysbar/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lff7;

    iget-object v2, p1, Lcom/transsion/sysbar/c$a;->c:Lcom/transsion/sysbar/NavigationBarType;

    invoke-interface {v0, v1, v2}, Lff7;->onNavigationBarChange(ZLcom/transsion/sysbar/NavigationBarType;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeOnNavigationBarListener(Lff7;)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/sysbar/d;->a:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
