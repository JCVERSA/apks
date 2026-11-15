.class public final Lyt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt2$a;,
        Lyt2$b;,
        Lyt2$c;,
        Lyt2$d;
    }
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/Div;

.field public final b:Loj3;

.field public final c:Le74;

.field public final d:Le74;

.field public final e:I


# direct methods
.method public constructor <init>(Lcom/yandex/div2/Div;Loj3;)V
    .locals 9

    const-string v0, "root"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 8
    invoke-direct/range {v1 .. v8}, Lyt2;-><init>(Lcom/yandex/div2/Div;Loj3;Le74;Le74;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/Div;Loj3;Le74;Le74;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lyt2;->a:Lcom/yandex/div2/Div;

    .line 3
    iput-object p2, p0, Lyt2;->b:Loj3;

    .line 4
    iput-object p3, p0, Lyt2;->c:Le74;

    .line 5
    iput-object p4, p0, Lyt2;->d:Le74;

    .line 6
    iput p5, p0, Lyt2;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div2/Div;Loj3;Le74;Le74;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const p5, 0x7fffffff

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lyt2;-><init>(Lcom/yandex/div2/Div;Loj3;Le74;Le74;I)V

    return-void
.end method

.method public static final synthetic b(Lyt2;)I
    .locals 0

    iget p0, p0, Lyt2;->e:I

    return p0
.end method

.method public static final synthetic c(Lyt2;)Le74;
    .locals 0

    iget-object p0, p0, Lyt2;->c:Le74;

    return-object p0
.end method

.method public static final synthetic d(Lyt2;)Le74;
    .locals 0

    iget-object p0, p0, Lyt2;->d:Le74;

    return-object p0
.end method


# virtual methods
.method public final e(Le74;)Lyt2;
    .locals 7

    const-string v0, "predicate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyt2;

    iget-object v2, p0, Lyt2;->a:Lcom/yandex/div2/Div;

    iget-object v3, p0, Lyt2;->b:Loj3;

    iget-object v5, p0, Lyt2;->d:Le74;

    iget v6, p0, Lyt2;->e:I

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lyt2;-><init>(Lcom/yandex/div2/Div;Loj3;Le74;Le74;I)V

    return-object v0
.end method

.method public final f(Le74;)Lyt2;
    .locals 7

    const-string v0, "function"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyt2;

    iget-object v2, p0, Lyt2;->a:Lcom/yandex/div2/Div;

    iget-object v3, p0, Lyt2;->b:Loj3;

    iget-object v4, p0, Lyt2;->c:Le74;

    iget v6, p0, Lyt2;->e:I

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lyt2;-><init>(Lcom/yandex/div2/Div;Loj3;Le74;Le74;I)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lyt2$b;

    iget-object v1, p0, Lyt2;->a:Lcom/yandex/div2/Div;

    iget-object v2, p0, Lyt2;->b:Loj3;

    invoke-direct {v0, p0, v1, v2}, Lyt2$b;-><init>(Lyt2;Lcom/yandex/div2/Div;Loj3;)V

    return-object v0
.end method
