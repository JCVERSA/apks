.class public final Lsc/a$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ltc/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsc/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsc/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lsc/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lsc/a$b;->a:Ltc/a;

    .line 2
    .line 3
    const-class v1, Ltc/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lux/b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lsc/a$c;

    .line 9
    .line 10
    iget-object v1, p0, Lsc/a$b;->a:Ltc/a;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v1, v2}, Lsc/a$c;-><init>(Ltc/a;Lsc/a$a;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public b(Ltc/a;)Lsc/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lux/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ltc/a;

    .line 6
    .line 7
    iput-object p1, p0, Lsc/a$b;->a:Ltc/a;

    .line 8
    .line 9
    return-object p0
.end method
