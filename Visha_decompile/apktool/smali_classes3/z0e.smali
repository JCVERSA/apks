.class public final Lz0e;
.super Ls1e;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lz0e;->b:Landroid/content/Intent;

    iput-object p2, p0, Lz0e;->c:Landroid/app/Activity;

    iput p3, p0, Lz0e;->d:I

    invoke-direct {p0}, Ls1e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lz0e;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz0e;->c:Landroid/app/Activity;

    iget p0, p0, Lz0e;->d:I

    invoke-virtual {v1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
