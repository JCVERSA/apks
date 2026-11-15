.class public final Lgui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1f;


# instance fields
.field public final synthetic a:Ll1j;


# direct methods
.method public constructor <init>(Ll1j;)V
    .locals 0

    iput-object p1, p0, Lgui;->a:Ll1j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/location/zzam;
    .locals 0

    iget-object p0, p0, Lgui;->a:Ll1j;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzam;

    return-object p0
.end method
