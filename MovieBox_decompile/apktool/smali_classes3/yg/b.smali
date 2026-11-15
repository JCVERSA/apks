.class public final synthetic Lyg/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lyg/k;

.field public final synthetic b:Landroid/net/Network;

.field public final synthetic c:Landroid/net/NetworkCapabilities;


# direct methods
.method public synthetic constructor <init>(Lyg/k;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyg/b;->a:Lyg/k;

    .line 5
    .line 6
    iput-object p2, p0, Lyg/b;->b:Landroid/net/Network;

    .line 7
    .line 8
    iput-object p3, p0, Lyg/b;->c:Landroid/net/NetworkCapabilities;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyg/b;->a:Lyg/k;

    .line 2
    .line 3
    iget-object v1, p0, Lyg/b;->b:Landroid/net/Network;

    .line 4
    .line 5
    iget-object v2, p0, Lyg/b;->c:Landroid/net/NetworkCapabilities;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lyg/k;->f(Lyg/k;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
