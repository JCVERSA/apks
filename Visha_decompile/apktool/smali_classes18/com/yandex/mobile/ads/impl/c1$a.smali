.class public final Lcom/yandex/mobile/ads/impl/c1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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

.field private final c:Lcom/yandex/mobile/ads/impl/t8;

.field private d:Lcom/yandex/mobile/ads/impl/gv1;

.field private e:Lcom/yandex/mobile/ads/impl/q61;

.field private f:I

.field private g:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/t8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/t8;",
            ")V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResultReceiver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c1$a;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/c1$a;->b:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/c1$a;->c:Lcom/yandex/mobile/ads/impl/t8;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c1$a;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public final a(I)Lcom/yandex/mobile/ads/impl/c1$a;
    .locals 0

    .line 6
    iput p1, p0, Lcom/yandex/mobile/ads/impl/c1$a;->f:I

    return-object p0
.end method

.method public final a(Landroid/content/Intent;)Lcom/yandex/mobile/ads/impl/c1$a;
    .locals 1

    .line 2
    const-string v0, "activityResultIntent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c1$a;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/gv1;)Lcom/yandex/mobile/ads/impl/c1$a;
    .locals 1

    .line 7
    const-string v0, "contentController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c1$a;->d:Lcom/yandex/mobile/ads/impl/gv1;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/q61;)Lcom/yandex/mobile/ads/impl/c1$a;
    .locals 1

    .line 4
    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/c1$a;->e:Lcom/yandex/mobile/ads/impl/q61;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/o3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c1$a;->b:Lcom/yandex/mobile/ads/impl/o3;

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

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c1$a;->a:Lcom/yandex/mobile/ads/impl/o8;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/t8;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c1$a;->c:Lcom/yandex/mobile/ads/impl/t8;

    return-object p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/q61;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c1$a;->e:Lcom/yandex/mobile/ads/impl/q61;

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/c1$a;->f:I

    return p0
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/gv1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c1$a;->d:Lcom/yandex/mobile/ads/impl/gv1;

    return-object p0
.end method
