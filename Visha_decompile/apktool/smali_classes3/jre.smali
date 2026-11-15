.class public final Ljre;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lim5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lire;

    invoke-direct {v0, p0, p1}, Lire;-><init>(Ljre;Landroid/content/Context;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/j8;->j(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    iput-object p1, p0, Ljre;->a:Lim5;

    return-void
.end method


# virtual methods
.method public final a()Lim5;
    .locals 0

    iget-object p0, p0, Ljre;->a:Lim5;

    return-object p0
.end method
