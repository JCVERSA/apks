.class public final Lqji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lohi;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lnhi;


# direct methods
.method public constructor <init>(Ljava/util/List;Lnhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqji;->a:Ljava/util/List;

    iput-object p2, p0, Lqji;->b:Lnhi;

    return-void
.end method


# virtual methods
.method public final d(I)Lnhi;
    .locals 0

    iget-object p0, p0, Lqji;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnhi;

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget-object p0, p0, Lqji;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final zze()Lnhi;
    .locals 0

    iget-object p0, p0, Lqji;->b:Lnhi;

    return-object p0
.end method
