.class public final Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 3
    iput-object p2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 1

    const-string v0, "oldHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newHolder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5
    iput p3, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c:I

    .line 6
    iput p4, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->d:I

    .line 7
    iput p5, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->e:I

    .line 8
    iput p6, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->d:I

    return p0
.end method

.method public final c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public final d()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->e:I

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->f:I

    return p0
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c:I

    iget v3, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->d:I

    iget v4, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->e:I

    iget p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->f:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChangeInfo{oldHolder="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", newHolder="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fromX="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fromY="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toX="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toY="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
