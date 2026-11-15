.class public Lcom/mgadplus/netlib/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/mgadplus/netlib/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgadplus/netlib/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()V
    .locals 1

    sget-object v0, Lcom/mgadplus/netlib/a/b;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/mgadplus/netlib/a/d;

    sput-object v0, Lcom/mgadplus/netlib/a/b;->a:Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mgadplus/netlib/a/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mgadplus/netlib/a/b;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mgadplus/netlib/a/b;->a()V

    :cond_0
    sget-object v0, Lcom/mgadplus/netlib/a/b;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public static c()Lcom/mgadplus/netlib/a/c;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mgadplus/netlib/a/b;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mgadplus/netlib/a/b;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/netlib/a/c;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/mgadplus/netlib/a/b;->b:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/netlib/a/c;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mgadplus/netlib/a/b;->b()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mgadplus/netlib/a/b;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/netlib/a/c;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/mgadplus/netlib/a/b;->b:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
