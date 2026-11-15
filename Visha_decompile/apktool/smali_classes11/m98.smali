.class public final synthetic Lm98;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

.field public final synthetic c:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm98;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iput-object p2, p0, Lm98;->c:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lm98;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object p0, p0, Lm98;->c:Landroid/os/PersistableBundle;

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->z0(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Landroid/os/PersistableBundle;)V

    return-void
.end method
