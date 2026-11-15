.class public Lx5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgw4;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx5a;->b:Ljava/lang/String;

    iput p3, p0, Lx5a;->c:I

    iput-boolean p1, p0, Lx5a;->a:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lx5a;->c:I

    return p0
.end method

.method public displayText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx5a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public isCheck()Z
    .locals 0

    iget-boolean p0, p0, Lx5a;->a:Z

    return p0
.end method

.method public setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lx5a;->a:Z

    return-void
.end method
