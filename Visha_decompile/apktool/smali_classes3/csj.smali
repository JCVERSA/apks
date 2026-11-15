.class public final Lcsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6e;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lqfg;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lqfg;)V
    .locals 0

    iput-object p1, p0, Lcsj;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcsj;->c:Lqfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcsj;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza()V
    .locals 1

    iget-object v0, p0, Lcsj;->c:Lqfg;

    iget-object p0, p0, Lcsj;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Lqfg;->zza(Ljava/lang/Object;)V

    return-void
.end method
