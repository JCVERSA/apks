.class public final Lktf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lktf;->a:Lqyi;

    iput-object p2, p0, Lktf;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Ljtf;
    .locals 2

    iget-object v0, p0, Lktf;->a:Lqyi;

    check-cast v0, Lqsf;

    invoke-virtual {v0}, Lqsf;->a()Lejf;

    move-result-object v0

    iget-object p0, p0, Lktf;->b:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v1, Ljtf;

    invoke-direct {v1, v0, p0}, Ljtf;-><init>(Lejf;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lktf;->a()Ljtf;

    move-result-object p0

    return-object p0
.end method
