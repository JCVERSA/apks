.class public final synthetic Luvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/vf2$a;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/vf2$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luvd;->b:Lcom/yandex/mobile/ads/impl/vf2$a;

    iput-object p2, p0, Luvd;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Luvd;->b:Lcom/yandex/mobile/ads/impl/vf2$a;

    iget-object p0, p0, Luvd;->c:Ljava/lang/Exception;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/vf2$a;->a(Lcom/yandex/mobile/ads/impl/vf2$a;Ljava/lang/Exception;)V

    return-void
.end method
