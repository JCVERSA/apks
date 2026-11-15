.class public final synthetic Lwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/topic/AllTagFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/topic/AllTagFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwa;->a:Lcom/transsion/onlinevideo/topic/AllTagFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lwa;->a:Lcom/transsion/onlinevideo/topic/AllTagFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/topic/AllTagFragment;->Q(Lcom/transsion/onlinevideo/topic/AllTagFragment;Ljava/util/List;)V

    return-void
.end method
