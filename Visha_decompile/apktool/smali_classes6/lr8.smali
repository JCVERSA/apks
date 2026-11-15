.class public final Llr8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Llpa;

.field public b:Z

.field public c:Lvp5;


# direct methods
.method public constructor <init>(Llpa;ZLvp5;)V
    .locals 1

    const-string v0, "tokenProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llr8;->a:Llpa;

    iput-boolean p2, p0, Llr8;->b:Z

    iput-object p3, p0, Llr8;->c:Lvp5;

    return-void
.end method


# virtual methods
.method public final a()Lvp5;
    .locals 0

    iget-object p0, p0, Llr8;->c:Lvp5;

    return-object p0
.end method
