.class public La/ServiceProvider__TheRouter__986479163;
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
    invoke-static {p1, p2}, La/ServiceProvider__TheRouter__986479163;->addFlowTask(Landroid/content/Context;Ljf/b;)V

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
    const-class v0, Ldx/a;

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
    invoke-static {}, Lco/b;->a()Ldx/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-class v0, Lio/b;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    array-length p1, p2

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lyn/c;->a()Lio/b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    return-object p1
.end method
