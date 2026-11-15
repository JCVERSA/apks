.class public final Lzbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lbcf;


# direct methods
.method public constructor <init>(Lbcf;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lzbf;->b:Landroid/content/Context;

    iput-object p1, p0, Lzbf;->c:Lbcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lzbf;->c:Lbcf;

    invoke-static {v0}, Lbcf;->a(Lbcf;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object p0, p0, Lzbf;->b:Landroid/content/Context;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lacf;

    if-eqz v1, :cond_1

    sget-object v2, Ljze;->d:Leze;

    invoke-virtual {v2}, Leze;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v1, Lacf;->a:J

    add-long/2addr v4, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lacf;->b:Lybf;

    new-instance v2, Lxbf;

    invoke-direct {v2, p0, v1}, Lxbf;-><init>(Landroid/content/Context;Lybf;)V

    invoke-virtual {v2}, Lxbf;->a()Lybf;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lxbf;

    invoke-direct {v1, p0}, Lxbf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lxbf;->a()Lybf;

    move-result-object v1

    :goto_1
    invoke-static {v0}, Lbcf;->a(Lbcf;)Ljava/util/WeakHashMap;

    move-result-object v2

    new-instance v3, Lacf;

    invoke-direct {v3, v0, v1}, Lacf;-><init>(Lbcf;Lybf;)V

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
