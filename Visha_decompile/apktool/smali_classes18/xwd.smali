.class public final synthetic Lxwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/ww0$a;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/ww0;

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/es0;

.field public final synthetic e:Lcom/yandex/mobile/ads/impl/lw0;

.field public final synthetic f:Ljava/io/IOException;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxwd;->b:Lcom/yandex/mobile/ads/impl/ww0$a;

    iput-object p2, p0, Lxwd;->c:Lcom/yandex/mobile/ads/impl/ww0;

    iput-object p3, p0, Lxwd;->d:Lcom/yandex/mobile/ads/impl/es0;

    iput-object p4, p0, Lxwd;->e:Lcom/yandex/mobile/ads/impl/lw0;

    iput-object p5, p0, Lxwd;->f:Ljava/io/IOException;

    iput-boolean p6, p0, Lxwd;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lxwd;->b:Lcom/yandex/mobile/ads/impl/ww0$a;

    iget-object v1, p0, Lxwd;->c:Lcom/yandex/mobile/ads/impl/ww0;

    iget-object v2, p0, Lxwd;->d:Lcom/yandex/mobile/ads/impl/es0;

    iget-object v3, p0, Lxwd;->e:Lcom/yandex/mobile/ads/impl/lw0;

    iget-object v4, p0, Lxwd;->f:Ljava/io/IOException;

    iget-boolean v5, p0, Lxwd;->g:Z

    invoke-static/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/ww0$a;->e(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;Ljava/io/IOException;Z)V

    return-void
.end method
