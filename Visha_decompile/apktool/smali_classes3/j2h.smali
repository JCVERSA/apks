.class public final Lj2h;
.super Lasf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ll2h;Landroid/view/View;Lejf;Lztf;Limh;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p4, p5}, Lasf;-><init>(Landroid/view/View;Lejf;Lztf;Limh;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/util/Set;)Lz0g;
    .locals 0

    new-instance p0, Lz0g;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lz0g;-><init>(Ljava/util/Set;)V

    return-object p0
.end method
