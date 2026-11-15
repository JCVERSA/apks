.class public final synthetic Lerg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lgrg;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzbuy;


# direct methods
.method public synthetic constructor <init>(Lgrg;Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerg;->b:Lgrg;

    iput-object p2, p0, Lerg;->c:Lcom/google/android/gms/internal/ads/zzbuy;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lerg;->b:Lgrg;

    iget-object p0, p0, Lerg;->c:Lcom/google/android/gms/internal/ads/zzbuy;

    invoke-static {v0, p0}, Lgrg;->a(Lgrg;Lcom/google/android/gms/internal/ads/zzbuy;)Lmsg;

    move-result-object p0

    return-object p0
.end method
