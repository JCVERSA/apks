.class public final Lxk8$u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk8$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lxk8$u;
    .locals 8

    new-instance v7, Lxk8$u;

    iget-object v1, p0, Lxk8$u$a;->a:Ljava/lang/Long;

    iget-object v2, p0, Lxk8$u$a;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lxk8$u$a;->c:Z

    iget-boolean v4, p0, Lxk8$u$a;->d:Z

    iget-object v5, p0, Lxk8$u$a;->e:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lxk8$u;-><init>(Ljava/lang/Long;Ljava/lang/String;ZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final b(Z)Lxk8$u$a;
    .locals 0

    iput-boolean p1, p0, Lxk8$u$a;->c:Z

    return-object p0
.end method

.method public final c(Z)Lxk8$u$a;
    .locals 0

    iput-boolean p1, p0, Lxk8$u$a;->d:Z

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lxk8$u$a;
    .locals 0

    iput-object p1, p0, Lxk8$u$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final e(J)Lxk8$u$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lxk8$u$a;->a:Ljava/lang/Long;

    return-object p0
.end method
