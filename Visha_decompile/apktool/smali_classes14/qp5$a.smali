.class public Lqp5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqp5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqp5$a;->a:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lqp5$a;->b:I

    const-string v0, "VISHA-LOG"

    iput-object v0, p0, Lqp5$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lqp5$a;)Z
    .locals 0

    iget-boolean p0, p0, Lqp5$a;->a:Z

    return p0
.end method

.method public static bridge synthetic b(Lqp5$a;)I
    .locals 0

    iget p0, p0, Lqp5$a;->b:I

    return p0
.end method

.method public static bridge synthetic c(Lqp5$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqp5$a;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public d()Lqp5;
    .locals 1

    new-instance v0, Lqp5;

    invoke-direct {v0, p0}, Lqp5;-><init>(Lqp5$a;)V

    return-object v0
.end method
