.class public final synthetic Losd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/s00$g$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/s00$c;

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/s00$c;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Losd;->a:Lcom/yandex/mobile/ads/impl/s00$c;

    iput-object p2, p0, Losd;->b:[I

    return-void
.end method


# virtual methods
.method public final a(ILcom/yandex/mobile/ads/impl/y52;[I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Losd;->a:Lcom/yandex/mobile/ads/impl/s00$c;

    iget-object p0, p0, Losd;->b:[I

    invoke-static {v0, p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/s00;->h(Lcom/yandex/mobile/ads/impl/s00$c;[IILcom/yandex/mobile/ads/impl/y52;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
