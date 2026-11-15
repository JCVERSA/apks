.class public final Lxk8$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk8$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lxk8$c$a;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lxk8$c;
    .locals 8

    iget v1, p0, Lxk8$c$a;->a:I

    iget-boolean v3, p0, Lxk8$c$a;->c:Z

    iget v2, p0, Lxk8$c$a;->b:I

    iget-object v4, p0, Lxk8$c$a;->d:Ljava/lang/String;

    iget v5, p0, Lxk8$c$a;->e:I

    iget-boolean v6, p0, Lxk8$c$a;->f:Z

    new-instance p0, Lxk8$c;

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lxk8$c;-><init>(IIZLjava/lang/String;IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final b(Z)Lxk8$c$a;
    .locals 0

    iput-boolean p1, p0, Lxk8$c$a;->f:Z

    return-object p0
.end method

.method public final c(Z)Lxk8$c$a;
    .locals 0

    iput-boolean p1, p0, Lxk8$c$a;->c:Z

    return-object p0
.end method

.method public final d(I)Lxk8$c$a;
    .locals 0

    iput p1, p0, Lxk8$c$a;->e:I

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lxk8$c$a;
    .locals 0

    iput-object p1, p0, Lxk8$c$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final f(I)Lxk8$c$a;
    .locals 0

    iput p1, p0, Lxk8$c$a;->a:I

    return-object p0
.end method

.method public final g(I)Lxk8$c$a;
    .locals 0

    iput p1, p0, Lxk8$c$a;->b:I

    return-object p0
.end method
