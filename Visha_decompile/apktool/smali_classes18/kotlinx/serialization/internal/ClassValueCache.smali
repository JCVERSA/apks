.class public final Lkotlinx/serialization/internal/ClassValueCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd9;


# instance fields
.field public final a:Le74;

.field public final b:Llx0;


# direct methods
.method public constructor <init>(Le74;)V
    .locals 1

    const-string v0, "compute"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache;->a:Le74;

    new-instance p1, Llx0;

    invoke-direct {p1}, Llx0;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache;->b:Llx0;

    return-void
.end method


# virtual methods
.method public a(Lde5;)Lef5;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/ClassValueCache;->b:Llx0;

    invoke-static {p1}, Led5;->b(Lde5;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkx0;->a(Llx0;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(key)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Llw6;

    iget-object v1, v0, Llw6;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;

    invoke-direct {v1, p0, p1}, Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;-><init>(Lkotlinx/serialization/internal/ClassValueCache;Lde5;)V

    invoke-virtual {v0, v1}, Llw6;->a(Lc74;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lmp0;

    iget-object p0, v1, Lmp0;->a:Lef5;

    return-object p0
.end method

.method public final b()Le74;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/ClassValueCache;->a:Le74;

    return-object p0
.end method
