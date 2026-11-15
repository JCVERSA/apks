.class public final Ld7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldeh;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7h;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lkyf;

    iget-object p1, p1, Lkyf;->a:Landroid/os/Bundle;

    const-string v0, "android_permissions"

    iget-object p0, p0, Ld7h;->a:Ljava/util/ArrayList;

    invoke-static {p1, v0, p0}, Lunh;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
