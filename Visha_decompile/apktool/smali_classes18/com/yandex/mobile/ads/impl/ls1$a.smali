.class final Lcom/yandex/mobile/ads/impl/ls1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ls1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zr;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zr;)V
    .locals 1

    const-string v0, "contentCloseListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ls1$a;->a:Lcom/yandex/mobile/ads/impl/zr;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ls1$a;->a:Lcom/yandex/mobile/ads/impl/zr;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/zr;->f()V

    return-void
.end method
