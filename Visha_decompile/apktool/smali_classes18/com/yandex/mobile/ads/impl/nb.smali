.class public final Lcom/yandex/mobile/ads/impl/nb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/nb$a;,
        Lcom/yandex/mobile/ads/impl/nb$b;
    }
.end annotation


# static fields
.field private static final f:J


# instance fields
.field private final a:Landroid/app/Dialog;

.field private final b:Lcom/yandex/mobile/ads/impl/bc;

.field private final c:Lcom/yandex/mobile/ads/impl/x50;

.field private final d:Lcom/yandex/mobile/ads/impl/ff1;

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/mobile/ads/impl/nb;->f:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;Lcom/yandex/mobile/ads/impl/bc;Lcom/yandex/mobile/ads/impl/x50;Lcom/yandex/mobile/ads/impl/ff1;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adtuneWebView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListenerController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openUrlHandler"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nb;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nb;->b:Lcom/yandex/mobile/ads/impl/bc;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/nb;->c:Lcom/yandex/mobile/ads/impl/x50;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/nb;->d:Lcom/yandex/mobile/ads/impl/ff1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/nb;->e:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/nb;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb;->a:Landroid/app/Dialog;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/nb;)Lcom/yandex/mobile/ads/impl/x50;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb;->c:Lcom/yandex/mobile/ads/impl/x50;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/nb;)Lcom/yandex/mobile/ads/impl/ff1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb;->d:Lcom/yandex/mobile/ads/impl/ff1;

    return-object p0
.end method

.method public static final d(Lcom/yandex/mobile/ads/impl/nb;)V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optOutUrl"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/nb$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/nb$a;-><init>(Lcom/yandex/mobile/ads/impl/nb;)V

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nb;->b:Lcom/yandex/mobile/ads/impl/bc;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/bc;->setAdtuneWebViewListener(Lcom/yandex/mobile/ads/impl/ec;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nb;->b:Lcom/yandex/mobile/ads/impl/bc;

    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/bc;->setOptOutUrl(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/nb;->b:Lcom/yandex/mobile/ads/impl/bc;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/nb$b;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/nb$b;-><init>(Lcom/yandex/mobile/ads/impl/nb;)V

    .line 8
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/nb;->e:Landroid/os/Handler;

    sget-wide v0, Lcom/yandex/mobile/ads/impl/nb;->f:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb;->a:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
