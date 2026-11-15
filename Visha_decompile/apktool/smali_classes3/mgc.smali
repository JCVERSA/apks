.class public final synthetic Lmgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpe7;


# instance fields
.field public final synthetic a:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmgc;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onComplete(Lxda;)V
    .locals 0

    iget-object p0, p0, Lmgc;->a:Landroid/content/Intent;

    invoke-static {p0, p1}, Lngc;->a(Landroid/content/Intent;Lxda;)V

    return-void
.end method
