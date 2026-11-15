.class public final Lcom/yandex/mobile/ads/impl/aa2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dq1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/aa2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/dq1<",
        "Ljava/util/List<",
        "+",
        "Lcom/yandex/mobile/ads/impl/mb2;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/z92;

.field private final b:Lcom/yandex/mobile/ads/impl/dq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Lcom/yandex/mobile/ads/impl/z92;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/yandex/mobile/ads/impl/aa2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/aa2;Lcom/yandex/mobile/ads/impl/z92;Lcom/yandex/mobile/ads/impl/dq1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/z92;",
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Lcom/yandex/mobile/ads/impl/z92;",
            ">;)V"
        }
    .end annotation

    const-string v0, "vastData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/aa2$a;->c:Lcom/yandex/mobile/ads/impl/aa2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/aa2$a;->a:Lcom/yandex/mobile/ads/impl/z92;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/aa2$a;->b:Lcom/yandex/mobile/ads/impl/dq1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sb2;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aa2$a;->c:Lcom/yandex/mobile/ads/impl/aa2;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/impl/aa2;->a(Lcom/yandex/mobile/ads/impl/aa2;Lcom/yandex/mobile/ads/impl/sb2;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aa2$a;->b:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Lcom/yandex/mobile/ads/impl/sb2;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 4
    check-cast p1, Ljava/util/List;

    .line 5
    const-string v0, "result"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aa2$a;->c:Lcom/yandex/mobile/ads/impl/aa2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/aa2;->a(Lcom/yandex/mobile/ads/impl/aa2;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aa2$a;->a:Lcom/yandex/mobile/ads/impl/z92;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z92;->b()Lcom/yandex/mobile/ads/impl/u92;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/u92;->a()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/yandex/mobile/ads/impl/u92;

    invoke-direct {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/u92;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 9
    new-instance p1, Lcom/yandex/mobile/ads/impl/z92;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aa2$a;->a:Lcom/yandex/mobile/ads/impl/z92;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z92;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/yandex/mobile/ads/impl/z92;-><init>(Lcom/yandex/mobile/ads/impl/u92;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aa2$a;->b:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Ljava/lang/Object;)V

    return-void
.end method
