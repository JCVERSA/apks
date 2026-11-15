.class public abstract Lbgd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/Class;

.field public static b:Ljava/lang/ref/WeakReference;


# direct methods
.method public static a()V
    .locals 1

    sget-object v0, Lbgd;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcjd;

    sput-object v0, Lbgd;->a:Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lbgd;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-static {}, Lbgd;->a()V

    :cond_0
    sget-object v0, Lbgd;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public static c()Lhhd;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lbgd;->b:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    invoke-static {}, Lbgd;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lubc;->a(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lbgd;->b:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {}, Lbgd;->b()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lbgd;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lubc;->a(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lbgd;->b:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method
