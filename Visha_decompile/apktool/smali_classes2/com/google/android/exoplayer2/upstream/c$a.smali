.class public final Lcom/google/android/exoplayer2/upstream/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/exoplayer2/upstream/a$a;

.field public c:Lu5b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/d$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/d$b;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/c$a;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/c$a;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/c$a;->b:Lcom/google/android/exoplayer2/upstream/a$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/c;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/c$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/c$a;->b:Lcom/google/android/exoplayer2/upstream/a$a;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/a$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/c;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/a;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/c$a;->c:Lu5b;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/c;->b(Lu5b;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/a;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/c$a;->a()Lcom/google/android/exoplayer2/upstream/c;

    move-result-object p0

    return-object p0
.end method
