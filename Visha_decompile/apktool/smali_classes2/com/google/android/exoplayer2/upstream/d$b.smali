.class public final Lcom/google/android/exoplayer2/upstream/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lgs4;

.field public b:Lu5b;

.field public c:Lhe8;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgs4;

    invoke-direct {v0}, Lgs4;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/d$b;->a:Lgs4;

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/d$b;->e:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/d$b;->f:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/d;
    .locals 10

    new-instance v9, Lcom/google/android/exoplayer2/upstream/d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/d$b;->d:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/d$b;->e:I

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/d$b;->f:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/d$b;->g:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/d$b;->a:Lgs4;

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/d$b;->c:Lhe8;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/upstream/d$b;->h:Z

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/d;-><init>(Ljava/lang/String;IIZLgs4;Lhe8;ZLcom/google/android/exoplayer2/upstream/d$a;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/d$b;->b:Lu5b;

    if-eqz p0, :cond_0

    invoke-virtual {v9, p0}, Lu90;->b(Lu5b;)V

    :cond_0
    return-object v9
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/d$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/d$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/a;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/d$b;->a()Lcom/google/android/exoplayer2/upstream/d;

    move-result-object p0

    return-object p0
.end method
