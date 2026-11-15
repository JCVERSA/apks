.class public final Lcom/yandex/mobile/ads/impl/du1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/du1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/np0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/np0;)V
    .locals 1

    const-string v0, "adView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/du1$a;->b:Lcom/yandex/mobile/ads/impl/np0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/du1$a;->b:Lcom/yandex/mobile/ads/impl/np0;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/zg2;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
