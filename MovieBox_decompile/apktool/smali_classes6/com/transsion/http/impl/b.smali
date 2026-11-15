.class Lcom/transsion/http/impl/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/BitmapCallback;->s(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:Lcom/transsion/http/impl/BitmapCallback;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/BitmapCallback;[BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/http/impl/b;->c:Lcom/transsion/http/impl/BitmapCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/http/impl/b;->a:[B

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/http/impl/b;->b:I

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/http/impl/b;->c:Lcom/transsion/http/impl/BitmapCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/http/impl/b;->a:[B

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/http/impl/BitmapCallback;->w(Lcom/transsion/http/impl/BitmapCallback;[B)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/transsion/http/impl/b;->c:Lcom/transsion/http/impl/BitmapCallback;

    .line 10
    .line 11
    new-instance v2, Lcom/transsion/http/impl/a;

    .line 12
    .line 13
    invoke-direct {v2, p0, v0}, Lcom/transsion/http/impl/a;-><init>(Lcom/transsion/http/impl/b;Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
