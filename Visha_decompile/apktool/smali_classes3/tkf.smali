.class public final Ltkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lokf;


# direct methods
.method public constructor <init>(Lokf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltkf;->a:Lokf;

    return-void
.end method

.method public static b(Lokf;)Ljava/lang/ref/WeakReference;
    .locals 0

    invoke-virtual {p0}, Lokf;->g()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Ltkf;->a:Lokf;

    invoke-static {p0}, Ltkf;->b(Lokf;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ltkf;->a:Lokf;

    invoke-static {p0}, Ltkf;->b(Lokf;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    return-object p0
.end method
