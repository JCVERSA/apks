.class public Lx1d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx1d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lz1d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz1d;)Lx1d$a;
    .locals 0

    iput-object p1, p0, Lx1d$a;->c:Lz1d;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lx1d$a;
    .locals 0

    iput-object p1, p0, Lx1d$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx1d$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lx1d$a;
    .locals 0

    iput-object p1, p0, Lx1d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx1d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public f()Lz1d;
    .locals 0

    iget-object p0, p0, Lx1d$a;->c:Lz1d;

    return-object p0
.end method
