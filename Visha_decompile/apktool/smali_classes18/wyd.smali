.class public final synthetic Lwyd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/z20;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/z20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwyd;->b:Lcom/yandex/mobile/ads/impl/z20;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lwyd;->b:Lcom/yandex/mobile/ads/impl/z20;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/z20;->b(Lcom/yandex/mobile/ads/impl/z20;Landroid/content/DialogInterface;)V

    return-void
.end method
