.class public final synthetic Lfid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/hw1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/hw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfid;->b:Lcom/yandex/mobile/ads/impl/hw1;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 0

    iget-object p0, p0, Lfid;->b:Lcom/yandex/mobile/ads/impl/hw1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hw1;->j(Lcom/yandex/mobile/ads/impl/hw1;)Z

    move-result p0

    return p0
.end method
