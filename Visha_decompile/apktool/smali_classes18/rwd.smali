.class public final synthetic Lrwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/w32;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/iy$h;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/w32;Lcom/yandex/mobile/ads/impl/iy$h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrwd;->b:Lcom/yandex/mobile/ads/impl/w32;

    iput-object p2, p0, Lrwd;->c:Lcom/yandex/mobile/ads/impl/iy$h;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lrwd;->b:Lcom/yandex/mobile/ads/impl/w32;

    iget-object p0, p0, Lrwd;->c:Lcom/yandex/mobile/ads/impl/iy$h;

    invoke-static {v0, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/w32;->b(Lcom/yandex/mobile/ads/impl/w32;Lcom/yandex/mobile/ads/impl/iy$h;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
