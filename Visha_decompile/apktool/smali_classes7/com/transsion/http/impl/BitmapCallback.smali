.class public abstract Lcom/transsion/http/impl/BitmapCallback;
.super Lds4;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lds4;-><init>()V

    return-void
.end method

.method public static synthetic C(Lcom/transsion/http/impl/BitmapCallback;[B)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/BitmapCallback;->D([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final D([B)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Ljo0;->f(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public abstract E(ILandroid/graphics/Bitmap;Ljava/lang/Throwable;)V
.end method

.method public abstract F(ILandroid/graphics/Bitmap;)V
.end method

.method public o(I[BLjava/lang/Throwable;)V
    .locals 0

    new-instance p2, Lcom/transsion/http/impl/c;

    invoke-direct {p2, p0, p1, p3}, Lcom/transsion/http/impl/c;-><init>(Lcom/transsion/http/impl/BitmapCallback;ILjava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lds4;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v(I[B)V
    .locals 1

    new-instance v0, Lcom/transsion/http/impl/b;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/http/impl/b;-><init>(Lcom/transsion/http/impl/BitmapCallback;[BI)V

    invoke-virtual {p0}, Lds4;->m()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lds4;->l()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
