.class public Lqnb$c;
.super Lqnb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lqnb;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lqnb$c;->b:Ljava/lang/String;

    iput p2, p0, Lqnb$c;->c:I

    invoke-virtual {p0}, Lqnb$c;->r()I

    move-result p1

    invoke-static {p1}, Lk81;->d(I)I

    move-result p1

    iput p1, p0, Lqnb$c;->d:I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqnb$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public r()I
    .locals 0

    iget p0, p0, Lqnb$c;->c:I

    return p0
.end method

.method public s()I
    .locals 0

    iget p0, p0, Lqnb$c;->d:I

    return p0
.end method

.method public t(I)V
    .locals 2

    sget-object v0, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    invoke-static {p1}, Lk81;->c(I)Lk81;

    move-result-object v1

    invoke-interface {v0, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lk81;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lqnb$c;->u(I)V

    return-void

    :cond_0
    new-instance p0, Lcom/yandex/div/data/VariableMutationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong value format for color variable: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lk81;->j(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/yandex/div/data/VariableMutationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public u(I)V
    .locals 1

    iget v0, p0, Lqnb$c;->d:I

    invoke-static {v0, p1}, Lk81;->f(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lqnb$c;->d:I

    invoke-virtual {p0, p0}, Lqnb;->d(Lqnb;)V

    return-void
.end method
