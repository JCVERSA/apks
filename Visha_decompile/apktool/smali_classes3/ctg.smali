.class public final synthetic Lctg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lim5;

.field public final synthetic c:Lim5;


# direct methods
.method public synthetic constructor <init>(Lim5;Lim5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctg;->b:Lim5;

    iput-object p2, p0, Lctg;->c:Lim5;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lctg;->b:Lim5;

    new-instance v1, Lqtg;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lttg;

    iget-object p0, p0, Lctg;->c:Lim5;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lotg;

    iget-object v2, v2, Lotg;->b:Lorg/json/JSONObject;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lotg;

    iget-object p0, p0, Lotg;->a:Lwbf;

    invoke-direct {v1, v0, v2, p0}, Lqtg;-><init>(Lttg;Lorg/json/JSONObject;Lwbf;)V

    return-object v1
.end method
