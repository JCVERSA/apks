.class public final Lcom/google/android/exoplayer2/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwl6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/g;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/i;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/source/g;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/source/g;-><init>(Lcom/google/android/exoplayer2/source/i;Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/q$c;->a:Lcom/google/android/exoplayer2/source/g;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->c:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/q$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/q$c;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/q$c;->e:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$c;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getTimeline()Lcom/google/android/exoplayer2/a0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$c;->a:Lcom/google/android/exoplayer2/source/g;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/g;->H()Lcom/google/android/exoplayer2/a0;

    move-result-object p0

    return-object p0
.end method

.method public getUid()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$c;->b:Ljava/lang/Object;

    return-object p0
.end method
