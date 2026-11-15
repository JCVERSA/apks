.class public final Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->b:I

    iput p3, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->c:I

    iput p4, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->d:I

    iput p5, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->b:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->c:I

    return p0
.end method

.method public final c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->d:I

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->e:I

    return p0
.end method
