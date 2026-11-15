.class public final synthetic Ls22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/source/d$a;

.field public final synthetic c:Lcom/google/android/exoplayer2/upstream/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/d$a;Lcom/google/android/exoplayer2/upstream/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls22;->b:Lcom/google/android/exoplayer2/source/d$a;

    iput-object p2, p0, Ls22;->c:Lcom/google/android/exoplayer2/upstream/a$a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls22;->b:Lcom/google/android/exoplayer2/source/d$a;

    iget-object p0, p0, Ls22;->c:Lcom/google/android/exoplayer2/upstream/a$a;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/source/d$a;->d(Lcom/google/android/exoplayer2/source/d$a;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method
