.class public final Lvch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldeh;


# instance fields
.field public final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvch;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lvch;->a:Landroid/os/Bundle;

    check-cast p1, Lkyf;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lkyf;->b:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lvch;->a:Landroid/os/Bundle;

    check-cast p1, Lkyf;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lkyf;->a:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
