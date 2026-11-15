.class public final Ldpc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lal3;


# instance fields
.field public final a:Loj8;

.field public final b:Loj8;

.field public final c:Loj8;

.field public final d:Loj8;


# direct methods
.method public constructor <init>(Loj8;Loj8;Loj8;Loj8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpc;->a:Loj8;

    iput-object p2, p0, Ldpc;->b:Loj8;

    iput-object p3, p0, Ldpc;->c:Loj8;

    iput-object p4, p0, Ldpc;->d:Loj8;

    return-void
.end method

.method public static a(Loj8;Loj8;Loj8;Loj8;)Ldpc;
    .locals 1

    new-instance v0, Ldpc;

    invoke-direct {v0, p0, p1, p2, p3}, Ldpc;-><init>(Loj8;Loj8;Loj8;Loj8;)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Lge3;Lfpc;Le8a;)Lcpc;
    .locals 1

    new-instance v0, Lcpc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcpc;-><init>(Ljava/util/concurrent/Executor;Lge3;Lfpc;Le8a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcpc;
    .locals 3

    iget-object v0, p0, Ldpc;->a:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ldpc;->b:Loj8;

    invoke-interface {v1}, Loj8;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lge3;

    iget-object v2, p0, Ldpc;->c:Loj8;

    invoke-interface {v2}, Loj8;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfpc;

    iget-object p0, p0, Ldpc;->d:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le8a;

    invoke-static {v0, v1, v2, p0}, Ldpc;->c(Ljava/util/concurrent/Executor;Lge3;Lfpc;Le8a;)Lcpc;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ldpc;->b()Lcpc;

    move-result-object p0

    return-object p0
.end method
