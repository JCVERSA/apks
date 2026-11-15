.class public final Lcom/yandex/mobile/ads/impl/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/c1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/o3;

.field private final c:Lcom/yandex/mobile/ads/impl/gv1;

.field private final d:Lcom/yandex/mobile/ads/impl/q61;

.field private final e:I

.field private final f:Lcom/yandex/mobile/ads/impl/t8;

.field private final g:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/c1$a;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/c1$a;->c()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/c1;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/c1$a;->b()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/c1;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/c1$a;->g()Lcom/yandex/mobile/ads/impl/gv1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/c1;->c:Lcom/yandex/mobile/ads/impl/gv1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/c1$a;->e()Lcom/yandex/mobile/ads/impl/q61;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/c1;->d:Lcom/yandex/mobile/ads/impl/q61;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/c1$a;->f()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/c1;->e:I

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/c1$a;->d()Lcom/yandex/mobile/ads/impl/t8;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/c1;->f:Lcom/yandex/mobile/ads/impl/t8;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/c1$a;->a()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c1;->g:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c1;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/o3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c1;->b:Lcom/yandex/mobile/ads/impl/o3;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/o8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c1;->a:Lcom/yandex/mobile/ads/impl/o8;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/t8;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c1;->f:Lcom/yandex/mobile/ads/impl/t8;

    return-object p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/q61;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c1;->d:Lcom/yandex/mobile/ads/impl/q61;

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/c1;->e:I

    return p0
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/gv1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c1;->c:Lcom/yandex/mobile/ads/impl/gv1;

    return-object p0
.end method
