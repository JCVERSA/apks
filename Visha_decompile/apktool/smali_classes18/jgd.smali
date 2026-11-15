.class public final synthetic Ljgd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/gh1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/gh1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljgd;->b:Lcom/yandex/mobile/ads/impl/gh1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ljgd;->b:Lcom/yandex/mobile/ads/impl/gh1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/gh1;->c(Lcom/yandex/mobile/ads/impl/gh1;)V

    return-void
.end method
