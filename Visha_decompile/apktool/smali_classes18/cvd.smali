.class public final synthetic Lcvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/um0;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/um0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvd;->b:Lcom/yandex/mobile/ads/impl/um0;

    iput-object p2, p0, Lcvd;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcvd;->b:Lcom/yandex/mobile/ads/impl/um0;

    iget-object p0, p0, Lcvd;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/um0;->c(Lcom/yandex/mobile/ads/impl/um0;Ljava/lang/String;)V

    return-void
.end method
