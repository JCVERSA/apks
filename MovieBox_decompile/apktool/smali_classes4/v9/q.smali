.class public final synthetic Lv9/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/p$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/p;

.field public final synthetic c:Lv9/i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lv9/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv9/q;->a:Lcom/google/android/exoplayer2/source/p$a;

    .line 5
    .line 6
    iput-object p2, p0, Lv9/q;->b:Lcom/google/android/exoplayer2/source/p;

    .line 7
    .line 8
    iput-object p3, p0, Lv9/q;->c:Lv9/i;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv9/q;->a:Lcom/google/android/exoplayer2/source/p$a;

    .line 2
    .line 3
    iget-object v1, p0, Lv9/q;->b:Lcom/google/android/exoplayer2/source/p;

    .line 4
    .line 5
    iget-object v2, p0, Lv9/q;->c:Lv9/i;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->e(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lv9/i;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
