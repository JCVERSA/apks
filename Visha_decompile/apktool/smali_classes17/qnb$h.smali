.class public Lqnb$h;
.super Lqnb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Landroid/net/Uri;

.field public d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lqnb;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lqnb$h;->b:Ljava/lang/String;

    iput-object p2, p0, Lqnb$h;->c:Landroid/net/Uri;

    invoke-virtual {p0}, Lqnb$h;->r()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lqnb$h;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqnb$h;->b:Ljava/lang/String;

    return-object p0
.end method

.method public r()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lqnb$h;->c:Landroid/net/Uri;

    return-object p0
.end method

.method public s()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lqnb$h;->d:Landroid/net/Uri;

    return-object p0
.end method

.method public t(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "newValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lqnb$h;->u(Landroid/net/Uri;)V

    return-void
.end method

.method public u(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lqnb$h;->d:Landroid/net/Uri;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lqnb$h;->d:Landroid/net/Uri;

    invoke-virtual {p0, p0}, Lqnb;->d(Lqnb;)V

    return-void
.end method
