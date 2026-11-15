.class public final Lxk8$c;
.super Lxk8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxk8$c$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(IIZLjava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lxk8;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput p1, p0, Lxk8$c;->a:I

    .line 4
    iput p2, p0, Lxk8$c;->b:I

    .line 5
    iput-boolean p3, p0, Lxk8$c;->c:Z

    .line 6
    iput-object p4, p0, Lxk8$c;->d:Ljava/lang/String;

    .line 7
    iput p5, p0, Lxk8$c;->e:I

    .line 8
    iput-boolean p6, p0, Lxk8$c;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(IIZLjava/lang/String;IZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lxk8$c;-><init>(IIZLjava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lxk8$c;->f:Z

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lxk8$c;->c:Z

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lxk8$c;->e:I

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxk8$c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lxk8$c;->a:I

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lxk8$c;->b:I

    return p0
.end method
