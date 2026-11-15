.class public final synthetic Lbgh;
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

    iput-object p1, p0, Lbgh;->b:Lim5;

    iput-object p2, p0, Lbgh;->c:Lim5;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbgh;->b:Lim5;

    new-instance v1, Ldgh;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lbgh;->c:Lim5;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Ldgh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
