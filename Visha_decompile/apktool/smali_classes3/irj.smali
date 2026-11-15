.class public final synthetic Lirj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxh1;


# instance fields
.field public final synthetic a:Liw8;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Liw8;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lirj;->a:Liw8;

    iput-object p2, p0, Lirj;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lxda;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lirj;->a:Liw8;

    iget-object p0, p0, Lirj;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p0, p1}, Liw8;->f(Landroid/os/Bundle;Lxda;)Lxda;

    move-result-object p0

    return-object p0
.end method
