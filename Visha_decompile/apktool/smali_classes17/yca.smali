.class public final Lyca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/yandex/div2/Div;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(ILcom/yandex/div2/Div;Landroid/view/View;)V
    .locals 1

    const-string v0, "div"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyca;->a:I

    iput-object p2, p0, Lyca;->b:Lcom/yandex/div2/Div;

    iput-object p3, p0, Lyca;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div2/Div;
    .locals 0

    iget-object p0, p0, Lyca;->b:Lcom/yandex/div2/Div;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lyca;->a:I

    return p0
.end method

.method public final c()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lyca;->c:Landroid/view/View;

    return-object p0
.end method
