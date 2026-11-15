.class public final synthetic Lml6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/source/j$a;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/j;

.field public final synthetic d:Lin5;

.field public final synthetic e:Lih6;

.field public final synthetic f:Ljava/io/IOException;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lml6;->b:Lcom/google/android/exoplayer2/source/j$a;

    iput-object p2, p0, Lml6;->c:Lcom/google/android/exoplayer2/source/j;

    iput-object p3, p0, Lml6;->d:Lin5;

    iput-object p4, p0, Lml6;->e:Lih6;

    iput-object p5, p0, Lml6;->f:Ljava/io/IOException;

    iput-boolean p6, p0, Lml6;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lml6;->b:Lcom/google/android/exoplayer2/source/j$a;

    iget-object v1, p0, Lml6;->c:Lcom/google/android/exoplayer2/source/j;

    iget-object v2, p0, Lml6;->d:Lin5;

    iget-object v3, p0, Lml6;->e:Lih6;

    iget-object v4, p0, Lml6;->f:Ljava/io/IOException;

    iget-boolean v5, p0, Lml6;->g:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/j$a;->b(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;Ljava/io/IOException;Z)V

    return-void
.end method
