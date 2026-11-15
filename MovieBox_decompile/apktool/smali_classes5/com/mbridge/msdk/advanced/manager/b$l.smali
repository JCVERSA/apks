.class Lcom/mbridge/msdk/advanced/manager/b$l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/image/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/advanced/manager/b;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:I

.field final synthetic c:Lcom/mbridge/msdk/advanced/manager/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$l;->c:Lcom/mbridge/msdk/advanced/manager/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$l;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 4
    .line 5
    iput p3, p0, Lcom/mbridge/msdk/advanced/manager/b$l;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/advanced/manager/b;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "image \u4e0b\u8f7d\u5931\u8d25\uff1a "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$l;->c:Lcom/mbridge/msdk/advanced/manager/b;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$l;->c:Lcom/mbridge/msdk/advanced/manager/b;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance p2, Lcom/mbridge/msdk/advanced/manager/b$l$b;

    .line 40
    .line 41
    invoke-direct {p2, p0}, Lcom/mbridge/msdk/advanced/manager/b$l$b;-><init>(Lcom/mbridge/msdk/advanced/manager/b$l;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/advanced/manager/b;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "image \u4e0b\u8f7d\u6210\u529f\uff1a "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$l;->c:Lcom/mbridge/msdk/advanced/manager/b;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$l;->c:Lcom/mbridge/msdk/advanced/manager/b;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance p2, Lcom/mbridge/msdk/advanced/manager/b$l$a;

    .line 40
    .line 41
    invoke-direct {p2, p0}, Lcom/mbridge/msdk/advanced/manager/b$l$a;-><init>(Lcom/mbridge/msdk/advanced/manager/b$l;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
