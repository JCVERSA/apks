.class public final Lebh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldeh;


# instance fields
.field public final a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lebh;->a:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lebh;->a:Ljava/lang/Integer;

    check-cast p1, Lkyf;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lkyf;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x14

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const-string v0, "dspct"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
