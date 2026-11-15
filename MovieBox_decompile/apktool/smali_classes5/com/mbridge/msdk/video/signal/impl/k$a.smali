.class Lcom/mbridge/msdk/video/signal/impl/k$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/signal/impl/k;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/mbridge/msdk/video/signal/impl/k;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/signal/impl/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->f:Lcom/mbridge/msdk/video/signal/impl/k;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->e:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    new-instance v9, Lcom/mbridge/msdk/foundation/entity/m;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->f:Lcom/mbridge/msdk/video/signal/impl/k;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/mbridge/msdk/video/signal/impl/k;->a(Lcom/mbridge/msdk/video/signal/impl/k;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    iget v7, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->e:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->f:Lcom/mbridge/msdk/video/signal/impl/k;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/mbridge/msdk/video/signal/impl/k;->b(Lcom/mbridge/msdk/video/signal/impl/k;)Landroid/app/Activity;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->e:I

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    const-string v1, "2000039"

    .line 40
    .line 41
    move-object v0, v9

    .line 42
    invoke-direct/range {v0 .. v8}, Lcom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/k$a;->f:Lcom/mbridge/msdk/video/signal/impl/k;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mbridge/msdk/video/signal/impl/k;->b(Lcom/mbridge/msdk/video/signal/impl/k;)Landroid/app/Activity;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/n;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/n;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v9}, Lcom/mbridge/msdk/foundation/db/n;->a(Lcom/mbridge/msdk/foundation/entity/m;)J

    .line 64
    .line 65
    .line 66
    return-void
.end method
