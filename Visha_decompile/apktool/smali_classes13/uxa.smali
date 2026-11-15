.class public final synthetic Luxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/tranplayer/TranMediaPlayer;

.field public final synthetic c:[I

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Landroid/net/Uri;

.field public final synthetic f:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tranplayer/TranMediaPlayer;[ILandroid/content/Context;Landroid/net/Uri;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luxa;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    iput-object p2, p0, Luxa;->c:[I

    iput-object p3, p0, Luxa;->d:Landroid/content/Context;

    iput-object p4, p0, Luxa;->e:Landroid/net/Uri;

    iput-object p5, p0, Luxa;->f:Ljava/util/concurrent/CountDownLatch;

    iput-object p6, p0, Luxa;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Luxa;->b:Lcom/transsion/tranplayer/TranMediaPlayer;

    iget-object v1, p0, Luxa;->c:[I

    iget-object v2, p0, Luxa;->d:Landroid/content/Context;

    iget-object v3, p0, Luxa;->e:Landroid/net/Uri;

    iget-object v4, p0, Luxa;->f:Ljava/util/concurrent/CountDownLatch;

    iget-object v5, p0, Luxa;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static/range {v0 .. v5}, Lcom/transsion/tranplayer/TranMediaPlayer;->a(Lcom/transsion/tranplayer/TranMediaPlayer;[ILandroid/content/Context;Landroid/net/Uri;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
