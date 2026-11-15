.class public Lcom/transsion/onlinevideo/topic/AllTagFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/topic/AllTagFragment;->j0(ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/topic/AllTagFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment$a;->b:Lcom/transsion/onlinevideo/topic/AllTagFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment$a;->b:Lcom/transsion/onlinevideo/topic/AllTagFragment;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->E:Z

    iget p1, v0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->F:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    invoke-static {v0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->d0(Lcom/transsion/onlinevideo/topic/AllTagFragment;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment$a;->b:Lcom/transsion/onlinevideo/topic/AllTagFragment;

    iget v3, p1, Lcom/transsion/onlinevideo/topic/AllTagFragment;->r:I

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->z0(JIIZ)V

    goto :goto_0

    :cond_1
    iget p1, v0, Lcom/transsion/onlinevideo/topic/AllTagFragment;->r:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->y0(IIZ)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/topic/AllTagFragment$a;->b:Lcom/transsion/onlinevideo/topic/AllTagFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->e0(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V

    :goto_1
    return-void
.end method
