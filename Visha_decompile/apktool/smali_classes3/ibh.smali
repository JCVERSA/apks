.class public final Libh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldeh;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Libh;->a:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lkyf;

    iget-object p1, p1, Lkyf;->b:Landroid/os/Bundle;

    const-string v0, "is_gbid"

    iget-boolean p0, p0, Libh;->a:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lkyf;

    iget-object p1, p1, Lkyf;->a:Landroid/os/Bundle;

    const-string v0, "is_gbid"

    iget-boolean p0, p0, Libh;->a:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
