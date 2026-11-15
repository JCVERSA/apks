.class public final Lvqh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/List;

.field public final synthetic c:Lerh;


# direct methods
.method public synthetic constructor <init>(Lerh;Ljava/lang/Object;Ljava/util/List;Ldrh;)V
    .locals 0

    iput-object p1, p0, Lvqh;->c:Lerh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lvqh;->a:Ljava/lang/Object;

    iput-object p3, p0, Lvqh;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Lcrh;
    .locals 9

    iget-object v5, p0, Lvqh;->b:Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/j8;->b(Ljava/lang/Iterable;)Lw7i;

    move-result-object v0

    new-instance v1, Luqh;

    invoke-direct {v1}, Luqh;-><init>()V

    sget-object v2, Lzef;->g:Lg8i;

    invoke-virtual {v0, v1, v2}, Lw7i;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v4

    new-instance v8, Lcrh;

    iget-object v1, p0, Lvqh;->c:Lerh;

    invoke-static {v1}, Lerh;->e(Lerh;)Lg8i;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lw7i;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v6

    iget-object v2, p0, Lvqh;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcrh;-><init>(Lerh;Ljava/lang/Object;Ljava/lang/String;Lim5;Ljava/util/List;Lim5;Ldrh;)V

    return-object v8
.end method
