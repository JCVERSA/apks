.class public final Lsyi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(IILryi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcyi;->c(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lsyi;->a:Ljava/util/List;

    invoke-static {p2}, Lcyi;->c(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lsyi;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lqyi;)Lsyi;
    .locals 1

    iget-object v0, p0, Lsyi;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(Lqyi;)Lsyi;
    .locals 1

    iget-object v0, p0, Lsyi;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final c()Ltyi;
    .locals 3

    new-instance v0, Ltyi;

    iget-object v1, p0, Lsyi;->a:Ljava/util/List;

    iget-object p0, p0, Lsyi;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Ltyi;-><init>(Ljava/util/List;Ljava/util/List;Lryi;)V

    return-object v0
.end method
