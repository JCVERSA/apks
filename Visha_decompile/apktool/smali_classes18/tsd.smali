.class public final synthetic Ltsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/s01;

.field public final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/s01;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltsd;->b:Lcom/yandex/mobile/ads/impl/s01;

    iput-object p2, p0, Ltsd;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltsd;->b:Lcom/yandex/mobile/ads/impl/s01;

    iget-object p0, p0, Ltsd;->c:Ljava/lang/Throwable;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/s01;->d(Lcom/yandex/mobile/ads/impl/s01;Ljava/lang/Throwable;)V

    return-void
.end method
