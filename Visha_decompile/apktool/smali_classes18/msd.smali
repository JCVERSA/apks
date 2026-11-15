.class public final synthetic Lmsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/s00$g$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/s00$c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/s00$c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmsd;->a:Lcom/yandex/mobile/ads/impl/s00$c;

    iput-object p2, p0, Lmsd;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILcom/yandex/mobile/ads/impl/y52;[I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmsd;->a:Lcom/yandex/mobile/ads/impl/s00$c;

    iget-object p0, p0, Lmsd;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/s00;->f(Lcom/yandex/mobile/ads/impl/s00$c;Ljava/lang/String;ILcom/yandex/mobile/ads/impl/y52;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
