.class public final synthetic Lcom/yandex/mobile/ads/impl/ep2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lib1;


# direct methods
.method public synthetic constructor <init>(Lib1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ep2;->b:Lib1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ep2;->b:Lib1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ae$a;->g(Lib1;)V

    return-void
.end method
