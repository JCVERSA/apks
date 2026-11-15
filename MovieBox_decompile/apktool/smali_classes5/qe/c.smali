.class public Lqe/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lqe/a;


# instance fields
.field private final a:Lqe/a;


# direct methods
.method public constructor <init>(Lqe/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqe/c;->a:Lqe/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-static {p1, p1, p1, p1}, Lre/c;->b(IIII)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lre/e;->a()Lcom/iab/omid/library/mmadbridge/adsession/OutputDeviceStatus;

    move-result-object v0

    invoke-static {p1, v0}, Lre/c;->e(Lorg/json/JSONObject;Lcom/iab/omid/library/mmadbridge/adsession/OutputDeviceStatus;)V

    return-object p1
.end method

.method public a(Landroid/view/View;Lorg/json/JSONObject;Lqe/a$a;ZZ)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lqe/c;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    iget-object v0, p0, Lqe/c;->a:Lqe/a;

    invoke-interface {p3, p4, v0, p2, p5}, Lqe/a$a;->a(Landroid/view/View;Lqe/a;Lorg/json/JSONObject;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method b()Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->e()Lcom/iab/omid/library/mmadbridge/internal/c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/internal/c;->a()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    mul-int/lit8 v2, v2, 0x2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    new-instance v3, Ljava/util/IdentityHashMap;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/iab/omid/library/mmadbridge/adsession/h;->n()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    invoke-static {v2}, Lre/h;->g(Landroid/view/View;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_0

    .line 68
    .line 69
    invoke-virtual {v3, v2, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Lre/h;->d(Landroid/view/View;)F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    :goto_1
    if-lez v5, :cond_1

    .line 81
    .line 82
    add-int/lit8 v6, v5, -0x1

    .line 83
    .line 84
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Landroid/view/View;

    .line 89
    .line 90
    invoke-static {v6}, Lre/h;->d(Landroid/view/View;)F

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    cmpl-float v6, v6, v4

    .line 95
    .line 96
    if-lez v6, :cond_1

    .line 97
    .line 98
    add-int/lit8 v5, v5, -0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v0, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    return-object v0
.end method
