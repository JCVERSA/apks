.class public final Lfnb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldd0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldd0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "validator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "labelId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfnb;->a:Ldd0;

    iput-object p2, p0, Lfnb;->b:Ljava/lang/String;

    iput-object p3, p0, Lfnb;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfnb;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ldd0;
    .locals 0

    iget-object p0, p0, Lfnb;->a:Ldd0;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfnb;->b:Ljava/lang/String;

    return-object p0
.end method
