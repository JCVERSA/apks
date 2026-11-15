.class public final Ljhi;
.super Lmhi;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lkhi;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lkhi;)V
    .locals 0

    iput-object p3, p0, Ljhi;->c:Lkhi;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lmhi;-><init>(Ljava/lang/Class;Ljava/lang/Class;Llhi;)V

    return-void
.end method


# virtual methods
.method public final a(Lb9i;Lt9i;)Lyji;
    .locals 0

    iget-object p0, p0, Ljhi;->c:Lkhi;

    invoke-interface {p0, p1, p2}, Lkhi;->a(Lb9i;Lt9i;)Lyji;

    move-result-object p0

    return-object p0
.end method
