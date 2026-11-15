.class public final Lxk8$i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk8$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxk8$i$a;->c:Z

    iput-boolean v0, p0, Lxk8$i$a;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lxk8$i;
    .locals 8

    new-instance v7, Lxk8$i;

    iget-object v1, p0, Lxk8$i$a;->a:Ljava/lang/Long;

    iget-object v2, p0, Lxk8$i$a;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lxk8$i$a;->c:Z

    iget-object v4, p0, Lxk8$i$a;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lxk8$i$a;->e:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lxk8$i;-><init>(Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final b(J)Lxk8$i$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lxk8$i$a;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public final c(Z)Lxk8$i$a;
    .locals 0

    iput-boolean p1, p0, Lxk8$i$a;->c:Z

    return-object p0
.end method

.method public final d(Z)Lxk8$i$a;
    .locals 0

    iput-boolean p1, p0, Lxk8$i$a;->e:Z

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lxk8$i$a;
    .locals 0

    iput-object p1, p0, Lxk8$i$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lxk8$i$a;
    .locals 0

    iput-object p1, p0, Lxk8$i$a;->b:Ljava/lang/String;

    return-object p0
.end method
