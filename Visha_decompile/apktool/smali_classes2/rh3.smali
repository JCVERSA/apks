.class public final synthetic Lrh3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrh3;->a:I

    iput p2, p0, Lrh3;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lrh3;->a:I

    iget p0, p0, Lrh3;->b:I

    check-cast p1, Lcom/google/android/exoplayer2/t$d;

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/i;->i(IILcom/google/android/exoplayer2/t$d;)V

    return-void
.end method
