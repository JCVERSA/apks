.class public final Lcom/yandex/mobile/ads/impl/h62$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/j62;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/h62;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/h62;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/h62;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h62$a;->a:Lcom/yandex/mobile/ads/impl/h62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/yandex/mobile/ads/impl/n92;
    .locals 0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/h62$a;->a:Lcom/yandex/mobile/ads/impl/h62;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/h62;->a(Lcom/yandex/mobile/ads/impl/h62;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->m:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/h62$a;->a:Lcom/yandex/mobile/ads/impl/h62;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/h62;->l()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->o:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h62$a;->a:Lcom/yandex/mobile/ads/impl/h62;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h62;->k()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->j:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    :goto_0
    new-instance p1, Lcom/yandex/mobile/ads/impl/n92;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/n92;-><init>(Lcom/yandex/mobile/ads/impl/n92$a;)V

    return-object p1
.end method

.method public final b(I)Lcom/yandex/mobile/ads/impl/n92;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h62$a;->a:Lcom/yandex/mobile/ads/impl/h62;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/h62;->b(Lcom/yandex/mobile/ads/impl/h62;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->d:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h62$a;->a:Lcom/yandex/mobile/ads/impl/h62;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/h62;->a(Lcom/yandex/mobile/ads/impl/h62;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->m:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h62$a;->a:Lcom/yandex/mobile/ads/impl/h62;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h62;->l()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->o:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h62$a;->a:Lcom/yandex/mobile/ads/impl/h62;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/h62;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h62$a;->a:Lcom/yandex/mobile/ads/impl/h62;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h62;->k()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p0, Lcom/yandex/mobile/ads/impl/n92$a;->j:Lcom/yandex/mobile/ads/impl/n92$a;

    :goto_1
    new-instance p1, Lcom/yandex/mobile/ads/impl/n92;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/n92;-><init>(Lcom/yandex/mobile/ads/impl/n92$a;)V

    return-object p1
.end method
