.class public Lcom/mgtv/data/aphone/core/g/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "b"


# instance fields
.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/data/aphone/core/g/b;Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mgtv/data/aphone/core/g/b;->e(Ljava/util/HashMap;Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    if-eqz p1, :cond_8

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    sget-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Player ##################### act = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ##################### params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "big_data_sdk"

    invoke-static {v3, v2}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    sget-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->PV:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    invoke-virtual {v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mgtv/data/aphone/core/g/b$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/mgtv/data/aphone/core/g/b$1;-><init>(Lcom/mgtv/data/aphone/core/g/b;Landroid/content/Context;Ljava/util/HashMap;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_2
    sget-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->VV:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    invoke-virtual {v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0xc8

    if-eqz v2, :cond_3

    .line 9
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mgtv/data/aphone/core/g/b$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/mgtv/data/aphone/core/g/b$2;-><init>(Lcom/mgtv/data/aphone/core/g/b;Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/mgtv/data/aphone/core/g/b;->b(Ljava/util/HashMap;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 11
    :cond_3
    sget-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->ERR:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    invoke-virtual {v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    new-instance v1, Lcom/mgtv/data/aphone/core/c/f;

    invoke-direct {v1}, Lcom/mgtv/data/aphone/core/c/f;-><init>()V

    .line 13
    invoke-virtual {v1, p2, p1}, Lcom/mgtv/data/aphone/core/c/f;->c(Landroid/content/Context;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 14
    :cond_4
    sget-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->END:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    invoke-virtual {v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    new-instance v1, Lcom/mgtv/data/aphone/core/c/f;

    invoke-direct {v1}, Lcom/mgtv/data/aphone/core/c/f;-><init>()V

    .line 16
    invoke-virtual {v1, p2, p1}, Lcom/mgtv/data/aphone/core/c/f;->d(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 17
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mgtv/data/aphone/core/g/b$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/mgtv/data/aphone/core/g/b$3;-><init>(Lcom/mgtv/data/aphone/core/g/b;Ljava/util/HashMap;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 18
    :cond_5
    sget-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->BUFFER:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    invoke-virtual {v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mgtv/data/aphone/core/g/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/mgtv/data/aphone/core/g/b;->a(Ljava/util/HashMap;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 20
    :cond_6
    sget-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->SEEK:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    invoke-virtual {v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_0

    .line 21
    :cond_7
    sget-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->HEARTBEAT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;

    invoke-virtual {v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerAct;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/mgtv/data/aphone/core/g/b;->d(Ljava/util/HashMap;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private a(Ljava/util/HashMap;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_5

    .line 23
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    sget-object v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->VIDEO_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "1"

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 27
    sget-object v5, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerBufferParams;->BUFFER_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerBufferParams;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 28
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#############################>>>>>>>>>>>>> buffer ##################### buffer_type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  vtp: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "big_data_sdk"

    invoke-static {v3, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->ON_DEMAND:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    new-instance v0, Lcom/mgtv/data/aphone/core/c/f;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/c/f;-><init>()V

    .line 33
    invoke-virtual {v0, p2, p1, p3}, Lcom/mgtv/data/aphone/core/c/f;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 34
    iget p1, p0, Lcom/mgtv/data/aphone/core/g/b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mgtv/data/aphone/core/g/b;->c:I

    :cond_5
    return-void
.end method

.method private b(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 6

    const-string p0, ""

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->VIDEO_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->VIDEO_SESSION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#############################>>>>>>>>>>>>> vv ##################### vtp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  video_session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "big_data_sdk"

    invoke-static {v2, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_1

    :cond_4
    move-object v0, p0

    :goto_1
    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->ON_DEMAND:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/mgtv/data/aphone/core/e/f;->a()Lcom/mgtv/data/aphone/core/e/f;

    move-result-object p0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/e/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    new-instance p0, Lcom/mgtv/data/aphone/core/c/f;

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/c/f;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/c/f;->e(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-static {}, Lcom/mgtv/data/aphone/core/e/f;->a()Lcom/mgtv/data/aphone/core/e/f;

    move-result-object p0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/e/f;->a:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method private c(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DRM #####################  act = drm ##################### params: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "big_data_sdk"

    invoke-static {v0, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/mgtv/data/aphone/core/c/e;

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/c/e;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/c/e;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method private d(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 6

    const-string v0, ""

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->VIDEO_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->VIDEO_SESSION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    move-object v2, v1

    :goto_1
    sget-object v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->ON_DEMAND:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    invoke-virtual {v3}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/mgtv/data/aphone/core/e/f;->a()Lcom/mgtv/data/aphone/core/e/f;

    move-result-object v3

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/e/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/mgtv/data/aphone/core/g/b;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mgtv/data/aphone/core/g/b;->b:I

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#############################>>>>>>>>>>>>> hb ##################### vtp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  video_session:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   hb_number: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgtv/data/aphone/core/g/b;->b:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "big_data_sdk"

    invoke-static {v2, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/mgtv/data/aphone/core/g/b;->b:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_6

    new-instance v1, Lcom/mgtv/data/aphone/core/c/f;

    invoke-direct {v1}, Lcom/mgtv/data/aphone/core/c/f;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "3"

    invoke-virtual {v1, p2, p1, v2, v0}, Lcom/mgtv/data/aphone/core/c/f;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    goto :goto_2

    :cond_6
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_7

    new-instance v1, Lcom/mgtv/data/aphone/core/c/f;

    invoke-direct {v1}, Lcom/mgtv/data/aphone/core/c/f;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "4"

    invoke-virtual {v1, p2, p1, v2, v0}, Lcom/mgtv/data/aphone/core/c/f;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    goto :goto_2

    :cond_7
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_8

    new-instance v1, Lcom/mgtv/data/aphone/core/c/f;

    invoke-direct {v1}, Lcom/mgtv/data/aphone/core/c/f;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "5"

    invoke-virtual {v1, p2, p1, v2, v0}, Lcom/mgtv/data/aphone/core/c/f;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    goto :goto_2

    :cond_8
    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x78

    if-nez v1, :cond_9

    new-instance v1, Lcom/mgtv/data/aphone/core/c/f;

    invoke-direct {v1}, Lcom/mgtv/data/aphone/core/c/f;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "6"

    invoke-virtual {v1, p2, p1, v2, v0}, Lcom/mgtv/data/aphone/core/c/f;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    :cond_9
    :goto_2
    return-void
.end method

.method private e(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 7

    const-string v0, ""

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->VIDEO_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->VIDEO_SESSION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    sget-object v5, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->RESOLUTION_CHANGE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v3, v0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#############################>>>>>>>>>>>>> endhb ##################### vtp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  video_session:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "big_data_sdk"

    invoke-static {v5, v4}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_3
    sget-object v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->ON_DEMAND:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;

    invoke-virtual {v4}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVideoType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/mgtv/data/aphone/core/e/f;->a()Lcom/mgtv/data/aphone/core/e/f;

    move-result-object v1

    iget-object v1, v1, Lcom/mgtv/data/aphone/core/e/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/mgtv/data/aphone/core/c/f;

    invoke-direct {v1}, Lcom/mgtv/data/aphone/core/c/f;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "2"

    invoke-virtual {v1, p2, p1, v3, v0}, Lcom/mgtv/data/aphone/core/c/f;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    invoke-static {}, Lcom/mgtv/data/aphone/core/e/f;->a()Lcom/mgtv/data/aphone/core/e/f;

    move-result-object p1

    iput-object v2, p1, Lcom/mgtv/data/aphone/core/e/f;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/mgtv/data/aphone/core/g/b;->b:I

    iput p1, p0, Lcom/mgtv/data/aphone/core/g/b;->c:I

    iput p1, p0, Lcom/mgtv/data/aphone/core/g/b;->d:I

    :cond_7
    return-void
.end method

.method private f(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SO Crash #####################  act = crash ##################### params: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "big_data_sdk"

    invoke-static {v0, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/mgtv/data/aphone/core/c/g;

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/c/g;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/c/g;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method private g(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Click #####################  act = click ##################### params: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "big_data_sdk"

    invoke-static {v0, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/mgtv/data/aphone/core/c/d;

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/c/d;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/c/d;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mgtv.player.action.PLAYER_REPORT_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "EXTRA_REPORT_PARAMS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-direct {p0, p2, p1}, Lcom/mgtv/data/aphone/core/g/b;->a(Ljava/util/HashMap;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.mgtv.bigdata.action.DRM_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "EVENT_DRM_PARAMS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-direct {p0, p2, p1}, Lcom/mgtv/data/aphone/core/g/b;->c(Ljava/util/HashMap;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v1, "com.mgtv.bigdata.action.SO_CRASH_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "EVENT_SO_CRASH_PARAMS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-direct {p0, p2, p1}, Lcom/mgtv/data/aphone/core/g/b;->f(Ljava/util/HashMap;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.mgtv.bigdata.action.CLICK_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "EVENT_CLICK_PARAMS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-direct {p0, p2, p1}, Lcom/mgtv/data/aphone/core/g/b;->g(Ljava/util/HashMap;Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method
