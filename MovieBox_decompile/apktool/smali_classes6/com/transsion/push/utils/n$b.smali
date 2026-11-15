.class Lcom/transsion/push/utils/n$b;
.super Lcom/transsion/http/impl/BitmapCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/n;->a(ILjava/lang/String;Lcom/transsion/push/utils/n$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/transsion/push/utils/n$c;

.field final synthetic g:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/push/utils/n$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/utils/n$b;->e:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/utils/n$b;->f:Lcom/transsion/push/utils/n$c;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/push/utils/n$b;->g:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/http/impl/BitmapCallback;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public y(ILandroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string p3, "image download fail, url:"

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object p3, p0, Lcom/transsion/push/utils/n$b;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/transsion/push/utils/n$b;->f:Lcom/transsion/push/utils/n$c;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p2, p0, Lcom/transsion/push/utils/n$b;->e:Ljava/lang/String;

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    invoke-interface {p1, p2, p3}, Lcom/transsion/push/utils/n$c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public z(ILandroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "image download complete, url:"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/push/utils/n$b;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/transsion/push/utils/n$b;->f:Lcom/transsion/push/utils/n$c;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget v0, p0, Lcom/transsion/push/utils/n$b;->g:I

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    :try_start_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/transsion/push/utils/n$b;->f:Lcom/transsion/push/utils/n$c;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/transsion/push/utils/n$b;->e:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/transsion/push/utils/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v0, v1, p1}, Lcom/transsion/push/utils/n$c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    iget-object p1, p0, Lcom/transsion/push/utils/n$b;->f:Lcom/transsion/push/utils/n$c;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/transsion/push/utils/n$b;->e:Ljava/lang/String;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-interface {p1, p2, v0}, Lcom/transsion/push/utils/n$c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/transsion/push/utils/n$b;->e:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {p1, v0, p2}, Lcom/transsion/push/utils/n$c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    return-void
.end method
