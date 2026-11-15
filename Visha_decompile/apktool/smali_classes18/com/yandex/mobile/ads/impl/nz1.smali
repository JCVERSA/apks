.class public final Lcom/yandex/mobile/ads/impl/nz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/co0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/co0;)V
    .locals 1

    const-string v0, "instreamVastAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nz1;->a:Lcom/yandex/mobile/ads/impl/co0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nz1;->a:Lcom/yandex/mobile/ads/impl/co0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/co0;->e()V

    return-void
.end method
