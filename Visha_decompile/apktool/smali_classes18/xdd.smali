.class public final synthetic Lxdd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:Lcom/yandex/mobile/ads/impl/es0;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/lw0;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput-object p2, p0, Lxdd;->b:Lcom/yandex/mobile/ads/impl/es0;

    iput-object p3, p0, Lxdd;->c:Lcom/yandex/mobile/ads/impl/lw0;

    iput-object p4, p0, Lxdd;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Lxdd;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lxdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget-object v1, p0, Lxdd;->b:Lcom/yandex/mobile/ads/impl/es0;

    iget-object v2, p0, Lxdd;->c:Lcom/yandex/mobile/ads/impl/lw0;

    iget-object v3, p0, Lxdd;->d:Ljava/io/IOException;

    iget-boolean v4, p0, Lxdd;->e:Z

    move-object v5, p1

    check-cast v5, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/ez;->x(Lcom/yandex/mobile/ads/impl/ld$a;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;Ljava/io/IOException;ZLcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
