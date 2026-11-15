.class public final Lax2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loj8;


# instance fields
.field public final a:Lyi5;


# direct methods
.method public constructor <init>(Lc74;)V
    .locals 1

    const-string v0, "init"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lax2;->a:Lyi5;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lax2;->a:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lax2;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
