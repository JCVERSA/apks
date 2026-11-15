.class public final synthetic Lq22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# instance fields
.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Lcom/google/android/exoplayer2/upstream/a$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq22;->b:Ljava/lang/Class;

    iput-object p2, p0, Lq22;->c:Lcom/google/android/exoplayer2/upstream/a$a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lq22;->b:Ljava/lang/Class;

    iget-object p0, p0, Lq22;->c:Lcom/google/android/exoplayer2/upstream/a$a;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/source/d$a;->c(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/a$a;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method
