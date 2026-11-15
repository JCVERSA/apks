.class public final synthetic Laz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/audio/b$a;

.field public final synthetic c:Lju1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/b$a;Lju1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laz;->b:Lcom/google/android/exoplayer2/audio/b$a;

    iput-object p2, p0, Laz;->c:Lju1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Laz;->b:Lcom/google/android/exoplayer2/audio/b$a;

    iget-object p0, p0, Laz;->c:Lju1;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/audio/b$a;->e(Lcom/google/android/exoplayer2/audio/b$a;Lju1;)V

    return-void
.end method
