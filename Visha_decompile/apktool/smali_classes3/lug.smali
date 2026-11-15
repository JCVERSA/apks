.class public final Llug;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhug;

.field public final b:Lg8i;


# direct methods
.method public constructor <init>(Lhug;Lg8i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llug;->a:Lhug;

    iput-object p2, p0, Llug;->b:Lg8i;

    return-void
.end method


# virtual methods
.method public final a(Lpqh;)V
    .locals 3

    iget-object v0, p0, Llug;->a:Lhug;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljug;

    invoke-direct {v1, v0}, Ljug;-><init>(Lhug;)V

    iget-object v0, p0, Llug;->b:Lg8i;

    invoke-interface {v0, v1}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object v1

    new-instance v2, Lkug;

    invoke-direct {v2, p0, p1}, Lkug;-><init>(Llug;Lpqh;)V

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method
