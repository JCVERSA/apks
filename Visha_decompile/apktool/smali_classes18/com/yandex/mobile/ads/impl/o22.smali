.class public final Lcom/yandex/mobile/ads/impl/o22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final b:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/zd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zd<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/zd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/mobile/ads/impl/zd<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o22;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/o22;->c:Lcom/yandex/mobile/ads/impl/zd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o22;->c:Lcom/yandex/mobile/ads/impl/zd;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o22;->b:Landroid/view/View;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/zd;->a(Landroid/view/View;)V

    return-void
.end method
