.class public final synthetic Ljh9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljh9;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ljh9;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->p0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)V

    return-void
.end method
