.class public Lan6;
.super Lf96;
.source "SourceFile"


# instance fields
.field public final a:Lqq0;

.field public final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lqq0;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lf96;-><init>()V

    iput-object p1, p0, Lan6;->a:Lqq0;

    iput-object p2, p0, Lan6;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lqq0;
    .locals 0

    iget-object p0, p0, Lan6;->a:Lqq0;

    return-object p0
.end method

.method public b(Lfreemarker/ext/beans/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lan6;->a:Lqq0;

    iget-object p0, p0, Lan6;->b:[Ljava/lang/Object;

    invoke-virtual {v0, p1, p0}, Lqq0;->c(Lfreemarker/ext/beans/b;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(Lfreemarker/ext/beans/b;Ljava/lang/Object;)Lzfa;
    .locals 1

    iget-object v0, p0, Lan6;->a:Lqq0;

    iget-object p0, p0, Lan6;->b:[Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, p0}, Lqq0;->d(Lfreemarker/ext/beans/b;Ljava/lang/Object;[Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method
