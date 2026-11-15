.class public final Lm1e;
.super Ls1e;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Lvk5;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lvk5;I)V
    .locals 0

    iput-object p1, p0, Lm1e;->b:Landroid/content/Intent;

    iput-object p2, p0, Lm1e;->c:Lvk5;

    invoke-direct {p0}, Ls1e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lm1e;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm1e;->c:Lvk5;

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Lvk5;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
