.class Landroidx/browser/browseractions/BrowserServiceFileProvider$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$resolver:Landroid/content/ContentResolver;

.field final synthetic val$result:Landroidx/concurrent/futures/b;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroidx/concurrent/futures/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$1;->val$resolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$1;->val$uri:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$1;->val$result:Landroidx/concurrent/futures/b;

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
    :try_start_0
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$1;->val$resolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$1;->val$uri:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v2, "r"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$1;->val$result:Landroidx/concurrent/futures/b;

    .line 14
    .line 15
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/b;->v(Ljava/lang/Throwable;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 35
    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$1;->val$result:Landroidx/concurrent/futures/b;

    .line 40
    .line 41
    new-instance v1, Ljava/io/IOException;

    .line 42
    .line 43
    const-string v2, "File could not be decoded."

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/b;->v(Ljava/lang/Throwable;)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$1;->val$result:Landroidx/concurrent/futures/b;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/b;->u(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :goto_0
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserServiceFileProvider$1;->val$result:Landroidx/concurrent/futures/b;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/b;->v(Ljava/lang/Throwable;)Z

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void
.end method
