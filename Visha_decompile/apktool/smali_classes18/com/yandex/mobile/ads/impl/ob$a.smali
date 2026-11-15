.class final Lcom/yandex/mobile/ads/impl/ob$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/Dialog;

.field private final b:Lcom/yandex/mobile/ads/impl/zq0;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/yandex/mobile/ads/impl/zq0;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyboardUtils"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ob$a;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ob$a;->b:Lcom/yandex/mobile/ads/impl/zq0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ob$a;->b:Lcom/yandex/mobile/ads/impl/zq0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/zq0;->a(Landroid/view/View;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ob$a;->a:Landroid/app/Dialog;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/n10;->a(Landroid/app/Dialog;)V

    return-void
.end method
