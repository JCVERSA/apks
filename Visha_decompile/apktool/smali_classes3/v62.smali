.class public Lv62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lljb;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lni4;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lni4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lv62;->d(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lv62;->a:Ljava/lang/String;

    iput-object p2, p0, Lv62;->b:Lni4;

    return-void
.end method

.method public static synthetic a(Lic1;)Lljb;
    .locals 0

    invoke-static {p0}, Lv62;->c(Lic1;)Lljb;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lzb1;
    .locals 2

    const-class v0, Lljb;

    invoke-static {v0}, Lzb1;->e(Ljava/lang/Class;)Lzb1$b;

    move-result-object v0

    const-class v1, Lok5;

    invoke-static {v1}, Lk82;->m(Ljava/lang/Class;)Lk82;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object v0

    new-instance v1, Lu62;

    invoke-direct {v1}, Lu62;-><init>()V

    invoke-virtual {v0, v1}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object v0

    invoke-virtual {v0}, Lzb1$b;->d()Lzb1;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lic1;)Lljb;
    .locals 2

    new-instance v0, Lv62;

    const-class v1, Lok5;

    invoke-interface {p0, v1}, Lic1;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-static {}, Lni4;->a()Lni4;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lv62;-><init>(Ljava/util/Set;Lni4;)V

    return-object v0
.end method

.method public static d(Ljava/util/Set;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lok5;

    invoke-virtual {v1}, Lok5;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lok5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getUserAgent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lv62;->b:Lni4;

    invoke-virtual {v0}, Lni4;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lv62;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lv62;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lv62;->b:Lni4;

    invoke-virtual {p0}, Lni4;->b()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lv62;->d(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
