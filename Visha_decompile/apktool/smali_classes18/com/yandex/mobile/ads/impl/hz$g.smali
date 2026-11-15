.class public final Lcom/yandex/mobile/ads/impl/hz$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hz$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private final a:[Lcom/yandex/mobile/ads/impl/uh;

.field private final b:Lcom/yandex/mobile/ads/impl/jy1;

.field private final c:Lcom/yandex/mobile/ads/impl/n12;


# direct methods
.method public constructor <init>([Lcom/yandex/mobile/ads/impl/uh;Lcom/yandex/mobile/ads/impl/jy1;Lcom/yandex/mobile/ads/impl/n12;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/yandex/mobile/ads/impl/uh;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hz$g;->a:[Lcom/yandex/mobile/ads/impl/uh;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hz$g;->b:Lcom/yandex/mobile/ads/impl/jy1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/hz$g;->c:Lcom/yandex/mobile/ads/impl/n12;

    array-length p0, p1

    aput-object p2, v0, p0

    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    aput-object p3, v0, p0

    return-void
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/hz$g;)Lcom/yandex/mobile/ads/impl/jy1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$g;->b:Lcom/yandex/mobile/ads/impl/jy1;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/yandex/mobile/ads/impl/hz$g;)Lcom/yandex/mobile/ads/impl/n12;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$g;->c:Lcom/yandex/mobile/ads/impl/n12;

    return-object p0
.end method


# virtual methods
.method public final a()[Lcom/yandex/mobile/ads/impl/uh;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$g;->a:[Lcom/yandex/mobile/ads/impl/uh;

    return-object p0
.end method
