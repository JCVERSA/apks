.class public final Lxk8$u;
.super Lxk8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxk8$u$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lxk8;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lxk8$u;->a:Ljava/lang/Long;

    .line 4
    iput-object p2, p0, Lxk8$u;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lxk8$u;->c:Z

    .line 6
    iput-boolean p4, p0, Lxk8$u;->d:Z

    .line 7
    iput-object p5, p0, Lxk8$u;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;ZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lxk8$u;-><init>(Ljava/lang/Long;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lxk8$u;->c:Z

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxk8$u;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxk8$u;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lxk8$u;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lxk8$u;->d:Z

    return p0
.end method
