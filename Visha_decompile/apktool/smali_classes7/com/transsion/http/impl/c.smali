.class Lcom/transsion/http/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/BitmapCallback;->o(I[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/transsion/http/impl/BitmapCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/http/impl/BitmapCallback;ILjava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/impl/c;->c:Lcom/transsion/http/impl/BitmapCallback;

    iput p2, p0, Lcom/transsion/http/impl/c;->a:I

    iput-object p3, p0, Lcom/transsion/http/impl/c;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/http/impl/c;->c:Lcom/transsion/http/impl/BitmapCallback;

    iget v1, p0, Lcom/transsion/http/impl/c;->a:I

    iget-object p0, p0, Lcom/transsion/http/impl/c;->b:Ljava/lang/Throwable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/http/impl/BitmapCallback;->E(ILandroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    return-void
.end method
