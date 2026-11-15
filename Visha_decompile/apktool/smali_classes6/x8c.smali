.class public final Lx8c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzw4;


# instance fields
.field public final a:Lyi5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw8c;

    invoke-direct {v0}, Lw8c;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lx8c;->a:Lyi5;

    return-void
.end method

.method public static synthetic b()Lv8c;
    .locals 1

    invoke-static {}, Lx8c;->d()Lv8c;

    move-result-object v0

    return-object v0
.end method

.method public static final d()Lv8c;
    .locals 1

    new-instance v0, Lv8c;

    invoke-direct {v0}, Lv8c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lahb;)I
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lx8c;->c()Luw4;

    move-result-object p0

    invoke-interface {p0, p1}, Luw4;->a(Lahb;)I

    move-result p0

    return p0
.end method

.method public final c()Luw4;
    .locals 0

    iget-object p0, p0, Lx8c;->a:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luw4;

    return-object p0
.end method
