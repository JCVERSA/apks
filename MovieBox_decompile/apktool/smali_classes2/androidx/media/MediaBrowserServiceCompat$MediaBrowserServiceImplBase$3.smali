.class Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroidx/media/MediaBrowserServiceCompat$j;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;

.field final synthetic val$remoteUserInfo:Landroidx/media/b;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$j;Landroidx/media/b;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->val$remoteUserInfo:Landroidx/media/b;

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->val$parentId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->val$options:Landroid/os/Bundle;

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
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->this$1:Landroidx/media/MediaBrowserServiceCompat$j;

    .line 3
    .line 4
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$j;->a:Landroidx/media/MediaBrowserServiceCompat;

    .line 5
    .line 6
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/collection/a;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/collection/x0;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->this$1:Landroidx/media/MediaBrowserServiceCompat$j;

    .line 15
    .line 16
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$j;->a:Landroidx/media/MediaBrowserServiceCompat;

    .line 17
    .line 18
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/collection/a;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroidx/collection/x0;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 25
    .line 26
    iget-object v2, v1, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->d:Landroidx/media/b;

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->val$remoteUserInfo:Landroidx/media/b;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroidx/media/b;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->this$1:Landroidx/media/MediaBrowserServiceCompat$j;

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->val$parentId:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3;->val$options:Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media/MediaBrowserServiceCompat$j;->c(Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    return-void
.end method
