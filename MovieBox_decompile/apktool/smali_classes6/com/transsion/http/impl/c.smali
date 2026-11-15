.class Lcom/transsion/http/impl/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/BitmapCallback;->m(I[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/transsion/http/impl/BitmapCallback;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/BitmapCallback;ILjava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/http/impl/c;->c:Lcom/transsion/http/impl/BitmapCallback;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/http/impl/c;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/http/impl/c;->b:Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/http/impl/c;->c:Lcom/transsion/http/impl/BitmapCallback;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/http/impl/c;->a:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/http/impl/c;->b:Ljava/lang/Throwable;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/http/impl/BitmapCallback;->y(ILandroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
