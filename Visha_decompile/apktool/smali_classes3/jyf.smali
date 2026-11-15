.class public final synthetic Ljyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Llyf;

.field public final synthetic c:Lim5;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Llyf;Lim5;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljyf;->b:Llyf;

    iput-object p2, p0, Ljyf;->c:Lim5;

    iput-object p3, p0, Ljyf;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljyf;->b:Llyf;

    iget-object v1, p0, Ljyf;->c:Lim5;

    iget-object p0, p0, Ljyf;->d:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Llyf;->a(Llyf;Lim5;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbuy;

    move-result-object p0

    return-object p0
.end method
