.class public final Lzx0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzx0$a;
    }
.end annotation


# static fields
.field public static final e:Lzx0;


# instance fields
.field public final a:Lxna;

.field public final b:Ljava/util/List;

.field public final c:Loi4;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzx0$a;

    invoke-direct {v0}, Lzx0$a;-><init>()V

    invoke-virtual {v0}, Lzx0$a;->b()Lzx0;

    move-result-object v0

    sput-object v0, Lzx0;->e:Lzx0;

    return-void
.end method

.method public constructor <init>(Lxna;Ljava/util/List;Loi4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzx0;->a:Lxna;

    iput-object p2, p0, Lzx0;->b:Ljava/util/List;

    iput-object p3, p0, Lzx0;->c:Loi4;

    iput-object p4, p0, Lzx0;->d:Ljava/lang/String;

    return-void
.end method

.method public static e()Lzx0$a;
    .locals 1

    new-instance v0, Lzx0$a;

    invoke-direct {v0}, Lzx0$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzx0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b()Loi4;
    .locals 0

    iget-object p0, p0, Lzx0;->c:Loi4;

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lzx0;->b:Ljava/util/List;

    return-object p0
.end method

.method public d()Lxna;
    .locals 0

    iget-object p0, p0, Lzx0;->a:Lxna;

    return-object p0
.end method

.method public f()[B
    .locals 0

    invoke-static {p0}, Lej8;->a(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method
