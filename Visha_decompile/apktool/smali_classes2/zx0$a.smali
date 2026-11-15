.class public final Lzx0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzx0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lxna;

.field public b:Ljava/util/List;

.field public c:Loi4;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzx0$a;->a:Lxna;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lzx0$a;->b:Ljava/util/List;

    iput-object v0, p0, Lzx0$a;->c:Loi4;

    const-string v0, ""

    iput-object v0, p0, Lzx0$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lzp5;)Lzx0$a;
    .locals 1

    iget-object v0, p0, Lzx0$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lzx0;
    .locals 4

    new-instance v0, Lzx0;

    iget-object v1, p0, Lzx0$a;->a:Lxna;

    iget-object v2, p0, Lzx0$a;->b:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lzx0$a;->c:Loi4;

    iget-object p0, p0, Lzx0$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lzx0;-><init>(Lxna;Ljava/util/List;Loi4;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lzx0$a;
    .locals 0

    iput-object p1, p0, Lzx0$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Loi4;)Lzx0$a;
    .locals 0

    iput-object p1, p0, Lzx0$a;->c:Loi4;

    return-object p0
.end method

.method public e(Lxna;)Lzx0$a;
    .locals 0

    iput-object p1, p0, Lzx0$a;->a:Lxna;

    return-object p0
.end method
