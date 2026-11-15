.class public final Lcom/yandex/mobile/ads/impl/ss1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b10;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ss1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/ViewGroup;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/b10<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/e1;

.field private final b:Lcom/yandex/mobile/ads/impl/n52;

.field private final c:Lcom/yandex/mobile/ads/impl/ea1;

.field private final d:Lcom/yandex/mobile/ads/impl/f1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/o52;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;)V
    .locals 7

    .line 1
    new-instance v5, Lcom/yandex/mobile/ads/impl/ea1;

    invoke-direct {v5, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/ea1;-><init>(Lcom/yandex/mobile/ads/impl/o52;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;)V

    .line 2
    new-instance v6, Lcom/yandex/mobile/ads/impl/ss1$a;

    invoke-direct {v6, v5}, Lcom/yandex/mobile/ads/impl/ss1$a;-><init>(Lcom/yandex/mobile/ads/impl/ea1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/ss1;-><init>(Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/o52;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/ea1;Lcom/yandex/mobile/ads/impl/f1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/o52;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/ea1;Lcom/yandex/mobile/ads/impl/f1;)V
    .locals 1

    .line 4
    const-string v0, "adActivityEventController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timerViewProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeMediaContent"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "timeProviderContainer"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "nativeRewardViewController"

    invoke-static {p5, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "adActivityFocusListener"

    invoke-static {p6, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ss1;->a:Lcom/yandex/mobile/ads/impl/e1;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ss1;->b:Lcom/yandex/mobile/ads/impl/n52;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ss1;->c:Lcom/yandex/mobile/ads/impl/ea1;

    .line 9
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ss1;->d:Lcom/yandex/mobile/ads/impl/f1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ss1;->a:Lcom/yandex/mobile/ads/impl/e1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ss1;->d:Lcom/yandex/mobile/ads/impl/f1;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/e1;->a(Lcom/yandex/mobile/ads/impl/f1;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ss1;->b:Lcom/yandex/mobile/ads/impl/n52;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/n52;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ss1;->c:Lcom/yandex/mobile/ads/impl/ea1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ea1;->a(Landroid/view/View;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ss1;->a:Lcom/yandex/mobile/ads/impl/e1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ss1;->d:Lcom/yandex/mobile/ads/impl/f1;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/e1;->b(Lcom/yandex/mobile/ads/impl/f1;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ss1;->c:Lcom/yandex/mobile/ads/impl/ea1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ea1;->a()V

    return-void
.end method
