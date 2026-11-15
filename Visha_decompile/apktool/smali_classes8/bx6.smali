.class public abstract Lbx6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Hashtable;

.field public static final b:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbx6;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbx6;->b:Ljava/util/Hashtable;

    const-string v0, "B-571"

    sget-object v1, Lsx8;->F:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "B-409"

    sget-object v1, Lsx8;->D:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "B-283"

    sget-object v1, Lsx8;->n:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "B-233"

    sget-object v1, Lsx8;->t:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "B-163"

    sget-object v1, Lsx8;->l:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "K-571"

    sget-object v1, Lsx8;->E:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "K-409"

    sget-object v1, Lsx8;->C:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "K-283"

    sget-object v1, Lsx8;->m:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "K-233"

    sget-object v1, Lsx8;->s:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "K-163"

    sget-object v1, Lsx8;->b:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "P-521"

    sget-object v1, Lsx8;->B:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "P-384"

    sget-object v1, Lsx8;->A:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "P-256"

    sget-object v1, Lsx8;->H:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "P-224"

    sget-object v1, Lsx8;->z:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    const-string v0, "P-192"

    sget-object v1, Lsx8;->G:Ll1;

    invoke-static {v0, v1}, Lbx6;->a(Ljava/lang/String;Ll1;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ll1;)V
    .locals 1

    sget-object v0, Lbx6;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbx6;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lrqc;
    .locals 0

    invoke-static {p0}, Lbx6;->d(Ljava/lang/String;)Ll1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lrx8;->l(Ll1;)Lrqc;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Ll1;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lbx6;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ll1;
    .locals 1

    sget-object v0, Lbx6;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lu0a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1;

    return-object p0
.end method
