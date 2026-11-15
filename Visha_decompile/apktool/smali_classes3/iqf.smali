.class public final Liqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final synthetic a:Lkqf;


# direct methods
.method public constructor <init>(Lkqf;)V
    .locals 0

    iput-object p1, p0, Liqf;->a:Lkqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Liqf;->a:Lkqf;

    invoke-static {p1, p2}, Lkqf;->g(Lkqf;Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lkqf;->b(Lkqf;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcml;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcml;-><init>(Liqf;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
