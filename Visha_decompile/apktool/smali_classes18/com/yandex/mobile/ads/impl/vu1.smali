.class public final Lcom/yandex/mobile/ads/impl/vu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/qk$a;
.implements Lcom/yandex/mobile/ads/impl/eq1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/qk$a<",
        "Lcom/yandex/mobile/ads/impl/ju1;",
        ">;",
        "Lcom/yandex/mobile/ads/impl/eq1;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pu1;

.field private final b:Lcom/yandex/mobile/ads/impl/nu1$a;

.field private final c:Lcom/yandex/mobile/ads/impl/g5;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/yandex/mobile/ads/impl/kr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/pu1;Lcom/yandex/mobile/ads/impl/ou1$a$b;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkConfigurationProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkConfigurationLoadListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/vu1;->a:Lcom/yandex/mobile/ads/impl/pu1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/vu1;->b:Lcom/yandex/mobile/ads/impl/nu1$a;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/vu1;->c:Lcom/yandex/mobile/ads/impl/g5;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vu1;->d:Landroid/content/Context;

    sget-object p1, Lcom/yandex/mobile/ads/impl/kr;->c:Lcom/yandex/mobile/ads/impl/kr;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vu1;->e:Lcom/yandex/mobile/ads/impl/kr;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/si2;)V
    .locals 2

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vu1;->c:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->o:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vu1;->b:Lcom/yandex/mobile/ads/impl/nu1$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vu1;->e:Lcom/yandex/mobile/ads/impl/kr;

    invoke-interface {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/nu1$a;->a(Lcom/yandex/mobile/ads/impl/si2;Lcom/yandex/mobile/ads/impl/kr;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 4
    check-cast p1, Lcom/yandex/mobile/ads/impl/ju1;

    .line 5
    const-string v0, "sdkConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vu1;->a:Lcom/yandex/mobile/ads/impl/pu1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vu1;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/pu1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ju1;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vu1;->c:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->o:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vu1;->b:Lcom/yandex/mobile/ads/impl/nu1$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vu1;->e:Lcom/yandex/mobile/ads/impl/kr;

    invoke-interface {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/nu1$a;->a(Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/kr;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vu1;->c:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->n:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vu1;->c:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v0, Lcom/yandex/mobile/ads/impl/f5;->o:Lcom/yandex/mobile/ads/impl/f5;

    const-string v1, "adLoadingPhaseType"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v0, v2}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    return-void
.end method
