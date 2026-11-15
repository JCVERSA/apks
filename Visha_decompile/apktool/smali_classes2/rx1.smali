.class public final synthetic Lrx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/exoplayer2/t$e;

.field public final synthetic d:Lcom/google/android/exoplayer2/t$e;


# direct methods
.method public synthetic constructor <init>(Lnb$a;ILcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx1;->a:Lnb$a;

    iput p2, p0, Lrx1;->b:I

    iput-object p3, p0, Lrx1;->c:Lcom/google/android/exoplayer2/t$e;

    iput-object p4, p0, Lrx1;->d:Lcom/google/android/exoplayer2/t$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lrx1;->a:Lnb$a;

    iget v1, p0, Lrx1;->b:I

    iget-object v2, p0, Lrx1;->c:Lcom/google/android/exoplayer2/t$e;

    iget-object p0, p0, Lrx1;->d:Lcom/google/android/exoplayer2/t$e;

    check-cast p1, Lnb;

    invoke-static {v0, v1, v2, p0, p1}, Lwz1;->u0(Lnb$a;ILcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;Lnb;)V

    return-void
.end method
