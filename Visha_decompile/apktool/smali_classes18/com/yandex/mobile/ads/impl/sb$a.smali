.class final Lcom/yandex/mobile/ads/impl/sb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/xb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/sb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/sb;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sb$a;->a:Lcom/yandex/mobile/ads/impl/sb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sb$a;->a:Lcom/yandex/mobile/ads/impl/sb;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sb;->a(Lcom/yandex/mobile/ads/impl/sb;)Landroid/app/Dialog;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/n10;->a(Landroid/app/Dialog;)V

    return-void
.end method
