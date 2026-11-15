.class public final Ltag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lolg;

.field public final b:Lolg;

.field public c:Ljava/lang/Object;

.field public final d:Lw4j;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Ltbg;Lw4j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p4, p2, v0}, Ltbg;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lolg;

    move-result-object p2

    iput-object p2, p0, Ltag;->a:Lolg;

    invoke-interface {p4, p3, v0}, Ltbg;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lolg;

    move-result-object p2

    iput-object p2, p0, Ltag;->b:Lolg;

    iput-object p1, p0, Ltag;->c:Ljava/lang/Object;

    iput-object p5, p0, Ltag;->d:Lw4j;

    return-void
.end method

.method public static synthetic a(Ltag;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ltag;->c:Ljava/lang/Object;

    iput-object p1, p0, Ltag;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Ltag;->d:Lw4j;

    invoke-virtual {p0, v0, p1}, Lw4j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Ltag;->a:Lolg;

    invoke-interface {p0, p1}, Lolg;->f(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzde;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzde;-><init>(Ltag;Ljava/lang/Object;)V

    iget-object p0, p0, Ltag;->b:Lolg;

    invoke-interface {p0, v0}, Lolg;->f(Ljava/lang/Runnable;)Z

    return-void
.end method
