.class public final Lcom/yandex/div/core/view2/errors/VariableAdapter$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/errors/VariableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lynb;Lynb;)Z
    .locals 0

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lynb;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lynb;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lynb;

    check-cast p2, Lynb;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/errors/VariableAdapter$a;->a(Lynb;Lynb;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lynb;

    check-cast p2, Lynb;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/errors/VariableAdapter$a;->b(Lynb;Lynb;)Z

    move-result p0

    return p0
.end method

.method public b(Lynb;Lynb;)Z
    .locals 0

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lynb;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lynb;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
