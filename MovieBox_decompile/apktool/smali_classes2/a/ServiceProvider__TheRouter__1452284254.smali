.class public La/ServiceProvider__TheRouter__1452284254;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/therouter/inject/b;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final FLOW_TASK_JSON:Ljava/lang/String; = "{}"

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

.method public static addFlowTask(Landroid/content/Context;Ljf/b;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public initFlowTask(Landroid/content/Context;Ljf/b;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, La/ServiceProvider__TheRouter__1452284254;->addFlowTask(Landroid/content/Context;Ljf/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public varargs interception(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-class v0, Lwj/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    array-length v0, p2

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ltj/d;->a()Lwj/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-class v0, Lwj/b;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    array-length v0, p2

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/transsion/commercialization/gameres/c;->a()Lwj/b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-class v0, Lwj/d;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    array-length v0, p2

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-static {}, Lrj/c;->a()Lwj/d;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-class v0, Lwj/e;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    array-length v0, p2

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    invoke-static {}, Lcom/transsion/commercialization/pslink/e;->a()Lwj/e;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const-class v0, Lwj/f;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    array-length p1, p2

    .line 74
    if-nez p1, :cond_4

    .line 75
    .line 76
    invoke-static {}, Lcom/transsion/commercialization/task/q;->a()Lwj/f;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const/4 p1, 0x0

    .line 82
    :goto_0
    return-object p1
.end method
