.class public Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TKC;

    return-object v0
.end method


# virtual methods
.method public Sj(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 11
    :cond_2
    const-string v1, "scale"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Ym;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Ym;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    return-object v0

    .line 13
    :cond_3
    const-string v1, "translate"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Zq;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Zq;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    return-object v0

    .line 15
    :cond_4
    const-string v1, "ripple"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Dq;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Dq;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    return-object v0

    .line 17
    :cond_5
    const-string v1, "marquee"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Jcg;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Jcg;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    return-object v0

    .line 19
    :cond_6
    const-string v1, "waggle"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/uvD;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/uvD;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    return-object v0

    .line 21
    :cond_7
    const-string v1, "shine"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/aa;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/aa;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    return-object v0

    .line 23
    :cond_8
    const-string v1, "swing"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 24
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/sef;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/sef;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    return-object v0

    .line 25
    :cond_9
    const-string v1, "fade"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 26
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Sj;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Sj;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    return-object v0

    .line 27
    :cond_a
    const-string v1, "rubIn"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 28
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    return-object v0

    .line 29
    :cond_b
    const-string v1, "rotate"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 30
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/uA;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/uA;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    return-object v0

    .line 31
    :cond_c
    const-string v1, "cutIn"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 32
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/vS;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/vS;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    return-object v0

    .line 33
    :cond_d
    const-string v1, "stretch"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 34
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Fmk;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Fmk;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    return-object v0

    .line 35
    :cond_e
    const-string v1, "bounce"

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 36
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    :cond_f
    return-object v0
.end method
