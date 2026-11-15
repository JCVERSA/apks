.class public final Lcom/yandex/mobile/ads/impl/m10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/zr;


# instance fields
.field private a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/m10;Landroid/content/DialogInterface;)V
    .locals 1

    .line 4
    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/m10;->a:Landroid/app/Dialog;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7
    :cond_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/m10;->a:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/m10;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/m10;->a(Lcom/yandex/mobile/ads/impl/m10;Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Dialog;)V
    .locals 1

    .line 1
    const-string v0, "dialog"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m10;->a:Landroid/app/Dialog;

    .line 3
    new-instance v0, Lbnd;

    invoke-direct {v0, p0}, Lbnd;-><init>(Lcom/yandex/mobile/ads/impl/m10;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m10;->a:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/n10;->a(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
