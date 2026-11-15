.class public final Lxk8$o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk8$o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lxk8$o$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lxk8$o;
    .locals 7

    new-instance v6, Lxk8$o;

    iget-object v1, p0, Lxk8$o$a;->a:Ljava/util/List;

    iget-object v2, p0, Lxk8$o$a;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lxk8$o$a;->c:Z

    iget-boolean v4, p0, Lxk8$o$a;->d:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lxk8$o;-><init>(Ljava/util/List;Ljava/lang/String;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public final b(Z)Lxk8$o$a;
    .locals 0

    iput-boolean p1, p0, Lxk8$o$a;->c:Z

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lxk8$o$a;
    .locals 0

    iput-object p1, p0, Lxk8$o$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/util/List;)Lxk8$o$a;
    .locals 1

    const-string v0, "mediaIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lxk8$o$a;->a:Ljava/util/List;

    return-object p0
.end method

.method public final e(Z)Lxk8$o$a;
    .locals 0

    iput-boolean p1, p0, Lxk8$o$a;->d:Z

    return-object p0
.end method
