.class public final La15$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw08;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:La15;


# direct methods
.method public constructor <init>(La15;)V
    .locals 0

    iput-object p1, p0, La15$b;->b:La15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, La15$b;->b:La15;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La15;->a(La15;Z)V

    iget-boolean v0, p0, La15$b;->a:Z

    if-nez v0, :cond_0

    iget-object p0, p0, La15$b;->b:La15;

    const/4 v0, 0x0

    invoke-static {p0, v0}, La15;->b(La15;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, La15$b;->b:La15;

    const/4 v1, 0x1

    invoke-static {v0, v1}, La15;->a(La15;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La15$b;->a:Z

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, La15$b;->a:Z

    return-void
.end method
