.class public final Lcom/yandex/mobile/ads/impl/ai1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jb1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jb1;)V
    .locals 1

    const-string v0, "nativeVideoPlaybackEventListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ai1;->a:Lcom/yandex/mobile/ads/impl/jb1;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ai1;->a:Lcom/yandex/mobile/ads/impl/jb1;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/jb1;->a(JJ)V

    return-void
.end method
