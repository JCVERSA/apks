.class public abstract Lfpa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lzl2;

.field public final b:I

.field public final c:I

.field public final d:Lcom/yandex/div2/Div;


# direct methods
.method public constructor <init>(Lzl2;I)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfpa;->a:Lzl2;

    iput p2, p0, Lfpa;->b:I

    invoke-virtual {p1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/div2/Div;->l()I

    move-result p2

    iput p2, p0, Lfpa;->c:I

    invoke-virtual {p1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object p1

    iput-object p1, p0, Lfpa;->d:Lcom/yandex/div2/Div;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lfpa;->b:I

    return p0
.end method

.method public final b()Lcom/yandex/div2/Div;
    .locals 0

    iget-object p0, p0, Lfpa;->d:Lcom/yandex/div2/Div;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lfpa;->c:I

    return p0
.end method

.method public final d()Lzl2;
    .locals 0

    iget-object p0, p0, Lfpa;->a:Lzl2;

    return-object p0
.end method

.method public final e(Lfpa;)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lfpa;->c:I

    iget v1, p1, Lfpa;->c:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lfpa;->d:Lcom/yandex/div2/Div;

    invoke-static {p0}, Leu2;->g(Lcom/yandex/div2/Div;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lfpa;->d:Lcom/yandex/div2/Div;

    invoke-static {p1}, Leu2;->g(Lcom/yandex/div2/Div;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
