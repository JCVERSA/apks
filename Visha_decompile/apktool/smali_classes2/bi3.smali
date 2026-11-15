.class public final synthetic Lbi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/exoplayer2/t$e;

.field public final synthetic c:Lcom/google/android/exoplayer2/t$e;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbi3;->a:I

    iput-object p2, p0, Lbi3;->b:Lcom/google/android/exoplayer2/t$e;

    iput-object p3, p0, Lbi3;->c:Lcom/google/android/exoplayer2/t$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lbi3;->a:I

    iget-object v1, p0, Lbi3;->b:Lcom/google/android/exoplayer2/t$e;

    iget-object p0, p0, Lbi3;->c:Lcom/google/android/exoplayer2/t$e;

    check-cast p1, Lcom/google/android/exoplayer2/t$d;

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/exoplayer2/i;->t(ILcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method
