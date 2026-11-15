.class public final Lcom/yandex/mobile/ads/impl/n2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/n2$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/mq1;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;

.field private static volatile d:Lcom/yandex/mobile/ads/impl/n2;

.field public static final synthetic e:I


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/l2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/mq1;->c:Lcom/yandex/mobile/ads/impl/mq1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/mq1;->e:Lcom/yandex/mobile/ads/impl/mq1;

    sget-object v2, Lcom/yandex/mobile/ads/impl/mq1;->d:Lcom/yandex/mobile/ads/impl/mq1;

    filled-new-array {v0, v1, v2}, [Lcom/yandex/mobile/ads/impl/mq1;

    move-result-object v0

    invoke-static {v0}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/n2;->b:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/n2;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/impl/l2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n2;->a:Lcom/yandex/mobile/ads/impl/l2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/l2;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/n2;-><init>(Lcom/yandex/mobile/ads/impl/l2;)V

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/n2;
    .locals 1

    .line 12
    sget-object v0, Lcom/yandex/mobile/ads/impl/n2;->d:Lcom/yandex/mobile/ads/impl/n2;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/n2;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/n2;->d:Lcom/yandex/mobile/ads/impl/n2;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/n2;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/mq1;Ljava/lang/Integer;)V
    .locals 1

    .line 2
    const-string v0, "requestType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/n2;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n2;->a:Lcom/yandex/mobile/ads/impl/l2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/l2;->a()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n2;->a:Lcom/yandex/mobile/ads/impl/l2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/l2;->c()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/Boolean;Lcom/yandex/mobile/ads/impl/g2;)V
    .locals 7

    .line 7
    const-string v0, "requestPolicy"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n2;->a:Lcom/yandex/mobile/ads/impl/l2;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v2, p1

    move-object v3, p2

    .line 11
    invoke-static/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/l2;->a(Lcom/yandex/mobile/ads/impl/l2;Ljava/lang/Boolean;Lcom/yandex/mobile/ads/impl/g2;Ljava/lang/Long;Ljava/lang/Integer;I)V

    :cond_0
    return-void
.end method
