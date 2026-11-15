.class public Lsl5;
.super Lifa;
.source "SourceFile"


# instance fields
.field public final l:Lfreemarker/core/z0;

.field public final m:Lv83;


# direct methods
.method public constructor <init>(Lfreemarker/core/z0;Lv83;)V
    .locals 1

    invoke-direct {p0}, Lifa;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lifa;->k0(I)V

    invoke-virtual {p0, p1}, Lifa;->H(Lifa;)V

    invoke-virtual {p0, p2}, Lifa;->H(Lifa;)V

    iput-object p1, p0, Lsl5;->l:Lfreemarker/core/z0;

    iput-object p2, p0, Lsl5;->m:Lv83;

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 1

    iget-object v0, p0, Lsl5;->l:Lfreemarker/core/z0;

    invoke-virtual {v0, p1}, Lfreemarker/core/z0;->l0(Lfreemarker/core/Environment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lsl5;->m:Lv83;

    invoke-virtual {p0, p1}, Lv83;->F(Lfreemarker/core/Environment;)V

    :cond_0
    return-void
.end method

.method public J(Z)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lifa;->W()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lifa;->V(I)Lifa;

    move-result-object v3

    invoke-virtual {v3, p1}, Lifa;->J(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "</#list>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lsl5;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#list-#else-container"

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
