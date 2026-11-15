.class public final synthetic Ljk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljk;->b:Landroid/os/Bundle;

    iput-object p2, p0, Ljk;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ljk;->b:Landroid/os/Bundle;

    iget-object p0, p0, Ljk;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lvk;->l(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
