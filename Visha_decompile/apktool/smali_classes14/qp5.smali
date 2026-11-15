.class public Lqp5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqp5$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lqp5$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lqp5$a;->a(Lqp5$a;)Z

    move-result v0

    iput-boolean v0, p0, Lqp5;->a:Z

    invoke-static {p1}, Lqp5$a;->b(Lqp5$a;)I

    move-result v0

    iput v0, p0, Lqp5;->b:I

    invoke-static {p1}, Lqp5$a;->c(Lqp5$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lqp5;->c:Ljava/lang/String;

    return-void
.end method
