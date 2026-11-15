.class public final synthetic Lrh9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrh9;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lrh9;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->X(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Ljava/util/List;)V

    return-void
.end method
