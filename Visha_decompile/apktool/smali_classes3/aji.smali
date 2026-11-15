.class public final Laji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Leji;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Laji;->b:Ljava/util/List;

    iput-object p3, p0, Laji;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Laji;->c:Ljava/util/List;

    iget-object p0, p0, Laji;->b:Ljava/util/List;

    new-instance v1, Lcji;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcji;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Ldji;)V

    return-object v1
.end method
