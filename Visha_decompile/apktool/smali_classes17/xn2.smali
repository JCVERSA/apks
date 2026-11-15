.class public Lxn2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyi5;


# direct methods
.method public constructor <init>(Lc74;)V
    .locals 1

    const-string v0, "initReporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lxn2;->a:Lyi5;

    return-void
.end method
