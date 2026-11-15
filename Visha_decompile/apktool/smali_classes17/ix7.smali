.class public final Lix7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhx7;


# instance fields
.field public final a:Lkga;

.field public final b:Llx7;


# direct methods
.method public constructor <init>(Lkga;Llx7;)V
    .locals 1

    const-string v0, "templates"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lix7;->a:Lkga;

    iput-object p2, p0, Lix7;->b:Llx7;

    return-void
.end method


# virtual methods
.method public a()Lkga;
    .locals 0

    iget-object p0, p0, Lix7;->a:Lkga;

    return-object p0
.end method

.method public getLogger()Llx7;
    .locals 0

    iget-object p0, p0, Lix7;->b:Llx7;

    return-object p0
.end method
