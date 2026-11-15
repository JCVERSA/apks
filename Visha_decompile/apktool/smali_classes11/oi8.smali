.class public final synthetic Loi8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/promotion/PromotionManager;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lli9;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/promotion/PromotionManager;IILandroid/content/Context;Lli9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi8;->b:Lcom/transsion/onlinevideo/promotion/PromotionManager;

    iput p2, p0, Loi8;->c:I

    iput p3, p0, Loi8;->d:I

    iput-object p4, p0, Loi8;->e:Landroid/content/Context;

    iput-object p5, p0, Loi8;->f:Lli9;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Loi8;->b:Lcom/transsion/onlinevideo/promotion/PromotionManager;

    iget v1, p0, Loi8;->c:I

    iget v2, p0, Loi8;->d:I

    iget-object v3, p0, Loi8;->e:Landroid/content/Context;

    iget-object p0, p0, Loi8;->f:Lli9;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->b(Lcom/transsion/onlinevideo/promotion/PromotionManager;IILandroid/content/Context;Lli9;)V

    return-void
.end method
