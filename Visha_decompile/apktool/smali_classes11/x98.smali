.class public final synthetic Lx98;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx98;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iput-boolean p2, p0, Lx98;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx98;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-boolean p0, p0, Lx98;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->a1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Z)V

    return-void
.end method
