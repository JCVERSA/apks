.class public final synthetic Lss3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic b:Lrc7;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lrc7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss3;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lss3;->b:Lrc7;

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lss3;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Lss3;->b:Lrc7;

    invoke-static {v0, p0, p1, p2}, Lts3;->b(Ljava/util/concurrent/atomic/AtomicInteger;Lrc7;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
