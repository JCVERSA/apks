.class public final Lyt2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyt2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyt2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lzl2;

.field public final b:Le74;

.field public final c:Le74;

.field public d:Z

.field public e:Ljava/util/List;

.field public f:I


# direct methods
.method public constructor <init>(Lzl2;Le74;Le74;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyt2$a;->a:Lzl2;

    iput-object p2, p0, Lyt2$a;->b:Le74;

    iput-object p3, p0, Lyt2$a;->c:Le74;

    return-void
.end method


# virtual methods
.method public a()Lzl2;
    .locals 4

    iget-boolean v0, p0, Lyt2$a;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyt2$a;->b:Le74;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyt2$a;->getItem()Lzl2;

    move-result-object v2

    invoke-virtual {v2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v2

    invoke-interface {v0, v2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyt2$a;->d:Z

    invoke-virtual {p0}, Lyt2$a;->getItem()Lzl2;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lyt2$a;->e:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lyt2$a;->getItem()Lzl2;

    move-result-object v0

    invoke-virtual {v0}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {p0}, Lyt2$a;->getItem()Lzl2;

    move-result-object v2

    invoke-virtual {v2}, Lzl2;->d()Loj3;

    move-result-object v2

    invoke-static {v0, v2}, Lzt2;->a(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyt2$a;->e:Ljava/util/List;

    :cond_2
    iget v2, p0, Lyt2$a;->f:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget v1, p0, Lyt2$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyt2$a;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lzl2;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lyt2$a;->c:Le74;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lyt2$a;->getItem()Lzl2;

    move-result-object p0

    invoke-virtual {p0}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object p0

    invoke-interface {v0, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getItem()Lzl2;
    .locals 0

    iget-object p0, p0, Lyt2$a;->a:Lzl2;

    return-object p0
.end method
