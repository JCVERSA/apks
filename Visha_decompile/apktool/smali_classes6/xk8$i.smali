.class public final Lxk8$i;
.super Lxk8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxk8$i$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lxk8;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lxk8$i;->a:Ljava/lang/Long;

    .line 4
    iput-object p2, p0, Lxk8$i;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lxk8$i;->c:Z

    .line 6
    iput-object p4, p0, Lxk8$i;->d:Ljava/lang/String;

    .line 7
    iput-boolean p5, p0, Lxk8$i;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lxk8$i;-><init>(Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lxk8$i;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lxk8$i;->c:Z

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lxk8$i;->e:Z

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxk8$i;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxk8$i;->b:Ljava/lang/String;

    return-object p0
.end method
