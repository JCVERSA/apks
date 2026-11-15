.class public final Ljng;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lfng;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lfng;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljng;->a:Lfng;

    iput-object p2, p0, Ljng;->b:Lqyi;

    return-void
.end method

.method public static a(Lfng;Lrng;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 0

    invoke-static {p1, p2}, Lfng;->d(Lrng;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljng;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrng;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v1

    iget-object p0, p0, Ljng;->a:Lfng;

    invoke-static {p0, v0, v1}, Ljng;->a(Lfng;Lrng;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
