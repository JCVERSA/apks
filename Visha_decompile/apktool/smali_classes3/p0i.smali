.class public final Lp0i;
.super Lq1i;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq1i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lq1i;
    .locals 0

    iput-object p1, p0, Lp0i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lq1i;
    .locals 0

    iput-object p1, p0, Lp0i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lr1i;
    .locals 3

    new-instance v0, Lr0i;

    iget-object v1, p0, Lp0i;->a:Ljava/lang/String;

    iget-object p0, p0, Lp0i;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lr0i;-><init>(Ljava/lang/String;Ljava/lang/String;Lq0i;)V

    return-object v0
.end method
