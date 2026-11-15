.class public abstract Lfreemarker/core/l;
.super Lqu9;
.source "SourceFile"


# instance fields
.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lqu9;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 4

    iget-object v0, p0, Lfreemarker/core/l;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lfreemarker/core/z0;->n0(Lfreemarker/core/Environment;Ljava/lang/String;)Lfreemarker/core/z0$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/l;->i0(Lfreemarker/core/z0$a;Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    new-instance v1, Lk0d;

    iget-object v2, p0, Lfreemarker/core/l;->k:Ljava/lang/String;

    invoke-direct {v1, v2}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string v2, "."

    const-string v3, "There\'s no iteration in context that uses loop variable "

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0
.end method

.method public h0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/l;->k:Ljava/lang/String;

    return-void
.end method

.method public abstract i0(Lfreemarker/core/z0$a;Lfreemarker/core/Environment;)Lzfa;
.end method
