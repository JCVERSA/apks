.class public final synthetic Lqh7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh7;->b:Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;

    iput-boolean p2, p0, Lqh7;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lqh7;->b:Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;

    iget-boolean p0, p0, Lqh7;->c:Z

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->K0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;ZLandroid/view/View;)V

    return-void
.end method
