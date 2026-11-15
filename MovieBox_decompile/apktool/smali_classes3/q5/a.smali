.class public Lq5/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lr5/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls5/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr5/a;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Lr5/a;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lq5/a;->a:Lr5/a;

    .line 11
    .line 12
    iput-object p1, v0, Lr5/a;->C:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, v0, Lr5/a;->a:Ls5/c;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/bigkoo/pickerview/view/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/bigkoo/pickerview/view/a;

    .line 2
    .line 3
    iget-object v1, p0, Lq5/a;->a:Lr5/a;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/view/a;-><init>(Lr5/a;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public b(I)Lq5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lq5/a;->a:Lr5/a;

    .line 2
    .line 3
    iput p1, v0, Lr5/a;->Q:I

    .line 4
    .line 5
    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lq5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lq5/a;->a:Lr5/a;

    .line 2
    .line 3
    iput-object p1, v0, Lr5/a;->n:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, v0, Lr5/a;->o:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, v0, Lr5/a;->p:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p4, v0, Lr5/a;->q:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p5, v0, Lr5/a;->r:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p6, v0, Lr5/a;->s:Ljava/lang/String;

    .line 14
    .line 15
    return-object p0
.end method

.method public d(Ljava/util/Calendar;Ljava/util/Calendar;)Lq5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lq5/a;->a:Lr5/a;

    .line 2
    .line 3
    iput-object p1, v0, Lr5/a;->h:Ljava/util/Calendar;

    .line 4
    .line 5
    iput-object p2, v0, Lr5/a;->i:Ljava/util/Calendar;

    .line 6
    .line 7
    return-object p0
.end method

.method public e(I)Lq5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lq5/a;->a:Lr5/a;

    .line 2
    .line 3
    iput p1, v0, Lr5/a;->P:I

    .line 4
    .line 5
    return-object p0
.end method

.method public f(I)Lq5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lq5/a;->a:Lr5/a;

    .line 2
    .line 3
    iput p1, v0, Lr5/a;->O:I

    .line 4
    .line 5
    return-object p0
.end method
