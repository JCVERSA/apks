.class public final synthetic Ljp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxh1;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljp3;->a:Landroid/content/Context;

    iput-object p2, p0, Ljp3;->b:Landroid/content/Intent;

    iput-boolean p3, p0, Ljp3;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lxda;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljp3;->a:Landroid/content/Context;

    iget-object v1, p0, Ljp3;->b:Landroid/content/Intent;

    iget-boolean p0, p0, Ljp3;->c:Z

    invoke-static {v0, v1, p0, p1}, Lmp3;->a(Landroid/content/Context;Landroid/content/Intent;ZLxda;)Lxda;

    move-result-object p0

    return-object p0
.end method
