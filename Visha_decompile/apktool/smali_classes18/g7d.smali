.class public final synthetic Lg7d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/bg;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bg;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg7d;->b:Lcom/yandex/mobile/ads/impl/bg;

    iput-object p2, p0, Lg7d;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lg7d;->b:Lcom/yandex/mobile/ads/impl/bg;

    iget-object p0, p0, Lg7d;->c:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/bg;->b(Lcom/yandex/mobile/ads/impl/bg;Landroid/app/Activity;)V

    return-void
.end method
