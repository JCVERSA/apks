.class public final synthetic Lbi9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbi9;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    iput-boolean p2, p0, Lbi9;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbi9;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    iget-boolean p0, p0, Lbi9;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->Q(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Z)V

    return-void
.end method
