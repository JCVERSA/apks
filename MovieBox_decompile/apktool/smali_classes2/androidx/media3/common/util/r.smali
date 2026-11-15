.class public final synthetic Landroidx/media3/common/util/r;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Landroidx/media3/common/util/t;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/r;->a:Landroidx/media3/common/util/t;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/r;->a:Landroidx/media3/common/util/t;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/common/util/t;->b(Landroidx/media3/common/util/t;Landroid/os/Message;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
