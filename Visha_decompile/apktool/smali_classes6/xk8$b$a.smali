.class public final Lxk8$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk8$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lxk8$b$a;
    .locals 0

    iput-object p1, p0, Lxk8$b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lxk8$b$a;
    .locals 0

    iput-object p1, p0, Lxk8$b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lxk8$b;
    .locals 7

    new-instance v6, Lxk8$b;

    iget-object v1, p0, Lxk8$b$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lxk8$b$a;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lxk8$b$a;->c:Z

    iget-object v4, p0, Lxk8$b$a;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lxk8$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public final d(Ljava/lang/String;)Lxk8$b$a;
    .locals 0

    iput-object p1, p0, Lxk8$b$a;->d:Ljava/lang/String;

    return-object p0
.end method
