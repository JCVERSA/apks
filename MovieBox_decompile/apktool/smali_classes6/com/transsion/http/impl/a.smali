.class Lcom/transsion/http/impl/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/transsion/http/impl/b;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/b;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/http/impl/a;->b:Lcom/transsion/http/impl/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/http/impl/a;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/http/impl/a;->b:Lcom/transsion/http/impl/b;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/http/impl/b;->c:Lcom/transsion/http/impl/BitmapCallback;

    .line 4
    .line 5
    iget v0, v0, Lcom/transsion/http/impl/b;->b:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/http/impl/a;->a:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-virtual {v1, v0, v2}, Lcom/transsion/http/impl/BitmapCallback;->z(ILandroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
