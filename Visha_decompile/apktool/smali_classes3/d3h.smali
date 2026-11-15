.class public final Ld3h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyag;


# direct methods
.method public constructor <init>(Lyag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3h;->a:Lyag;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lvmh;Lhmh;Landroid/view/View;Lz2h;)Ljava/lang/Object;
    .locals 2

    new-instance p3, Lb3h;

    new-instance v0, La3h;

    invoke-direct {v0, p0, p2}, La3h;-><init>(Ld3h;Lhmh;)V

    invoke-direct {p3, p0, v0}, Lb3h;-><init>(Ld3h;Lebg;)V

    new-instance v0, Lpuf;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    iget-object p1, p0, Ld3h;->a:Lyag;

    invoke-virtual {p1, v0, p3}, Lyag;->c(Lpuf;Lw9g;)Lt9g;

    move-result-object p1

    new-instance p2, Lc3h;

    invoke-direct {p2, p0, p1}, Lc3h;-><init>(Ld3h;Lt9g;)V

    invoke-virtual {p4, p2}, Lz2h;->a(Lcom/google/android/gms/ads/internal/zzg;)V

    invoke-virtual {p1}, Lt9g;->i()Ls9g;

    move-result-object p0

    return-object p0
.end method
