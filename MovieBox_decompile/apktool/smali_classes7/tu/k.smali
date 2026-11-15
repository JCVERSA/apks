.class public final synthetic Ltu/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltu/k;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Ltu/k;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Ltu/k;->c:Landroid/os/Bundle;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltu/k;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Ltu/k;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Ltu/k;->c:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Ltu/l;->f(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
