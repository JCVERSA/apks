.class public Lcom/transsion/push/utils/a$b;
.super Lcom/transsion/http/impl/BitmapCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/a;->a(ILjava/lang/String;Lcom/transsion/push/utils/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/transsion/push/utils/a$c;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/push/utils/a$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/utils/a$b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/push/utils/a$b;->f:Lcom/transsion/push/utils/a$c;

    iput p3, p0, Lcom/transsion/push/utils/a$b;->g:I

    invoke-direct {p0}, Lcom/transsion/http/impl/BitmapCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public E(ILandroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "image download fail, url:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/push/utils/a$b;->e:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/push/utils/a$b;->f:Lcom/transsion/push/utils/a$c;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/push/utils/a$b;->e:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/transsion/push/utils/a$c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public F(ILandroid/graphics/Bitmap;)V
    .locals 2

    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image download complete, url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/push/utils/a$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/push/utils/a$b;->f:Lcom/transsion/push/utils/a$c;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/transsion/push/utils/a$b;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lxj1;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/push/utils/a$b;->f:Lcom/transsion/push/utils/a$c;

    iget-object v1, p0, Lcom/transsion/push/utils/a$b;->e:Ljava/lang/String;

    invoke-static {p1, p2}, Llf0;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/transsion/push/utils/a$c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/transsion/push/utils/a$b;->f:Lcom/transsion/push/utils/a$c;

    iget-object p0, p0, Lcom/transsion/push/utils/a$b;->e:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/transsion/push/utils/a$c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/push/utils/a$b;->e:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/transsion/push/utils/a$c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method
