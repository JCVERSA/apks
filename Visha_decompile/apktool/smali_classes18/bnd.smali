.class public final synthetic Lbnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/m10;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/m10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbnd;->b:Lcom/yandex/mobile/ads/impl/m10;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lbnd;->b:Lcom/yandex/mobile/ads/impl/m10;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/m10;->b(Lcom/yandex/mobile/ads/impl/m10;Landroid/content/DialogInterface;)V

    return-void
.end method
