.class public final synthetic Lpi8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ILcom/transsion/dbdata/beans/onlinevideo/PromotionBean;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpi8;->b:I

    iput-object p2, p0, Lpi8;->c:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    iput-object p3, p0, Lpi8;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lpi8;->b:I

    iget-object v1, p0, Lpi8;->c:Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;

    iget-object p0, p0, Lpi8;->d:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->a(ILcom/transsion/dbdata/beans/onlinevideo/PromotionBean;Landroid/content/Context;)V

    return-void
.end method
