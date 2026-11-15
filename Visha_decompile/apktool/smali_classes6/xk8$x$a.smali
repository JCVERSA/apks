.class public final Lxk8$x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk8$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroid/net/Uri;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lxk8$x;
    .locals 9

    new-instance v8, Lxk8$x;

    iget v1, p0, Lxk8$x$a;->a:I

    iget-object v2, p0, Lxk8$x$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lxk8$x$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lxk8$x$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lxk8$x$a;->e:Landroid/net/Uri;

    iget-object v6, p0, Lxk8$x$a;->f:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lxk8$x;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public final b(Ljava/lang/String;)Lxk8$x$a;
    .locals 0

    iput-object p1, p0, Lxk8$x$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lxk8$x$a;
    .locals 0

    iput-object p1, p0, Lxk8$x$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final d(I)Lxk8$x$a;
    .locals 0

    iput p1, p0, Lxk8$x$a;->a:I

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lxk8$x$a;
    .locals 0

    iput-object p1, p0, Lxk8$x$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lxk8$x$a;
    .locals 0

    iput-object p1, p0, Lxk8$x$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final g(Landroid/net/Uri;)Lxk8$x$a;
    .locals 0

    iput-object p1, p0, Lxk8$x$a;->e:Landroid/net/Uri;

    return-object p0
.end method
