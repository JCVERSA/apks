.class final Lsc/a$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lsc/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lsc/a$c;

.field private b:Liy/a;

.field private c:Liy/a;

.field private d:Liy/a;

.field private e:Liy/a;

.field private f:Liy/a;

.field private g:Liy/a;

.field private h:Liy/a;

.field private i:Liy/a;


# direct methods
.method private constructor <init>(Ltc/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p0, p0, Lsc/a$c;->a:Lsc/a$c;

    .line 4
    invoke-direct {p0, p1}, Lsc/a$c;->b(Ltc/a;)V

    return-void
.end method

.method synthetic constructor <init>(Ltc/a;Lsc/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsc/a$c;-><init>(Ltc/a;)V

    return-void
.end method

.method private b(Ltc/a;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ltc/c;->a(Ltc/a;)Ltc/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lsc/a$c;->b:Liy/a;

    .line 6
    .line 7
    invoke-static {p1}, Ltc/e;->a(Ltc/a;)Ltc/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lsc/a$c;->c:Liy/a;

    .line 12
    .line 13
    invoke-static {p1}, Ltc/d;->a(Ltc/a;)Ltc/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lsc/a$c;->d:Liy/a;

    .line 18
    .line 19
    invoke-static {p1}, Ltc/h;->a(Ltc/a;)Ltc/h;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lsc/a$c;->e:Liy/a;

    .line 24
    .line 25
    invoke-static {p1}, Ltc/f;->a(Ltc/a;)Ltc/f;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lsc/a$c;->f:Liy/a;

    .line 30
    .line 31
    invoke-static {p1}, Ltc/b;->a(Ltc/a;)Ltc/b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lsc/a$c;->g:Liy/a;

    .line 36
    .line 37
    invoke-static {p1}, Ltc/g;->a(Ltc/a;)Ltc/g;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iput-object v7, p0, Lsc/a$c;->h:Liy/a;

    .line 42
    .line 43
    iget-object v1, p0, Lsc/a$c;->b:Liy/a;

    .line 44
    .line 45
    iget-object v2, p0, Lsc/a$c;->c:Liy/a;

    .line 46
    .line 47
    iget-object v3, p0, Lsc/a$c;->d:Liy/a;

    .line 48
    .line 49
    iget-object v4, p0, Lsc/a$c;->e:Liy/a;

    .line 50
    .line 51
    iget-object v5, p0, Lsc/a$c;->f:Liy/a;

    .line 52
    .line 53
    iget-object v6, p0, Lsc/a$c;->g:Liy/a;

    .line 54
    .line 55
    invoke-static/range {v1 .. v7}, Lrc/g;->a(Liy/a;Liy/a;Liy/a;Liy/a;Liy/a;Liy/a;Liy/a;)Lrc/g;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lux/a;->a(Liy/a;)Liy/a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lsc/a$c;->i:Liy/a;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public a()Lrc/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lsc/a$c;->i:Liy/a;

    .line 2
    .line 3
    invoke-interface {v0}, Liy/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lrc/e;

    .line 8
    .line 9
    return-object v0
.end method
