.class public Lt30$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt30$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lt30$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqw7;)V
    .locals 1

    invoke-virtual {p1}, Lqw7;->p()I

    move-result v0

    iput v0, p0, Lt30$c;->a:I

    invoke-virtual {p1}, Lqw7;->p()I

    move-result p1

    iput p1, p0, Lt30$c;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lt30$c;->c:I

    return-void
.end method

.method public b(Lqw7;)V
    .locals 2

    invoke-virtual {p0, p1}, Lt30$c;->a(Lqw7;)V

    iget v0, p0, Lt30$c;->a:I

    const v1, 0x5453494c

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lqw7;->p()I

    move-result p1

    iput p1, p0, Lt30$c;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LIST expected, found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lt30$c;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method
