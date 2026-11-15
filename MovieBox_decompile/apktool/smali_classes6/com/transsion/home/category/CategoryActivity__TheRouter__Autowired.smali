.class public Lcom/transsion/home/category/CategoryActivity__TheRouter__Autowired;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static autowiredInject(Ljava/lang/Object;)V
    .locals 14

    .line 1
    const-string v0, "java.lang.String"

    .line 2
    .line 3
    instance-of v1, p0, Lcom/transsion/home/category/CategoryActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    check-cast p0, Lcom/transsion/home/category/CategoryActivity;

    .line 8
    .line 9
    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lmf/a;

    .line 28
    .line 29
    :try_start_0
    new-instance v12, Lcom/therouter/router/b;

    .line 30
    .line 31
    const-string v4, "java.lang.String"

    .line 32
    .line 33
    const-string v5, "categoryType"

    .line 34
    .line 35
    const-string v7, ""

    .line 36
    .line 37
    const-string v8, "com.transsion.home.category.CategoryActivity"

    .line 38
    .line 39
    const-string v9, "categoryType"

    .line 40
    .line 41
    const-string v11, "No desc."

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    move-object v3, v12

    .line 46
    invoke-direct/range {v3 .. v11}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v0, p0, v12}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    iput-object v3, p0, Lcom/transsion/home/category/CategoryActivity;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception v3

    .line 61
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_1
    :try_start_1
    new-instance v3, Lcom/therouter/router/b;

    .line 71
    .line 72
    const-string v6, "java.lang.String"

    .line 73
    .line 74
    const-string v7, "showType"

    .line 75
    .line 76
    const-string v9, ""

    .line 77
    .line 78
    const-string v10, "com.transsion.home.category.CategoryActivity"

    .line 79
    .line 80
    const-string v11, "showType"

    .line 81
    .line 82
    const-string v13, "No desc."

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v12, 0x0

    .line 86
    move-object v5, v3

    .line 87
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v2, :cond_0

    .line 97
    .line 98
    iput-object v2, p0, Lcom/transsion/home/category/CategoryActivity;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_1
    move-exception v2

    .line 102
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_0

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    return-void
.end method
