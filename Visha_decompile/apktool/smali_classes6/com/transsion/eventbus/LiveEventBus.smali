.class public Lcom/transsion/eventbus/LiveEventBus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/eventbus/LiveEventBus$a;,
        Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;,
        Lcom/transsion/eventbus/LiveEventBus$b;
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/eventbus/LiveEventBus;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Len5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/eventbus/LiveEventBus;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/eventbus/LiveEventBus;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Lcom/transsion/eventbus/LiveEventBus;
    .locals 1

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus$a;->a()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sput-object p1, Lcom/transsion/eventbus/LiveEventBus;->b:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;
    .locals 2

    iget-object v0, p0, Lcom/transsion/eventbus/LiveEventBus;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/transsion/eventbus/LiveEventBus;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/eventbus/LiveEventBus;->a:Ljava/util/WeakHashMap;

    new-instance v1, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    invoke-direct {v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/transsion/eventbus/LiveEventBus;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    return-object p0
.end method
