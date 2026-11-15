.class public Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;->a:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;->b(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;->a:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    invoke-static {v0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->b(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;)Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;->a:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    invoke-static {p0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->b(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;)Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-eqz p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;->a:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    invoke-static {p0, p2}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->c(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onChange(ZLjava/util/Collection;I)V
    .locals 0

    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 4
    iget-object p3, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;->a:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    invoke-static {p3, p2}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->c(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;Landroid/net/Uri;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;->a:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    invoke-static {p1}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->d(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->f(Ljava/util/ArrayList;)V

    .line 7
    iget-object p2, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;->a:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    invoke-static {p2}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->a(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    new-instance p2, Lct;

    invoke-direct {p2, p0, p1}, Lct;-><init>(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;Ljava/util/ArrayList;)V

    invoke-static {p2}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
