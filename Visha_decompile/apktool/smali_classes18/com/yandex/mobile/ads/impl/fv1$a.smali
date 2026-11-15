.class public final Lcom/yandex/mobile/ads/impl/fv1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/kv1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/fv1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/kv1<",
        "Lcom/yandex/mobile/ads/impl/gv1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/fv1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/fv1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fv1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fv1$a;->a:Lcom/yandex/mobile/ads/impl/fv1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 5
    const-string v0, "adFetchRequestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fv1$a;->a:Lcom/yandex/mobile/ads/impl/fv1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fv1;->a(Lcom/yandex/mobile/ads/impl/fv1;)Lcom/yandex/mobile/ads/impl/jd0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/yandex/mobile/ads/impl/gv1;

    .line 2
    const-string v0, "ad"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fv1$a;->a:Lcom/yandex/mobile/ads/impl/fv1;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/impl/fv1;->a(Lcom/yandex/mobile/ads/impl/fv1;Lcom/yandex/mobile/ads/impl/gv1;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fv1$a;->a:Lcom/yandex/mobile/ads/impl/fv1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fv1;->a(Lcom/yandex/mobile/ads/impl/fv1;)Lcom/yandex/mobile/ads/impl/jd0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->u()V

    return-void
.end method
