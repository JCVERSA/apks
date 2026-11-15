.class public final synthetic Lql6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/source/j$a;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/j;

.field public final synthetic d:Lin5;

.field public final synthetic e:Lih6;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lql6;->b:Lcom/google/android/exoplayer2/source/j$a;

    iput-object p2, p0, Lql6;->c:Lcom/google/android/exoplayer2/source/j;

    iput-object p3, p0, Lql6;->d:Lin5;

    iput-object p4, p0, Lql6;->e:Lih6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lql6;->b:Lcom/google/android/exoplayer2/source/j$a;

    iget-object v1, p0, Lql6;->c:Lcom/google/android/exoplayer2/source/j;

    iget-object v2, p0, Lql6;->d:Lin5;

    iget-object p0, p0, Lql6;->e:Lih6;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/exoplayer2/source/j$a;->a(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V

    return-void
.end method
